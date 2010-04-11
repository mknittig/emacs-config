git svn fetch scala-mode
git checkout scala-mode-git
git merge scala-mode-svn
git push origin HEAD
git checkout master
cd vendor/scala-mode
git pull origin scala-mode-git
cd ..
git add scala-mode
git commit -m 'Updated scala-mode'
cd ..
