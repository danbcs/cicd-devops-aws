# Conceitos DevOps - Terraform · Jenkins · EKS AWS · K8S · Docker

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

<img src="assets/arch-aws.png" alt="Arquitetura do Projeto na AWS">

> Esse repositório possui conceitos de docker, kubernetes, terraform, CICD com Jenkins e possui uma aplicação prática que pode provissionar na AWS, para auxiliar no entendimento e melhores práticas envolvendo esses processos.

### Ajustes e melhorias

Abaixo algumas melhorias que serão desenvolvidas nas próximas sprints:

- [x] Variavéis Jenkins
- [x] Versão EKS
- [x] Run full AWS
- [ ] Parametrizar credenciais de Usuário e Senha Postgres - Jenkinsfile
- [ ] Parametrizar nome da Imagem docker - Jenkinsfile

## 💻 Pré-requisitos

Todas as validações foram realizadas em  `Ubuntu 22.4`
Antes de começar, verifique se você atendeu aos seguintes requisitos:
* Possui `Terraform`, `Kubectl`, `Docker`, `aws cli` instalado;
* Seguir com a instalação conforme indicado nos sites oficiais;
* Conexão com a Internet.

## 🚀 Instalando Projeto

Para instalar o projeto localmente, siga estas etapas.
Se tiver dificuldades, veja [esse repositorio](https://github.com/dbent0/conversor-temperatura-docker), detalhando uso de Docker e kubernetes.

Após realizar o download/clonar, descompacte-o e execute:

```
cd src
```
Para gerar a imagem a partir do Dockerfile, executamos o comando abaixo no mesmo local que o arquivo se encontra:
Dica: seguir o padrão `usuario/nome_da_imagem:versão`
```
docker build -t nome_da_imagem .
```

## ☕ Executando

Para criar o container a partir dessa imagem construída, podemos executar o comando:
```
docker container run -d -p 8090:8090 nome_da_imagem
```

## 📫 Contribuindo para cicd-devops-code
<!---Se o seu README for longo ou se você tiver algum processo ou etapas específicas que deseja que os contribuidores sigam, considere a criação de um arquivo CONTRIBUTING.md separado--->
Para contribuir com cicd-devops-code, siga estas etapas:

1. Bifurque este repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`
5. Crie a solicitação de pull.

Como alternativa, consulte a documentação do GitHub em [como criar uma solicitação pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
