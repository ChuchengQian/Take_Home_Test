#!/bin/sh

git clone --depth 1 https://github.com/.../my-python-project.git

cd my-python-project
echo -e '\n'

#5/a
find . -name "*.py" | wc -l

echo -e '\n'
cd ..

#5/b
tokei my-python-project

echo -e '\n'
cd my-python-project

#5/c
git grep --all-match "def " ./ | wc -l

echo -e '\n'

#5/d  Note: Assume at least 2 commits have been done
git diff --stat HEAD~2 HEAD

echo -e '\n'

#5/e
du -d 2 -m | sort -hr

echo -e '\n'


