# Conceitos DevOps - Terraform · Jenkins · EKS AWS · K8S · Docker

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

<img src="docs/img/arch-aws.PNG" alt="Arquitetura do Projeto na AWS">

> Esse repositório possui conceitos de docker, kubernetes, terraform, CICD com Jenkins e possui uma aplicação prática para auxiliar no entendimento e melhores práticas envolvendo esses processos.

### Ajustes e melhorias

Abaixo algumas melhorias que serão desenvolvidas nas próximas sprints:

- [x] API Gateway
- [x] Tracing
- [x] Security
- [ ] Event Driven Architecture - Kafka
- [ ] Distributed Logging - ELK Stack
- [ ] CD (Docker/Jenkins)
- [ ] SPA FrontEnd - Angular
- [ ] Run full AWS

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:
* Possui `Maven 3.2+` instalado;
* `JDK 6+` instalado;
* Conexão com a Internet, para que o Maven descarregue as dependências;
* O IDE de sua preferência (Utilizada  `IntelliJ`);

## 🚀 Instalando record-microservices

Para instalar o record-microservices, siga estas etapas.
Após realizar o download, descompacte-o e execute:

Linux e Windows:
```
cd record-microservices
```
Acessar cada um dos microserviços e executar:

`Client Service`
`Disk Service`
`Order Service`
`Api Gateway`
`Discovery Server`
```
mvn spring-boot:run
```

## ☕ Executando

<img src="docs/img/arch-microservices.PNG" alt="Arquitetura do Projeto na AWS">

## 📫 Contribuindo para cicd-devops-code
<!---Se o seu README for longo ou se você tiver algum processo ou etapas específicas que deseja que os contribuidores sigam, considere a criação de um arquivo CONTRIBUTING.md separado--->
Para contribuir com cicd-devops-code, siga estas etapas:

1. Bifurque este repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`
5. Crie a solicitação de pull.

Como alternativa, consulte a documentação do GitHub em [como criar uma solicitação pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
