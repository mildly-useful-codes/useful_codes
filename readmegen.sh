# Echo the template
cat readmetemplate.md > README.md
# Newline
echo "
" >> README.md
# Find all subdirectories but keep the depth to 2 | Add a - to keep the markdown syntax  
fd . --maxdepth 2 | sed "s/^/- /" >> README.md
if [ ! -z $1 ];then
        git add . && git commit -m "$1" && git push
fi


