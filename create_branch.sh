git checkout --orphan $1
ls
confirm git reset --hard
git checkout master/$1 ./Dockerfile
git add Dockerfile
git commit -m "Created branch for $1"
git push --set-upstream origin $1
