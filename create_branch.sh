git checkout --orphan $1 &&
ls  &&
git reset --hard  &&
git checkout master $1 &&
mv $1 Dockerfile &&
git add Dockerfile  &&
git commit -m "Created branch for $1"  &&
git push --set-upstream origin $1
