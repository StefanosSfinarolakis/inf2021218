#inf2021218
BGreen='\033[1;32m'
BYellow='\033[1;33m'
NC='\033[0m'

echo "List of the files that can be converted:"

ls *.md

echo "Type the name of the file you want to be converted."

read name

echo "docx file or a html file?"

read type

wait -n
sleep 1 &
echo -e "${BYellow}The conversion will start in 3!${NC}"
wait -n
sleep 1 &
echo -e "${BYellow}The conversion will start in 2!${NC}"
wait -n
sleep 1 &
echo -e "${BYellow}The conversion will start in 1!${NC}"
wait -n
sleep 1 &

if [ $type = "docx" ];
then
    pandoc -o $name.docx -f markdown -t docx $name.md
else
    pandoc -s $name.md --metadata title="$name" -o $name.html
fi

echo -e "\n${BGreen}The conversion has been completed!${NC}"
