sudo spin -a lock.pml
sudo spin -a trash_bin.pml
sudo apt-get install gcc
sudo spin -a trash_bin.pml
sudo gcc -DNOREDUCE -o pan pan.c
./pan
sudo apt update
sudo apt upgrade
sudo apt-get install spin
