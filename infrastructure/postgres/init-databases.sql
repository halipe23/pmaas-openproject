CREATE DATABASE openproject_presidencia;
CREATE DATABASE openproject_engenharia;
CREATE DATABASE openproject_comercial;

GRANT ALL PRIVILEGES ON DATABASE openproject_presidencia TO openproject;
GRANT ALL PRIVILEGES ON DATABASE openproject_engenharia TO openproject;
GRANT ALL PRIVILEGES ON DATABASE openproject_comercial TO openproject;

-- Garante que o usuário da aplicação possa realizar streaming replication
ALTER USER openproject WITH REPLICATION;