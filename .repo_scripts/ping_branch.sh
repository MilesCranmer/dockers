git checkout $1 &&
git commit --allow-empty -m "Ping $1" &&
git push &&
git checkout master
