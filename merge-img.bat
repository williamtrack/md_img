d:
cd  D:/data/md/md_img
@ECHO OFF
SET year=%date:~6,4%
SET month=%date:~0,2%
SET day=%date:~3,2%
SET tt=%time:~0,8%
SET Today=%year%%month%%day%_%time:~0,2%%time:~3,2%%time:~6,2%
rem ECHO %Today%
rem ECHO %date%
rem ECHO %time%
@ECHO ON

git add .
git commit -am "%Today%"
git remote rm origin
git remote add origin git@github.com:williamtrack/md_img.git
git checkout master
git pull origin master
pause

git checkout dev
git merge master
pause

git checkout master
git merge dev
pause

git push origin master
pause

git checkout dev
pause
