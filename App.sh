echo Choose the App you want to be opened
ls *.java
read input
echo Your file will be compiled now
wait -n
sleep 2 &
javac $input.java
echo Your file will open now
java $input
