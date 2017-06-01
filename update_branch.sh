git checkout $1 &&
git checkout master $1 &&
git rm Dockerfile &&
git mv $1 Dockerfile &&
git commit -m "Update Dockerfile for $1" &&
git push origin $1
