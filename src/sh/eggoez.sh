#!/bin/bash
echo -e "\e[31m+----------------------------------------------------------------+\e[0m"
echo -e "\033[37;41mInstallasi eggdrop goez otomatis berada pada \e[7m$HOME/.eggoez\e[27m\033[0m"
echo -e "\e[93mPastikan tidak ada folder \e[7m.eggoez\e[27m di $HOME ini ya?\e[0m"
echo ""
budal="y";
wurung="t";
read -p "Yakin untuk memulai? (y/t)? : " pie
if [ $pie == $wurung ]; then
echo ""
else
echo ""
echo -e "\e[93mPembuatan Konfig informasi yang dibutuhkan\e[0m"
echo -e "Lihat pada \e[34mhttp://eg-goez.github.io/faq.html \e[39mjika anda tidak mengerti."
echo ""
echo -n "Nick Owner Bot : "
read owner;
echo -n "Server Tujuan : "
read servers;
echo -n "Listen Telnet : "
read listen;
echo -n "IP Shell/Vps : "
read ips;
echo -n "Nick Bot yang anda inginkan : "
read nickbot;
echo -n "Nick Alternatif Bot yang anda inginkan : "
read altnick;
echo -n "Username bot : "
read uname;
echo -n "Base Channel (tanpa tanda #) : "  
read basechan;
echo ""
echo -e "\033[30;43;4mTekan sembarang untuk memulai\033[0m"
read x;
cd $HOME
wget http://berkas.eggoez.com/repo/beta/beta18.tar.gz
tar zxf beta*.tar.gz
cd .eggoez
wget https://raw.githubusercontent.com/eg-goez/.eggoez/master/conf/patch/egg.conf
echo set my-hostname \"$ips\" >> egg.conf
echo set my-ip \"$ips\" >> egg.conf
echo listen $listen all >> egg.conf
echo set owner \"$owner\" >> egg.conf 
echo set servers \{$servers\} >> egg.conf
echo set nick \"$nickbot\" >> egg.conf
echo set botnet-nick \"$nickbot\" >> egg.conf
echo set altnick \"$altnick\" >> egg.conf
echo set username $uname >> egg.conf
echo set basechan  \"#$basechan\" >> egg.conf
./goez egg.conf
echo -e "\e[32mSip Deh.. Berhasil menginstall eggdrop goez\e[0m"
echo -e "Silahkan menuju \e[96m$servers\e[0m dengan nick \e[96m$owner\e[0m "
echo -e "Lalu ketik \033[33m/msg $nickbot pass sandibaru \033[0muntuk membuat sandi baru."
echo -e "Untuk Login ketik \033[33m/msg $nickbot auth sandikamu\033[0m"
echo -e "Untuk melihat perintah² Bot ketik \033[33m/msg $nickbot help\033[0m"
echo -e "File Konfig $nickbot ada di\e[34m $HOME/\e[35m.eggoez/\e[96megg.conf\e[0m"
echo -e "File User $nickbot ada di\e[34m $HOME/\e[35m.eggoez/data/\e[96mge.user\e[0m"
echo -e "File Chan $nickbot ada di\e[34m $HOME/\e[35m.eggoez/data/\e[96mge.chan\e[0m"
echo -e "Buat bot lagi ketik \e[94m./eggo\e[0m dan untuk menambah TCL ketik \e[94m./tcl\e[0m di $HOME/\e[35m.eggoez/"
echo ""
echo "Kontak DeV eg@goez.my.id //  http://eg-goez.blogspot.com"
echo "Atau /s -m irc.eggoez.com -join:#ciut"
echo "Thanks to genin, ArDiaN, tRiNe, Retry etc."
echo "irc.allnetwork.org@ Indonesia IRC"
echo "Terima kasih telah menggunakan eggoez.tar.gz"
echo -e "\e[31m+----------------------------------------------------------------+\e[0m"
fi
echo -e "\e[45m+--------------------( egg drop goez )----------------------+\e[0m" 

