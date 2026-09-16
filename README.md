# OpenProject PMaaS

> Plataforma Open Source de Gerenciamento de Projetos como Serviço (PMaaS) baseada em OpenProject e Docker.

## 📌 Sobre o projeto

Este projeto tem como objetivo desenvolver e documentar a implantação de uma plataforma de **Project Management as a Service (PMaaS)** utilizando o **OpenProject**, uma solução Open Source para gerenciamento de projetos.

A plataforma será estruturada para permitir o gerenciamento de projetos, usuários, tarefas, prazos e fluxos de trabalho em um ambiente centralizado, considerando mecanismos de controle de acesso e isolamento lógico entre diferentes clientes e departamentos.

O projeto é desenvolvido no contexto de um **Projeto Integrador do curso de Redes de Computadores**.

---

## 🎯 Objetivos

### Objetivo geral

Disponibilizar uma plataforma de **Project Management as a Service (PMaaS)** baseada no OpenProject, utilizando uma infraestrutura conteinerizada com **Docker**.

### Objetivos específicos

* Implantar o OpenProject utilizando Docker;
* Estruturar a infraestrutura necessária para execução da plataforma;
* Organizar usuários, projetos, grupos e permissões;
* Implementar mecanismos de isolamento lógico entre diferentes ambientes;
* Aplicar controles de segurança e controle de acesso;
* Documentar a arquitetura e os procedimentos de implantação;
* Criar procedimentos para operação e manutenção da plataforma;
* Realizar testes de funcionamento, acesso e isolamento;
* Documentar os resultados obtidos durante a implantação.

---

## 🏗️ Arquitetura

A arquitetura do projeto será composta pelos principais componentes necessários para disponibilização da plataforma PMaaS.

```text
                    USUÁRIOS
                        │
                      HTTPS
                        │
                        ▼
               ┌─────────────────┐
               │      Nginx      │
               │  Reverse Proxy  │
               └────────┬────────┘
                        │
                        ▼
               ┌─────────────────┐
               │   OpenProject   │
               │      PMaaS      │
               └────────┬────────┘
                        │
                        │ Rede interna
                        ▼
               ┌─────────────────┐
               │   PostgreSQL    │
               │    Database     │
               └─────────────────┘
```

> **Status:** arquitetura em desenvolvimento e sujeita a alterações durante a implantação.

---

## 🛠️ Tecnologias

| Tecnologia  | Finalidade                              |
| ----------- | --------------------------------------- |
| OpenProject | Plataforma de gerenciamento de projetos |
| Docker      | Conteinerização dos serviços            |
| PostgreSQL  | Banco de dados                          |
| Nginx       | Reverse proxy e gerenciamento de acesso |
| Linux       | Sistema operacional da infraestrutura   |
| Git         | Controle de versão                      |
| GitHub      | Hospedagem do código e documentação     |

---

## 📂 Estrutura do projeto

```text
openproject-pmaas/
│
├── docs/                # Documentação técnica
├── infrastructure/     # Arquivos de infraestrutura
├── diagrams/            # Diagramas da arquitetura
├── screenshots/         # Evidências visuais da implantação
├── tests/               # Testes e validações
│
├── .gitignore
├── LICENSE
└── README.md
```

A estrutura será atualizada conforme novas etapas do projeto forem desenvolvidas.

---

## 🔐 Segurança

A implantação considera mecanismos de segurança para proteção do ambiente e dos dados gerenciados pela plataforma.

Entre os aspectos considerados estão:

* Controle de usuários e permissões;
* Isolamento lógico entre ambientes;
* Restrição de acesso aos serviços internos;
* Utilização de HTTPS;
* Proteção de credenciais e variáveis de ambiente;
* Princípio do menor privilégio;
* Controle da exposição de portas e serviços.

Informações sensíveis, credenciais e arquivos de configuração contendo segredos **não devem ser armazenados neste repositório**.

---

## 🧩 Multi-tenancy

A plataforma será estruturada considerando um modelo de **multi-tenancy lógico**, permitindo a utilização do serviço por diferentes clientes ou departamentos.

A estratégia busca garantir que cada usuário tenha acesso somente aos projetos e recursos correspondentes às suas permissões.

```text
                    PMaaS
                      │
            ┌─────────┴─────────┐
            │                   │
        Cliente A           Cliente B
            │                   │
        Projeto A           Projeto B
            │                   │
       Usuários A          Usuários B
```

Os mecanismos de isolamento e controle de acesso serão validados através de testes específicos.

---

## 🧪 Testes

Serão realizados testes para verificar o funcionamento da plataforma e dos mecanismos de segurança.

Os testes incluem:

* Autenticação de usuários;
* Criação e gerenciamento de projetos;
* Controle de permissões;
* Acesso aos recursos;
* Isolamento entre diferentes ambientes;
* Persistência dos dados;
* Funcionamento dos serviços;
* Disponibilidade da aplicação.

Os resultados serão documentados em:

```text
tests/
```

---

## 🚀 Implantação

A implantação será realizada utilizando **Docker**, buscando facilitar a instalação, padronização e manutenção dos componentes da plataforma.

A documentação dos procedimentos de instalação e configuração será disponibilizada em:

```text
docs/implantacao/
```

> **Status atual:** em desenvolvimento.

---

## 📚 Documentação

A documentação técnica do projeto será organizada nas seguintes áreas:

* Arquitetura;
* Infraestrutura;
* Implantação;
* Configuração;
* Segurança;
* Multi-tenancy;
* Testes;
* Operação e manutenção.

---

## 📈 Status do projeto

**Em desenvolvimento 🚧**

### Etapas

* [x] Criação do repositório
* [x] Definição inicial da arquitetura
* [ ] Preparação da infraestrutura
* [ ] Configuração do Docker
* [ ] Implantação do OpenProject
* [ ] Configuração do banco de dados
* [ ] Configuração de usuários e permissões
* [ ] Implementação do isolamento lógico
* [ ] Configuração de segurança
* [ ] Testes
* [ ] Documentação final

---

## 👥 Equipe

Projeto desenvolvido por uma equipe de estudantes do curso de **Redes de Computadores**:

* Felipe Halison Silva Barreto
* Gabriel da Costa Pereira
* Gabriel Vaz Fernandes de Oliveira
* Natanael Gomes de Melo Júnior
* Vitor Hugo Ramos Crisóstomo

---

## 🎓 Contexto acadêmico

Projeto desenvolvido como parte das atividades do **Projeto Integrador – Redes de Computadores**.

O projeto contempla o planejamento, implantação, configuração, testes e documentação de uma plataforma Open Source de gerenciamento de projetos como serviço.

---

## 📄 Licença

Este repositório está licenciado sob a **MIT License**.

O OpenProject é um software de terceiros e permanece sujeito à sua própria licença e respectivos termos.
