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
echo -e "Lihat pada \e[34mhttp://eggo.ga/FAQ \e[39mjika anda tidak mengerti."
echo ""
echo -n "Nick Owner Bot? : "
read owner;
echo -n "Server Tujuan (ipv6)? : "
read servers;
echo -n "Listen Telnet : "
read listen;
echo -n "Nick Bot? : "
read nickbot;
echo -n "Alternatif nick? : "
read altnick;
echo -n "Username bot? : "
read uname;
echo -n "Base Channel? (tanpa tanda #) : "  
read basechan;
echo -n "IPV6/Vhost yang digunakan (kosongkan jika tidak tahu) : "
read vhost6;
echo ""
echo -e "\033[30;43;4mTekan Sembarang Keyboard!!\033[0m"
read x;
cd $HOME
wget http://la.eggoez.com/files/eggdrop6.tar.gz && tar zxf eggdrop6.tar.gz && rm -rf eggdrop6.tar.gz && mv eggdrop6 eggoez && cd eggoez && ./configure && make config && export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib && make && make install && cd ~/ && mv eggdrop .eggoez && cd ~/.eggoez && mkdir data && wget repo.eggo.ga/src/eggoez17-tcl.tar.gz && tar zxf eggoez17-tcl.tar.gz && rm -rf eggoez17* && export MALLOC_CHECK_=4 && wget https://raw.githubusercontent.com/eg-goez/.eggoez/master/conf/egg.conf && mv eggdrop goez
echo listen $listen all >> egg.conf
echo set owner \"$owner\" >> egg.conf
echo set servers \{$servers\} >> egg.conf
echo set nick \"$nickbot\" >> egg.conf
echo set altnick \"$altnick\" >> egg.conf
echo set username $uname >> egg.conf
echo set basechan  \"#$basechan\" >> egg.conf
echo set botnet-nick \"$nickbot\" >> egg.conf
echo set vhost6 \"$vhost6\" >> egg.conf
echo set prefer-ipv6 1 >> egg.conf
./goez -m egg.conf  && cd ..
echo -e "\e[32mSip Deh.. Berhasil menginstall eggdrop goez\e[0m"
echo -e "Silahkan menuju \e[96m$servers\e[0m dengan nick \e[96m$owner\e[0m "
echo -e "Lalu ketik \033[33m/msg $nickbot pass sandibaru \033[0muntuk membuat sandi baru."
echo -e "Untuk Login ketik \033[33m/msg $nickbot auth sandikamu\033[0m"
echo -e "Untuk melihat perintah² Bot ketik \033[33m/msg $nickbot help\033[0m"
echo -e "File Konfig $nickbot ada di\e[34m $HOME/\e[35m.eggoez/\e[96megg.conf\e[0m"
echo -e "File User $nickbot ada di\e[34m $HOME/\e[35m.eggoez/data/\e[96mge.user\e[0m"
echo -e "File Chan $nickbot ada di\e[34m $HOME/\e[35m.eggoez/data/\e[96mge.chan\e[0m"
echo ""
echo "Kontak DeV eg@goez.my.id //  http://eg-goez.blogspot.com"
echo "Atau /s -m irc.eggoez.com -join:#ciut"
echo "Thanks to genin, ArDiaN, tRiNe, Retry etc."
echo "irc.allnetwork.org@ Indonesia IRC"
echo "Terima kasih telah menggunakan eggoez.tar.gz"
echo -e "\e[31m+----------------------------------------------------------------+\e[0m"
fi
echo -e "\e[45m+--------------------( egg drop goez )----------------------+\e[0m" 
