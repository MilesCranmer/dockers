git checkout $1 &&
git checkout master dockerfiles/$1 &&
git rm Dockerfile &&
git mv dockerfiles/$1 Dockerfile &&
git commit -m "Update Dockerfile for $1" &&
git push origin $1
