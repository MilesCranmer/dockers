git checkout --orphan $1 &&
ls  &&
git reset --hard  &&
git checkout master dockerfiles/$1 &&
git mv dockerfiles/$1 Dockerfile &&
git add Dockerfile  &&
git commit -m "Created branch for $1"  &&
git push --set-upstream origin $1
