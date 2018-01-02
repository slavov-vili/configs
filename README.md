#### To only clone part of repo:
####   $ git init
####   $ git remote add -f origin <url>
####   $ git config core.sparseCheckout true
####   // add whichever files and dirs we want to .git/info/sparse-checkout
####   git pull origin master
####   git checkout master


###  Downside: downloads whole history of repo
