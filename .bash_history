chmod u+x script_b.sh
vi script_b.sh
source script_b.sh
vi script_b.sh
source script_b.sh
vi script_b.sh
source script_b.sh
vi script_b.sh
source script_b.sh
vi script_b.sh
source script_b.sh
vi a.sh
source a.sh
vi a.sh
source a.sh
vi a.sh
source a.sh
./a.sh
vi a.sh
./a.sh
echo $?
vi a.sh
vi script_b.sh
./script_b.sh
echo $?
read answer
echo $answer
vi filetoread.txt
file=filetoread.txt
cat $file
while read line; do echo $line; done
while read line; do echo $line; done < $file
cat $file | while read line; do echo $line; done
caggt newfile
cat newfile
read line < newfile
echo $line
while read line; do echo $line; done < newfile
read answer < /dev/tty
name="My name is loop forloop"
for n in $name; do echo $n; done
for n in newfile; do echo $n; done
for i in (seq 5); do echo $i; done
seq 5
for i in $(seq 5); do echo $i; done
echo 0..5
for i in (0..5); do echo $i; done
for i in {0..5}; do echo $i; done
for i in {0..5..2}; do echo $i; done
for i in {0..5..-2}; do echo $i; done
for i in {5..0}; do echo $i; done
for i in {10..1..2}; do echo $i; done
while true; do read -p "You want to continue Yes/no" answer; if [ $answer == 'no' ];then break; fi; echo "hello"; done
history
let a=1+1
echo $a
let "a = 1+1 "
let "b = 1+1 "
echo $b
let a++
echo $a
let n = "1+1"
let "n = 1+1"
echo $n
let n=2+2
echo $n
expr 2+2
expr 1 + 1
expr 1 - 1
multiply=$(expr 2*3)
echo multiply
echo $multiply
multiply=$(expr 2 * 3)
multiply=$( expr 2 * 3 )
multiply=$(expr 2 \* 3 )
echo $multiply
multiply=`expr 2 * 3`
multiply=`expr 2 \* 3`
echo $multiply
multiply=`expr 2 + 3`
echo $multiply
multiply=`expr 3 / 3`
echo $multiply
expr 2 * 3
expr 2 \* 3
total=$((4*3))
ECHO $total
echo $total
((4*3))
total=((4*5))
total=$((4*5))
echo $total
var_total=$(($total/2))
echo $var_total
bc -l <<< '4*4'
bc <<< '4/3'
bc <<< 'scale=1;4/3'
bc <<< 'scale=2;4/3'
bc <<< 'scale=4;5/3'
bc <<< 'scale=4;9/3'
bc <<< 'scale=1;9/3'
bc <<< 'scale=2;9/4'
bc <<< 'scale=5;9/4'
if [ -z $total ];then echo "$total is empty"; else echo "$total is not empty"; fi
touch simple_script.sh
chmod u+x simple_script.sh
vi simple_script.sh
./simple_script.sh
./simple_script.sh $total
vi simple_script.sh
./simple_script.sh --total=$total
./simple_script.sh 10
vi simple_script.sh
./simple_script.sh 10
./simple_script.sh $total
if [ -f "/home/ec2-user/newfile" ]; then echo "file there"; else echo "file not there" fi
if [ -f "/home/ec2-user/$newfile" ]; then echo "file there"; else echo "file not there" fi
if [ -f "$newfile" ]; then echo "file there"; else echo "file not there" fi
newfile=/home/ec2-user/newfile
if [ -f "$newfile" ]; then echo "file there"; else echo "file not there" fi
echo $newfile
test=1;case $test in 1)) echo "first case";; 2)) echo "second case";; *)) echo "Number is not 1 or 2";; esac
vi case.sh
./test.sh
./case.sh
chmod u+x case.sh
./case.sh
touch function.sh
vi function.sh
chmod u+x function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
vi function.sh
./function.sh
newarray=(red green blue)
echo $newarray(0)
echo $newarray[0]
echo $newarray
while read line; do echo $line; done < $newarray
echo ${newarray[1]}
echo ${newarray[2]}
echo ${newarray[0]}
body_parts(eyes)="Black and white"
body_parts[eyes]="Black and white"
body_parts[hair]="Black"
echo $body_parts
echo ${body_parts[eyes]}
body_parts[eyes]="white"
body_parts[hair]="Black"
echo $body_parts
echo ${body_parts[eyes]}
body_parts[eyes]=white
body_parts[hair]=Black
echo ${body_parts[eyes]}
vi function.sh
./function.sh
vi function.sh
associative_array[eyes]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${associative_array[eyes]}
associative_array[1]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${associative_array[1]}
associative_array["eyes"]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${associative_array[eyes]}
associative_array["eyes"]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${associative_array["eyes"]}
associative_array["eyes"]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${associative_array[@]}
associative_array[eyes]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${associative_array[@]}
associative_array[eyes]=blue; associative_array[height]=average; associative_array[hair]=blond; echo ${!associative_array[@]}
associative_array[eyes]=blue
echo $(associative_array[eyes]}
echo $(associative_array[@]}
associative_array[eyes]=blue
associative_array[1]=green
associative_array[2]=red
associative_array[3]=blue
echo ${associative_array[#]}
echo ${associative_array[@]}
associative_array[hair]=black 
associative_array[hand]=white 
echo ${associative_array[@]}
associative_array[4]=black 
associative_array[5]=white 
echo ${associative_array[@]}
echo ${associative_array[5]}
echo ${associative_array[eyes]}
echo ${associative_array[]}
echo ${associative_array[e]}
while read line; do echo $line; done < echo ${associative_array[@]}
while read line; do echo $line; done < $(echo ${associative_array[@]})
while read line; do echo $line; done < $(echo ${associative_array[eyes]})
clear
associative_array[eyes]=blue
associative_array[1]=green
associative_array[2]=red
associative_array[3]=blue
associative_array[hand]=white 
echo ${associative_array[eyes]}
touch array.sh
vi array.sh
chmod u+x array.sh
./array.sh
vi array.sh
test_array=(one two three four)
echo ${test_array[2]}
echo ${test_array[1]}
as_array["eyes"]="blue"
as_array["hair"]="black"
as_array["hand"]="white"
echo ${as_array["hair"]}
as_array[eyes]=blue
as_array[hair]=black
as_array[hand]=white
echo ${as_array["hair"]}
declare -a as_array
as_array[eyes]=blue
as_array[hair]=black
as_array[hand]=white
echo ${as_array["hair"]}
declare -A as_array
as_array[one]=blue
as_array[two]=green
as_array[three]=yellow
echo ${as_array[two]}
array_one=(one two three)
array_one+=(four)
echo ${array_one[@]}
for i in $(array_one[@]); do echo $i
for i in $(array_one[@]); do echo $i; done
for i in $array_one; do echo $i; done
array_one[0]=number
echo ${array_one[@]}
as_array+=([four]=black [five]=white)
echo ${as_array[@]}

echo ${array_one[]}
echo ${array_one[@]}
echo ${array_one[1]}
for i in ${array_one[@]}; do echo $i; done
for i in ${array_one[@]}; do echo $i; done | tac
wget https://github.com/TheAcademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
ls
./array.sh &
jobs
vi array.sh
./array.sh eyes
./array.sh hair
vi array.sh
./array.sh 
vi array.sh
./array.sh 
./array.sh hand
printenv
clear
export name=Daniel
lname=Blanco
touch var_activity.sh
chmod u+x var_activity.sh
vi var_activity.sh
./var_activity.sh
vi var_activity.sh
./var_activity.sh
echo 'echo $name' > var.txt
cat var.txt
echo $name > var.txt
cat var.txt
echo $PATH
ls -a
ls -a | grep local
cd ..
ls
cd ec2-user
[[ ! -d "$HOME/.local/bin" ]] && mkdir -p $HOME/.local/bin && echo 'export PATH="$PATH:$HOME/.local/bin"' >> $HOME/.bash_profile && source $HOME/.bash_profile
cat << EOF


cat << EOF > welcome; EOF



echo $USER
echo "welcome \$USER"
echo "welcome \\$USER"
i welcome.sh
vi welcome.sh
chmod u+x welcome.sh
./welcome.sh
ls
cat welcome
rm welcome
./welcome.sh
cat welcome
mv welcome ~/.local/bin
cd /local/bin
cd ./local/bin
cd ./.local/bin
ls
echo 'alias wd="Welcome date"' >> .bash_profile
source .bash_profile
cat .bash_profile
wd
ls
ll
man sort
ll -t
./welcome.sh (date)
./welcome.sh date
vi welcome.sh
./welcome.sh date
./welcome.sh
vi catscript.sh
./catscript.sh
chmod u+x touchscript.sh
chmod u+x catscript.sh
./catscript.sh
chmod u+x catscript.sh
vi catscript.sh
./catscript.sh
vi catscript.sh
./catscript.sh
ehco $?
./catscript.sh
echo $?
vi add_function.sh
chmod u+x add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh
./add_function.sh
vi add_function.sh

history
./add_function.sh 5 10
ps
ps -a
ps -eaf
ps -f
ps -e
pidof sshd
echo $$
echo $PPID
ls o*.txt
ls o*.sh
ls o*.txt &
jobs
ls o*.txt &
fg
fg 1
top
sudo top
top
sudo top
ps
stty -a | grep intr
stty -a 
top 
hostnamectl
pwd
cd /var/log
cd ..
pwd
ls
ll
ll -r
ll -t
cd \
cd /
cd ~
cd /var
man ls

ll -S
uname -all
uname -a
dmidecode
echo dmidecode
hwinfo
uname
uname -mpi
uname -m
man dmidecode
sudo yum install dmidecode
man dmidecode
dmidecode
sudo dmidecode
uname -a
man dmidecode
lscpu
lshw
lscpu -V
lscpu
exit
history
...
cd ...
cd ..
cd ec2-user
sudo remove dmidecode
sudo rm dmidecode
sudo yum remove dmidecode
vim
touch avengers
chmod 777 avengers
vi avengers
ip link show
ip link
ip-address
ip address
man ip-address
ip address how dev eth0
ip address show dev eth0
ip address show dev 
ip route
ip route show
ifconfig
nslookup google.com
ping google.com -c 3
ping -c 3 google.com
ping -q google.com
sudo yum install iperf
sudo yum install iperf -y
sudo yum install traceroute -y
traceroute google.com
tcpdump
sudo tcpdump
sudo tcpdump -i eth0
netstat -i
ip a show enX0
ip a show lo

sudo tcpdump -i enX0
netstat -i
sudo tcpdump -i enX0 -c 3
netstat -r
ss -t -a
ss -ta -o state established
ss -tao state established
ss -t state established
ss -tao
netstat -tao
netstat -tao state established
netstat -ao state established
ss -i
history
telnet gf.dev 443
clear
history
sudo yum install telnet
telnet gf.dev 443
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
cat avengers
cat avengers | wc -c
man wc
cat avengers | wc -w
wc -w avengers
wc -w 
vi avengers
cat avengers | wc -w >> avengers
cat avengers 
clear
vi avengers
rm avengers
touch avengers
chmod 777 avengers
vi avengers
cd ..
sudo su
[200~Six stones, three teams, one shot. Five years ago, we lost. All of us. We lost friends. We lost family. We lost a part of ourselves. Today, we have a chance to take it all back. You know your teams. You know your missions. Get the stones. Get them back. One round trip each. No mistakes. No do-overs. Most of us are going somewhere we know. that doesn't mean we should know what to expect. Be careful. Look out for each other. This is the fight of our lives, and we're gonna win. Whatever it takes. Good luck.
~clear
clear
vi avengers
cat avengers | wc -w >> avengers
vi avengers
vi newtextfile
vi avengers
cat avengers | wc -l
vi avengers
 echo "Line number:" && 
vi avengers
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
git clone [200~https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities.git
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh.git
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.git
clear
vi avengers
cat avengers | wc -l && echo "hello" >> avengers
cat avengers
vi avengers
cat avengers | wc -l
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities
git clone https://github.com/rafiudeen96/linux.git
ls
cd linux
ls
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities
git clone https://github.com/rafiudeen96/linux.git
ls
cd ..
git clone https://github.com/rafiudeen96/pss-orderbook-deploy.git
clear
ls
cd linux
ls
rm -r linux
ls
dpkg -l
yum -l
yum list
yum whatprovides "*/git"
yum search git
yum search all git
cd /bin/bash
cd /
ls
ls -a
cd bin
ls
ls | grep b
cd bash
ls
/bin/bash
echo $$
a.out
echo $PPID
echo $$
echo $PPID
sleep 15
mkdir newwdir
sleep 15 &
rmdir newwdir
fg
bg
sleep 20
sleep 20 &
fg
sudo yum install firefox
sudo yum install mozilla
sleep 50
bg
fg
bg
sleep 50
bg
fg
bg
fg 1
ps -ef
ps -ef | grep sleep
git clone https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
sleep 10 &
jobs
sleep 20
fg
jobs
fg 1
fg 
clear
sleep 20
fg
clear
nohup sleep 120&
cat nohup.out
ls
nohup sleep 120&
exit
bg
jobs
htop
top
sudo yum install htop
htop
history
ps aux --sort -pid | head -5
clear
history
ps -axjf
ps -axf
top
htop
ps -C a.out
ps
ps -a
ps -aux
kill -s USR1 44818
kill -s USR1 44768
sudo kill -s USR1 44768
top
ps -aux
sudo kill -s USR1 44767
ps -aux
kill 44869
sudo kill 44869
ps -aux
touch kill.sh
chmod 777 kill.sh
vi kill.sh
sh kill.sh
vi kill.sh
sh kill.sh
vi kill.sh
sleep 50 
bg
jobs
stty -a
stty -a | grep intr
sleep 20
sleep 50
jobs
vi kill.sh
sleep 50
jobs
fg
jobs
fg 1
jobs
fg 2
jobs
fg
jobs
sleep 50
bg
jobs
sleep 50
bg
jobs
sleep 100 
jobs
fg 1
jobs
fg 2
jobs
fg 
jobs
sleep 30
jobs
bg
jobs
fg
jobs
sleep 20
sleep 10
sleep 30
jobs
bg 2
jobs
bg
jobs
ps -aux
renice 0 -p 46320
renice -1 -p 46320
sudo renice -1 -p 46320
who | wc -l
whoami
who am i
pwd &
sleep 10
pwd &
jobs
ps -f
ls
mv ~/linux/fixgenerator.sh ~
cd linux
ls
mv ~/linux/fixGenerator.sh ~
ls
cd ..
ls
sh fixgenerator.sh
sh fixGenerator.sh
sh fixGenerator.sh &
mkdir logs
jobs
sh fixGenerator.sh >> log.txt
jobs
sh fixGenerator.sh >> log.txt
ls
cat log.txt
cat fixlog20240523053607.log
mv fix* ~/linux
ls
cd linux
ls
mv fix*.log ~/logs
cd ..
ls ~/logs
cat fixlog20240523053607.log
cat logs/fixlog20240523053607.log
vi logs/fixlog20240523053607.log
chmod 777 logs/fixlog20240523053607.log
vi logs/fixlog20240523053607.log
ls /logs
ls ./logs
cat fixlog20240523053634.log

vi logs/fixlog20240523053607.log
cat logs/fixlog20240523053607.log
clear
cd logs
ls
chmod 777 fixlog20240523053808.log
40523053808.log
sed 's/MTHREE/M3' fixlog20240523053808.log
sed 's/MTHREE/M3/' fixlog20240523053808.log
sed 's/M3/MTHREE/' fixlog20240523053808.log
sed 's/MTHREE/M3/' fixlog20240523053808.log >> fixlog2.log
ls
cat fixlog2.log
vi fixlog2.log
dmesg
sudo dmesg
ls
lpr myfile.txt
lp myfile.txt
print myfile.txt
printmyfile.txt
printenv
clear
man lp
uname -t
uname -n
uname -r
uname 
uname -a
uname -r
ulimit
ls
cd logs
ls
cat fixlog2.log
rm fixlog2.log
cat fix*.log | sed 's/MTHREE/M3/' > fixlog2.log
cat fixlog2.log
less fixlog2.log
grep 35=8 fixlog2.log
man grep
grep 35=8 fixlog2.log | grep -v 32=0
grep 35=8 fixlog2.log | grep -v 32=0 > fills.log
grep 39=4 fixlog2.log > log.log
cat log.log
grep 39=4 fixlog2.log 
grep 39=4 fixlog2.log > cancel.log
ls
rm log.log
grep 39=1 fills.log > partialfills.log
ls
awk '{$8}' partialfills.log
awk '{print $8}' partialfills.log
cat partialfills.log
awk '{print $7,$9,$13,$10,$15,$16}' > parsedpartialfills.log
awk '{print $7,$9,$13,$10,$15,$16}' partialfills.log  > parsedpartialfills.log
less parsedpartialfills.log
cat parsedpartialfills.log
ls
cd ..
ls
ls linux
less linux/fixGenerator.sh
cat parsedpartialfills.log
cd logs
cat parsedpartialfills.log
sed 's/*=//' partialfills.log
sed 's/*=//'parsedpartialfills.log
clear
sed 's/*=//' parsedpartialfills.log
sed 's/=/***/' parsedpartialfills.log
sed 's/*=//' parsedpartialfills.log
sed 's/*=/ /' parsedpartialfills.log
vi parsedpartiallogs.log
vi parsedpartiallog.log
rm parsedpartiallog*
vi parsedpartialfills.log
sed 's/A*/ /' parsedpartialfills.log
sed 's/A*/a/' parsedpartialfills.log
sed 's/55/a/' parsedpartialfills.log
sed 's/[^=]*=//g' ./logs/parsedpartialfills.log
which vimlt
which vim
which git
ls
vim
vi myfile.txt
ip link show
man ip link
ip-address
ip address
man ip address
ip a show enX0
ip show enX0
ip address show enX0
ip route show
nslookup
nslookup google.com
ping -c 3 google.com
iperf 200~142.250.67.142
iperf 142.250.67.142
iperf google.com
iperf traceroute google.com
traceroute google.com
ifconfig
tcpdump -i lo
sudo tcpdump -i lo
netstat -i
ss -t
ss -ta
ss -ato state established
telnet gf.dev443
telnet gf.dev 443
dig google.com
ifdown lo
ifconfig lo
ifconfig lo mtu 70000
sudo ifconfig lo mtu 70000
ifconfig lo

wget https://github.com/theacademy/pss-orderbook-deploy/blob/main/src/linux_activities/fixGenerator.sh
host google.com
mtr google.com
sudo yum install mtr -y
mtr google.com
Tracepath
sudo yum install Tracepath
sudo yum install tracepath
whois
whoami
ss -r
netstat -r
iperf -s
sudo yum install openssh-server
openssh-server
route google.com
netstat -r
route
yum search git
yum search all git
yum whatprovides "*/git"
yum whatprovides "*/sysdig"
sudo adduser daniel
sudo adduser blanco
su daniel
su blanco
sudo passwd -l 'daniel'
sudo passwd -l 'blanco'
sudo userdel -r balnco
sudo userdel -r blanco
sudo userdel -r daniel
groupmod 
sudo adduser daniel
sudo adduser blanco
sudo groupmod -a -G daniel newuser
sudo groupmod -a daniel newuser
sudo groupmod -ag daniel newuser
sudo groupmod -a -G newuser daniel
groupadd newgroup
sudo groupadd newgroup
sudo groupmod -a -G newgroup daniel
sudo usermod -a -G newgroup daniel
sudo cat /etc/group
sudo usermod -a -G newgroup blanco
sudo cat /etc/group
sudo deluser blanco newgroup
finger
sudo yum install deluser
sudo yum install finger
sudo adduser blanco2
sudo userdel -r blanco2
passwd
su daniel
id
w
who
sudo adduser daniel1
sudo useradd -md /Myhome Daniel2
su Daniel2
change
usermod -L daniel
sudo usermod -L daniel
su daniel
groups
sudo deluser -r daniel
sudo userdel -r blanco
sudo adduser blanco
gpasswd
sudo usermod -a -G newgroup daniel2
sudo adduser daniel2
sudo usermod -a -G newgroup daniel2
groupmod newgroup newest_group
groupmod -n newgroup newest_group
groupmod -n newwgroup newgroup
sudo groupmod -n new[Awgroup newwgroup
sudo deluser daniel newwgroup

sudo deluser blanco newgroup
logout
ls logs
sed 's/[=^]*=//' parsedpartialfills.log
sed 's/[=^]*=//' ./linux/parsedpartialfills.log
sed 's/[=^]*=//' ./logs/parsedpartialfills.log
cat ./logs/parsedpartialfills.log
sed 's/*=//' ./logs/parsedpartialfills.log
sed 's/[^=]//' ./logs/parsedpartialfills.log
sed 's/[^^=]//' ./logs/parsedpartialfills.log
sed 's/[^=]*=//' ./logs/parsedpartialfills.log
sed 's/[^=]*=//g' ./logs/parsedpartialfills.log
sed 's/[^=]*=//' ./logs/parsedpartialfills.log
sed 's/[^=];*=//' ./logs/parsedpartialfills.log
sed 's/[^=];*=//g' ./logs/parsedpartialfills.log
sed 's/[^=]; *=//g' ./logs/parsedpartialfills.log 
sed 's/[^=];\ *=//g' ./logs/parsedpartialfills.log 
sed 's/[^=];*=//g' ./logs/parsedpartialfills.log 
sed 's/[^=];*=//' ./logs/parsedpartialfills.log
sed 's/;*=//' ./logs/parsedpartialfills.log
sed 's/[^=];*=//' ./logs/parsedpartialfills.log
cat ./logs/parsedpartialfills.log
sed 's/^[^=];*=//' ./logs/parsedpartialfills.log
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log
sed 's/^[^=]*=//g' ./logs/parsedpartialfills.log
sed 's/[^=]*=//' ./logs/parsedpartialfills.log 
sed 's/[^=]*=//g' ./logs/parsedpartialfills.log 
sed 's/^[^=]*=//g' ./logs/parsedpartialfills.log 
sed 's/^[^=]*//g' ./logs/parsedpartialfills.log 
sed 's/^*//g' ./logs/parsedpartialfills.log 
sed 's/^[*]//g' ./logs/parsedpartialfills.log 
sed 's/^//g' ./logs/parsedpartialfills.log 
sed 's/55//g' ./logs/parsedpartialfills.log 
sed 's/^[^=]*=//g' ./logs/parsedpartialfills.log 
sed 's/^[^=]*=//g' ./logs/parsedpartialfills.log | sed 's/^[^=]*=//g' 
sed 's/^[^=]*=//g' ./logs/parsedpartialfills.log
sed 's/[^=]*=//g' ./logs/parsedpartialfills.log
sed 's/[^=]*=//' ./logs/parsedpartialfills.log
sed 's/[^=];*=//' ./logs/parsedpartialfills.log
sed 's/[^=];*=//g' ./logs/parsedpartialfills.log
sed 's/;*=//g' ./logs/parsedpartialfills.log
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log
sed 's/;[^=]*=//' ./logs/parsedpartialfills.log
sed 's/;[^=]*=//g' ./logs/parsedpartialfills.log
sed 's/;[^=]*=/,/g' ./logs/parsedpartialfills.log
cat ./logs/parsedpartialfills.log
sed 's/;*=//g' ./logs/parsedpartialfills.log
sed 's/;[^=]*=/,/g' ./logs/parsedpartialfills.log
cat ./logs/parsedpartialfills.log
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log | sed 's/;[^=]*=/,/g' 
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log | sed 's/;[^=]*=/,/g' | sed 's/;//g'
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log | sed 's/;[^=]*=/,/g' | sed 's/;//g' > mohamedrafiudeen.module10.csv
chmod 777 mohamedrafiudeen.module10.csv
vi mohamedrafiudeen.module10.csv
cd logs
ls
cp cancel.log cancels2.log
cat cancel.log
sed 's/55=/55=A/g' cancels2.log
sed -i 's/55=/55=A/g' cancels2.log
cat cancels2.log
diff cancel.log cancels2.log
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log | sed 's/;[]*=/,/g' | sed 's/;//g'
cd ..
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log | sed 's/;[]*=/,/g' | sed 's/;//g'
sed 's/^[^=]*=//' ./logs/parsedpartialfills.log | sed 's/;[^=]*=/,/g' | sed 's/;//g'
cd logs
ls
cd ..
ls
git init
ls
git config --global username.rafiudeen96@gmail.com
git config --global name.rafiudeen
git add mohamedrafiudeen.module10.csv
git commit -m 'message'
git push https://github.com/rafiudeen96/newfolder.git
git push https://github.com/rafiudeen96/newfolder.git master
git push https://github.com/rafiudeen96/newfolder master
git remote add origin https://github.com/rafiudeen96/newfolder.git
git push mohamedrafiudeen.module10.csv origin master
git push -u origin master
git config --list
git add .
