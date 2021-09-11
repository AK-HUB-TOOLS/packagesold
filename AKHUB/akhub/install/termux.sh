#/bin/bash

load() {
    NC='\033[0m'
    PRC=`printf "%.0f" ${1}`
    SHW=`printf "%3d\n" ${PRC}`
    LNE=`printf "%.0f" $((${PRC}/2))`
    LRR=`printf "%.0f" $((${PRC}/2-12))`; if [ ${LRR} -le 0 ]; then LRR=0; fi;
    LRY=`printf "%.0f" $((${PRC}/2-24))`; if [ ${LRY} -le 0 ]; then LRY=0; fi;
    LRC=`printf "%.0f" $((${PRC}/2-36))`; if [ ${LRC} -le 0 ]; then LRC=0; fi;
    LRG=`printf "%.0f" $((${PRC}/2-48))`; if [ ${LRG} -le 0 ]; then LRG=0; fi;
    LRR_=""
    LRY_=""
    LRC_=""
    LRG_=""
    for ((i=1;i<=13;i++))
    do
    	DOTS=""; for ((ii=${i};ii<13;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LRR_="${LRR_}#"; else LRR_="${LRR_}."; fi
    	echo -ne "${LR}${LRR_}${DOTS}${LR}............${LR}............${LR}............ ${SHW}%${NC}\r"
    done
    for ((i=14;i<=25;i++))
    do
    	DOTS=""; for ((ii=${i};ii<25;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LRY_="${LRY_}#"; else LRY_="${LRY_}."; fi
    	echo -ne "${LR}${LRR_}${LR}${LRY_}${DOTS}${LR}............${LR}............ ${SHW}%${NC}\r"
    done
    for ((i=26;i<=37;i++))
    do
    	DOTS=""; for ((ii=${i};ii<37;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LRC_="${LRC_}#"; else LRC_="${LRC_}."; fi
    	echo -ne "${LR}${LRR_}${LR}${LRY_}${LR}${LRC_}${DOTS}${LR}............ ${SHW}%${NC}\r"
    done
    for ((i=38;i<=49;i++))
    do
    	DOTS=""; for ((ii=${i};ii<49;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LRG_="${LRG_}#"; else LRG_="${LRG_}."; fi
    	echo -ne "${LR}${LRR_}${LR}${LRY_}${LR}${LRC_}${LR}${LRG_}${DOTS} ${SHW}%${NC}\r"

    done
}

logo(){
echo "


          █████╗ ██╗  ██╗      ██╗  ██╗██╗   ██╗██████╗ 
         ██╔══██╗██║ ██╔╝      ██║  ██║██║   ██║██╔══██╗
         ███████║█████╔╝ █████╗███████║██║   ██║██████╔╝
         ██╔══██║██╔═██╗ ╚════╝██╔══██║██║   ██║██╔══██╗
         ██║  ██║██║  ██╗      ██║  ██║╚██████╔╝██████╔╝
         ╚═╝  ╚═╝╚═╝  ╚═╝      ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ V 2.0" |lolcat
echo ""
echo ""
echo "   ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t
echo "   ☆::::::☆  s c r i p t  b y  p l a t y p u s f a c t    ☆::::::☆" |lolcat -t
echo "   ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t
}

logonosh(){
echo "
          █████╗ ██╗  ██╗      ██╗  ██╗██╗   ██╗██████╗ 
         ██╔══██╗██║ ██╔╝      ██║  ██║██║   ██║██╔══██╗
         ███████║█████╔╝ █████╗███████║██║   ██║██████╔╝
         ██╔══██║██╔═██╗ ╚════╝██╔══██║██║   ██║██╔══██╗
         ██║  ██║██║  ██╗      ██║  ██║╚██████╔╝██████╔╝
         ╚═╝  ╚═╝╚═╝  ╚═╝      ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ V 2.0"
echo ""
echo ""
echo "   ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
echo "   ☆::::::☆  s c r i p t  b y  p l a t y p u s f a c t    ☆::::::☆"
echo "   ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
}

oldfilecheck(){
if [ -d "$PREFIX/share/akhub" ];
then
read -p $'Old file found do you want to continue [y/n] ?' oldch
if [ $oldch = y ] || [ $oldch = Y ];
then
echo "It will remove all user data"
LR='\033[1;92m'
  load 0
  load 1
  load 2
  load 3
  load 4
  load 5
  load 6
  load 7
  load 8
  load 9
  load 10
  load 11
  load 12
  load 13
  load 14
  load 15
  load 16
  load 17
  load 18
  load 19
  load 20
  load 22
  load 25
  load 26
  load 29
  load 30
  load 31
  load 34
  load 37
  load 39
  load 40
  load 42
  load 43
  load 45
  load 48
  load 49
  load 50
  load 55
  load 57
  load 60
  load 66
  load 70
  load 71
  load 74
  load 76
  load 79
  load 80
  load 84
  load 88
  load 90
  load 92
  load 94
  load 95
  load 98
  load 100
sleep 2
echo "[*] Done                                                   "
echo "[*] Reinstalling akhub "
sleep 1
clear
elif [ $oldch = n ] || [ $oldch = N ];
then
exit
else
oldfilecheck
fi
fi

}

instaaa(){
cd $PREFIX/share/
curl -LOs https://Platypusfact.github.io/packages/akhub/termux.zip
echo "[*] Unziping akhub"
echo "[*] Please wait"
  LR='\033[1;92m'
  load 0
  load 1
  load 2
  load 3
  load 4
  load 5
  load 6
  load 7
  load 8
  load 9
  load 10
  load 11
  load 12
  load 13
  load 14
  load 15
  load 16
  load 17
  load 18
  load 19
  load 20
  load 22
  load 25
  load 26
  load 29
  load 30
  load 31
  load 34
  load 37
  load 39
  load 40
  load 42
  load 43
  load 45
  load 48
  load 49
  load 50
  load 55
  load 57
  load 60
  load 66
  load 70
  load 71
  load 74
  load 76
  load 79
  load 80
  load 84
  load 88
  load 90
  load 92
  load 94
  load 95
  load 98
  load 100
sleep 2
echo "[*] extract akhub to /data/data/com.termux/file/usr/                         "
sleep 1
unzip $PREFIX/share/termux.zip
echo "[*] extract  data to /data/data/com.termux/file/usr/"
sleep 3
rm $PREFIX/share/termux.zip
echo "[*] Installing"
sleep 1
echo "[*] Please wait"
sleep 3
}

instarech(){
if [ -d "$PREFIX/share/akhub" ];
then
echo
else
clear
echo "[*] ERROR Found "
echo "[*] ERROR Found "
echo "[*] ERROR Found "
echo "[*] ERROR Found "
echo
echo
echo
echo
echo "Please wait reinstalling akhub"
logonosh
instaaa
instarech
}
installpkgs(){
    am broadcast --user 0 \
		 --es com.termux.app.reload_style storage \
		 -a com.termux.app.reload_style com.termux > /dev/null
    # Upgradeing termux
    echo "[*] updateing termux"
    apt upgrade -y --silent
    # Updating termux
    echo "[*] upgradeing termux"
    apt update -y --silent
    # Installing pkgs
    echo "[*] installing git"
    pkg install git -y
    echo "[*] installing python"
    pkg install python -y
    echo "[*] installing figlet"
    pkg install figlet -y
    echo "[*] installing openssh"
    pkg install openssh -y
    echo "[*] installing nmap"
    pkg install nmap -y
    echo "[*] installing cowsay"
    pkg install cowsay -y
    echo "[*] installing toilet"
    pkg install toilet -y
    echo "[*] installing ncurses-utils"
    pkg install ncurses-utils -y
    echo "[*] installing ruby"
    pkg install ruby -y
    echo "[*] installing mpv"
    pkg install mpv -y
    echo "[*] installing ruby"
    gem install ruby 
    echo "[*] installing lolcat"
    pip install lolcat
    gem install lolcat
    echo "[*] installing nano"
    apt-get install nano -yq --silent

}
loginfile(){
    if [ -f "/data/data/com.termux/files/usr/bin/login" ];
    then
      rm /data/data/com.termux/files/usr/bin/login
    fi
    touch /data/data/com.termux/files/usr/bin/login
    echo "#!/data/data/com.termux/files/usr/bin/sh

if [ \$# = 0 ] && [ -f /data/data/com.termux/files/usr/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	bash /data/data/com.termux/files/usr/etc/motd
else
	# This variable shouldn't be kept set.
	unset TERMUX_HUSHLOGIN
fi

if [ -G ~/.termux/shell ]; then
	export SHELL=\"`realpath ~/.termux/shell`\"
else
	for file in /data/data/com.termux/files/usr/bin/bash /data/data/com.termux/files/usr/bin/sh /system/bin/sh; do
		if [ -x \$file ]; then
			export SHELL=\$file
			break
		fi
	done
fi

if [ -f /data/data/com.termux/files/usr/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=/data/data/com.termux/files/usr/lib/libtermux-exec.so
fi

if [ -n \"\$TERM\" ]; then
	  exec \"\$SHELL\" -l \"\$@\"
else
	  exec \"\$SHELL\" \"\$@\"
fi
fi" >> $PREFIX/bin/login
chmod +x $PREFIX/bin/login
}

motddata(){
if [ -f "$PREFIX/etc/motd" ];
then
  rm $PREFIX/etc/motd
fi
touch $PREFIX/etc/motd

echo "
echo \"Welcome to Termux!

Community forum: https://termux.com/community
Gitter chat:     https://gitter.im/termux/termux
IRC channel:     #termux on libera.chat

Working with packages:

 * Search packages:   pkg search <query>
 * Install a package: pkg install <package>
 * Upgrade packages:  pkg upgrade

Subscribing to additional repositories:

 * Root:     pkg install root-repo
 * Unstable: pkg install unstable-repo
 * X11:      pkg install x11-repo

Report issues at https://termux.com/issues\" |lolcat " >> $PREFIX/etc/motd

}

profiledata(){
if [ -f "/data/data/com.termux/files/usr/etc/profile" ];
then
  rm /data/data/com.termux/files/usr/etc/profile
fi
touch /data/data/com.termux/files/usr/etc/profile
echo "
for i in /data/data/com.termux/files/usr/etc/profile.d/*.sh; do
if [ -r \$i ]; then
	. \$i
fi
done
unset i

# Source etc/bash.bashrc and ~/.bashrc also for interactive bash login shells:
if [ \"\$BASH\" ]; then
        if [[ \"\$-\" == *\"i\"* ]]; then
                if [ -r /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
                        . /data/data/com.termux/files/usr/etc/bash.bashrc
                fi
                if [ -r /data/data/com.termux/files/home/.bashrc ]; then
                        . /data/data/com.termux/files/home/.bashrc
                fi
        fi
fi
" >> /data/data/com.termux/files/usr/etc/profile
chmod +x /data/data/com.termux/files/usr/etc/profile
}

copyfiglet-fonts(){
# Copying figlet-fonts
  cp /data/data/com.termux/files/usr/share/akhub/data/figlet-fonts/* /data/data/com.termux/files/usr/share/share/figlet/
}

userdata(){
    read -p $'\e[36m>>\e[32m Enter Your Name :\e[m ' userrr
    echo
    sleep 1
    if [ -f "/data/data/com.termux/files/usr/share/akhub/.user/.user" ];
    then
      rm /data/data/com.termux/files/usr/share/akhub/.user/.user
    fi
    touch /data/data/com.termux/files/usr/share/akhub/.user/.user
    echo "$userrr" >> /data/data/com.termux/files/usr/share/akhub/.user/.user
}

passdata(){
#  password login 
read -p $'\e[36m>>\e[32m Enter password for '$userrr' :  ' passone
echo
sleep 1
read -p $'\e[36m>>\e[32m Repeat password : \e[m ' passtwo
sleep 2
echo
if [ $passone = $passtwo ];
then
  if [ -f "/data/data/com.termux/files/usr/share/akhub/.user/.pass" ];
  then
    rm /data/data/com.termux/files/usr/share/akhub/.user/.pass
  fi
  touch /data/data/com.termux/files/usr/share/akhub/.user/.pass
  if [ -f "/data/data/com.termux/files/usr/share/akhub/.user/.userpass" ];
  then
    rm /data/data/com.termux/files/usr/share/akhub/.user/.userpass
  fi
  touch /data/data/com.termux/files/usr/share/akhub/.user/.userpass
  python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/akhub/.user/.pass
  python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/akhub/.user/.userpass
  sleep 1
  LR='\033[1;93m'
  load 0
  load 5
  load 10
  load 20
  load 30
  load 40
  load 50
  load 60
  load 70
  load 80
  load 90
  load 95
  load 100
  sleep 2
echo -e "\e[32m[*] Login succesfully installed                                            \e[m"
else 
echo -e "\e[33m[\e[31m!\e[33m]\e[31m Password doesn't match try again \e[m"
sleep 2
passdata
echo
fi
}
outputdata(){
# User name
uername1=$(cat /data/data/com.termux/files/usr/share/akhub/.user/.user)
# Ipv6 address of user
myip61=$(ifconfig | grep 'inet' | grep -v '::1' | grep -v '127.0.0.1' | awk NR==1'{print $2}')
# User id
myid1=$(sshd | whoami )
if [ -f "~/storage/dcim/akhubout.txt" ];
then
  rm ~/storage/dcim/akhubout.txt
fi
touch ~/storage/dcim/akhubout.txt
echo "user name : $uername1
$uername1 password : $passtwo
user id : $myid1
user ipv6 : $myip61
" >> ~/storage/dcim/akhubout.txt
}

# Istalling akhub
logonosh
oldfilecheck
instaaa
instarech
echo -e "\e[32m[*] Installing termux packages  \e[m"

echo "[*] Loading AKHUB please wait"
sleep 2
clear
logo
sleep 2
motddata
profiledata
loginfile
copyfiglet-fonts
outputdata 
userdata
passdata
sleep 2
clear
$BASH
logo
sleep 2
echo
echo
echo
echo
echo
echo
echo
  LR='\033[1;92m'
  load 0
  load 1
  load 2
  load 3
  load 4
  load 5
  load 6
  load 7
  load 8
  load 9
  load 10
  load 11
  load 12
  load 13
  load 14
  load 15
  load 16
  load 17
  load 18
  load 19
  load 20
  load 22
  load 25
  load 26
  load 29
  load 30
  load 31
  load 34
  load 37
  load 39
  load 40
  load 42
  load 43
  load 45
  load 48
  load 49
  load 50
  load 55
  load 57
  load 60
  load 66
  load 70
  load 71
  load 74
  load 76
  load 79
  load 80
  load 84
  load 88
  load 90
  load 92
  load 94
  load 95
  load 98
  load 100
sleep 2
echo "[*] Done                                            "
sleep 1
$BASH
logo
sleep 2
