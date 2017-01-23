const urlsMd = require('urls-md');

urlsMd(`
- https://www.visualstudio.com/pt-br/docs/git/overview
- https://www.visualstudio.com/en-us/docs/tfvc/comparison-git-tfvc
- http://stackoverflow.com/questions/33004650/should-we-use-git-or-tfvc-on-a-tfs-2015
- http://stackoverflow.com/questions/20107701/what-are-the-big-differences-between-tfs-and-git-for-source-control-when-using-v
- https://sethrobertson.github.io/GitBestPractices/
- http://nvie.com/posts/a-successful-git-branching-model/
- https://github.com/commitizen/cz-cli
- https://barro.github.io/2016/02/a-succesful-git-branching-model-considered-harmful/
- https://www.atlassian.com/git/tutorials/comparing-workflows/centralized-workflow
- https://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows
- http://www.hanselminutes.com/359/git-support-within-visual-studio
- https://blog.lambda3.com.br/2016/06/podcast-3-git/
- http://msdevshow.com/2016/11/git-and-bots-with-sarah-sexton/
- http://hipsters.tech/passado-e-futuro-do-net-hipsters-26/
- https://lwn.net/Articles/130681/
- https://pt.wikipedia.org/wiki/Git
- https://pt.wikipedia.org/wiki/BitKeeper
- https://en.wikipedia.org/wiki/Git
- https://www.youtube.com/watch?v=4XpnKHJAok8
- http://www.akitaonrails.com/2012/04/09/screencasts-liberados-gratuitamente
- https://medium.com/@RecastAI/github-8-things-you-didn-t-know-it-could-do-af721f17737c#.mxnqsgk4d
- https://owenou.com/ten-things-you-didnt-know-git-and-github-could-do
- http://stackoverflow.com/questions/21048765/what-can-cause-data-loss-in-git#
- https://www.linux.com/blog/10-years-git-interview-git-creator-linus-torvalds
- https://github.com/git/git/blob/e83c5163316f89bfbde7d9ab23ca2e25604af290/README
- http://nfarina.com/post/9868516270/git-is-simpler
- https://www.youtube.com/watch?v=mycVSMyShk8
- https://www.youtube.com/watch?v=yVpbFMhOAwE
- https://www.techmesto.com/recover-bricked-asus-zenfone-2/
- http://techtrickz.com/how-to/unbrick-a-bricked-zenfone-2-ze550mlze551ml-restore-bootloader/
- http://stackoverflow.com/questions/661389/tfs-vs-svn
- https://github.com/blog/2019-how-to-undo-almost-anything-with-git
- https://github.com/arslanbilal/git-cheat-sheet
- https://github.com/git-tips/tips
- https://github.com/stevemao/awesome-git-addons
- https://github.com/stefanbuck/awesome-browser-extensions-for-github
`).then(urls => {
    urls.forEach((l) => {
      console.log(`- ${l}`)
    })
});
