# Sparse Checkout

To only clone part of repo:
  1. $ git init
  2. $ git remote add -f origin <url>
  3. $ git config core.sparseCheckout true
  4. add whichever files and dirs we want to .git/info/sparse-checkout
  5. $ git pull origin master
  6. $ git checkout master


## Downside: downloads whole history of repo
