#!/bin/bash
set -e

echo "Aguardando dbprimary ficar disponível..."
until pg_isready -h dbprimary -p 5432 -U openproject; do
  sleep 2
done

# Se a pasta de dados estiver vazia ou sem o PG_VERSION, executa o backup base
if [ ! -f /var/lib/postgresql/data/PG_VERSION ]; then
  echo "Clonando dados do dbprimary via pg_basebackup..."
  
  # Limpa apenas o conteúdo interno sem apagar pontos de montagem do Docker
  find /var/lib/postgresql/data -mindepth 1 -delete

  PGPASSWORD=openproject_password pg_basebackup -h dbprimary -D /var/lib/postgresql/data -U openproject -v -P -X stream -R

  # Sinaliza ao PostgreSQL 15+ o modo Standby
  touch /var/lib/postgresql/data/standby.signal
fi

# Ajusta permissão estrita exigida pelo Postgres
chmod 700 /var/lib/postgresql/data

echo "Iniciando PostgreSQL em modo Réplica (Standby)..."
exec docker-entrypoint.sh postgres