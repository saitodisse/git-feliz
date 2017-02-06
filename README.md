# git Feliz

Dicas e links sobre git no Windows


Aqui estão algumas dicas simples para se usar git no dia a dia.
Quem tiver qualquer dúvida pode abrir uma [Issue](https://github.com/saitodisse/git-feliz/issues/new) e fazer qualquer pergunta. Vamos expandindo as dicas até que seja o mínimo suficiente para se trabalhar bem com git.


Quem quiser contribuir com esse tutorial faça um Fork **ou** me peça que eu dou acesso de escrita.


Ao final existem muitos links. A lista deve crescer bastante.


<!-- MarkdownTOC -->

- [Instalação](#instalação)
- [Configuração básica](#configuração-básica)
- [Primeiros passos](#primeiros-passos)
    - [Novo repositório](#novo-repositório)
    - [Clonar repositório existente](#clonar-repositório-existente)
    - [Baixar últimas modificações do master](#baixar-últimas-modificações-do-master)
    - [Commit](#commit)
    - [Enviar modificações para o servidor remoto](#enviar-modificações-para-o-servidor-remoto)
    - [Criar nova branch a partir de outra](#criar-nova-branch-a-partir-de-outra)
- [Links](#links)
    - [TFVC vs Git](#tfvc-vs-git)
    - [Dicas](#dicas)
    - [Branching models](#branching-models)
    - [Podcasts](#podcasts)
    - [História do Git](#história-do-git)
    - [Vídeos](#vídeos)
    - [Curiosidades](#curiosidades)
    - [Socorro, perdi meus arquivos?](#socorro-perdi-meus-arquivos)
    - [Cheat Sheets](#cheat-sheets)
    - [Addons e Plugins](#addons-e-plugins)
    - [Extra](#extra)

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

[mais configurações básicas](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)

-----------

## Primeiros passos

### Novo repositório

Pelo _git bash_ na pasta raiz do projeto use o `git init`. Será criada a pasta .git que é o seu repositório local.

```sh
git init
```

### Clonar repositório existente

Se deseja clonar este repositório, por exemplo, vá para sua pasta de projetos e rode um `git clone`:

```sh
git clone https://github.com/saitodisse/git-feliz.git
```


### Baixar últimas modificações do master

* Assegure que está na branch master
* `git pull` = `git fetch; git merge origin master`

```sh
git checkout master
git pull
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

# ou simplesmente
git checkout -b NOVA-BRANCH BRANCH-ORIGEM
```


-----------

## Links

### TFVC vs Git

- [microsoft: Git documentation overview](https://visualstudio.com/pt-br/docs/git/overview)
- [microsoft: Git and TFVC version control](https://visualstudio.com/en-us/docs/tfvc/comparison-git-tfvc)
- [stackoverflow - git vs TFVC](http://stackoverflow.com/questions/33004650/should-we-use-git-or-tfvc-on-a-tfs-2015)
- [stackoverflow: What are the big differences between TFS and Git for source control when using Visual Studio 2013?](http://stackoverflow.com/questions/20107701/what-are-the-big-differences-between-tfs-and-git-for-source-control-when-using-v)

### Dicas

- [Commit Often, Perfect Later, Publish Once](https://sethrobertson.github.io/GitBestPractices)

### Branching models

- [A successful Git branching model » nvie.com](http://nvie.com/posts/a-successful-git-branching-model)
- [A succesful Git branching model considered harmful](https://barro.github.io/2016/02/a-succesful-git-branching-model-considered-harmful)
- [Git Workflows and Tutorials](https://atlassian.com/git/tutorials/comparing-workflows/centralized-workflow)
- [Git Branching Workflows](https://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)

### Podcasts

- [Podcast 3 – Git](https://blog.lambda3.com.br/2016/06/podcast-3-git)
- [Presente e Futuro do .NET – Hipsters #26](http://hipsters.tech/passado-e-futuro-do-net-hipsters-26)
- [Git and Bots](http://msdevshow.com/2016/11/git-and-bots-with-sarah-sexton)
- [Fresh Air for Developers](http://hanselminutes.com/359/git-support-within-visual-studio)

### História do Git

- [Git (en)](https://en.wikipedia.org/wiki/Git)
- [Git (pt)](https://pt.wikipedia.org/wiki/Git)
- [BitKeeper - Wikipédia](https://pt.wikipedia.org/wiki/BitKeeper)
- [Linus on the BK withdrawal [LWN.net]](https://lwn.net/Articles/130681)
- [primeiro README do git](https://github.com/git/git/blob/e83c5163316f89bfbde7d9ab23ca2e25604af290/README)
- [An Interview with Git Creator Linus Torvalds](https://linux.com/blog/10-years-git-interview-git-creator-linus-torvalds)

### Vídeos

- [Palestra do Linus Torvalds sobre git](https://youtube.com/watch?v=4XpnKHJAok8)
- [Screencasts Liberados Gratuitamente!](http://akitaonrails.com/2012/04/09/screencasts-liberados-gratuitamente)

### Curiosidades

- [Github: 8 things you didn’t know it could do](https://medium.com/@RecastAI/github-8-things-you-didn-t-know-it-could-do-af721f17737c)
- [Ten Things You Didn’t Know Git And GitHub Could Do](https://owenou.com/ten-things-you-didnt-know-git-and-github-could-do)

### Socorro, perdi meus arquivos?

- [What can cause data loss in git?](http://stackoverflow.com/questions/21048765/what-can-cause-data-loss-in-git)
- [How to undo (almost) anything with Git · GitHub](https://github.com/blog/2019-how-to-undo-almost-anything-with-git)

### Cheat Sheets

- [Git and Git Flow Cheat Sheet](https://github.com/arslanbilal/git-cheat-sheet)
- [GitHub](https://github.com/git-tips/tips)

### Addons e Plugins

- [Awesome git addons](https://github.com/stevemao/awesome-git-addons)
- [Awesome browser extensions for GitHub](https://github.com/stefanbuck/awesome-browser-extensions-for-github)
- [Git Credential Manager for Windows](https://github.com/Microsoft/Git-Credential-Manager-for-Windows/blob/master/README.md)

### Extra

- [commitizen](https://github.com/commitizen/cz-cli) - Permite trabalhar com vários projetos em **node.js** de forma sustentável
