d:
cd  D:/data/md/md_img
SET Today=%date:~8,2%%date:~0,2%%date:~3,2%
pause

git add .
git commit -am "%Today%"
git remote rm origin
git remote add origin git@github.com:williamtrack/md_img.git
git checkout master
git pull origin master

git checkout dev
git merge master
pause

git checkout master
git merge dev

git push origin master

git checkout dev
pause
