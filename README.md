# git Feliz

Dicas e links sobre git no Windows

<!-- MarkdownTOC -->

- [Instalação](#instalação)
- [Configuração básica](#configuração-básica)
- [Primeiros passos](#primeiros-passos)
    - [Novo repositório](#novo-repositório)
    - [Clonar repositório existente](#clonar-repositório-existente)
    - [Baixar últimas modificações do master](#baixar-últimas-modificações-do-master)
    - [Baixar últimas modificações do master com rebase](#baixar-últimas-modificações-do-master-com-rebase)
    - [Commit](#commit)
    - [Enviar modificações para o servidor remoto](#enviar-modificações-para-o-servidor-remoto)
    - [Criar nova branch a partir de outra](#criar-nova-branch-a-partir-de-outra)

<!-- /MarkdownTOC -->

## Instalação

[Instalação do Windows](https://git-scm.com/downloads)

-----------

## Configuração básica

pelo _git bash_:

```sh
git config --global user.name "SEU NOME"
git config --global user.email "SEU EMAIL"
```

-----------

## Primeiros passos

### Novo repositório

pelo _git bash_ na sua pasta raiz do projeto:

```sh
git init
```

### Clonar repositório existente

Se deseja clonar este repositório, por exemplo, vá para sua pasta de projetos e rode um `git clone`:

```sh
git clone git@github.com:saitodisse/git-feliz.git
```


### Baixar últimas modificações do master

* Assegure que está na branch master
* `git pull` = `git fetch; git merge origin master`

```sh
git checkout master
git pull
```


### Baixar últimas modificações do master com rebase

Essa é uma forma segura de fazer rebase numa branch local.
Se a branch remote (origin/xxxxx) estiver sendo compartilhada com outras pessoas **não** é recomendado o rebase.

* Assegure que está na branch master
* `git pull --rebase` = `git fetch; git rebase origin master`

```sh
git checkout master
git pull --rebase
```


### Commit

Para se fazer um commit antes é necessário adicionar os arquivos com o `git add`. O `git add . -A` adiciona todos os arquivos modificados e novos para o _staging_:

```sh
git add . -A
git commit -m"ALGUMA MENSAGEM BOA DO QUE FOI FEITO"
```


### Enviar modificações para o servidor remoto

Se deseja enviar suas modificações para outra branch remota substitua o master pelo nome da branch

```sh
git checkout master
git push origin master
```

Se deseja enviar suas modificações para outra branch remota substitua o master pelo nome da branch

```sh
git checkout OUTRA-BRANCH
git push origin OUTRA-BRANCH
```


### Criar nova branch a partir de outra

```sh
git checkout BRANCH-ORIGEM
git checkout -b NOVA-BRANCH
```


-----------


