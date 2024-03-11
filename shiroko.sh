#!/bin/bash

# Fungsi untuk membersihkan layar terminal
clear_screen() {
    printf "\033c"
}

# Animasi loading sederhana
loading_animation() {
    local animation="|/-\\"
    for ((i=0; i<10; i++)); do
        printf "\rSedang memproses... %c" "${animation:i%4:1}"
        sleep 0.1
    done
    printf "\n"
}

# Fungsi untuk menampilkan kredit pembuat
show_credits() {
    echo "TOOLS INI DIBUAT OLEH MRCUPU"
}

# Menampilkan animasi loading
clear_screen
loading_animation

# Meminta pengguna untuk memilih
echo "jangan di salah gunakan pengembang tidak akan tanggung jawab"
echo "===================================="
echo "[Pilih script yang ingin Anda pake]"
echo "1. Script google dorking"
echo "2. Script Nethunter Termux"
echo "3. Script webkller"
echo "4. Script nmap"
echo "5. Script download ubuntu"
echo "6. Script Track-Ip"
echo "==================================="

read -p "Pilih yang mana (1-6), tekan CTRL+C untuk keluar: " choice

# Menampilkan kredit pembuat setelah pengguna membuat pilihan
case $choice in
    1)
        echo "Sedang mendownload script google dorking..."
        git clone https://github.com/BullsEye0/dorks-eye
        cd dorks-eye
        pip3 install -r requirements.txt
        ;;
    2)
        echo "Sedang mempersiapkan Nethunter untuk Termux..."
        termux-setup-storage
        pkg install wget
        wget -O install-nethunter-termux https://offs.ec/2MceZWr
        chmod +x install-nethunter-termux
        ./install-nethunter-termux 
        ;;
    3)
        echo "Sedang mendownload script webkiller ..."
        git clone https://github.com/ultrasecurity/webkiller.git
        cd webkiller
        pip3 install -r requirements.txt
        python3 webkiller.py
        ;;
    4)
        echo "Sedang mempersiapkan Nmap..."
        pkg install nmap
        ;;
    5)
        echo "Sedang mengdownload Ubuntu..."
        pkg install proot-distro
        proot-distro install ubuntu
        proot-distro login ubuntu
        ;;
    6)
        echo "Menjalankan skrip Track-Ip..."
        git clone https://github.com/fahadsyihab06/Track-ip.git
        cd Track-ip
        bash track.sh
        ;;
    *)
        echo "Pilihan tidak valid. Silakan masukkan 1-6."
        ;;
esac

# Menampilkan kredit pembuat
show_credits
