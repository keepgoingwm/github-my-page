export HOME=/home/ubuntu
sudo cp ~/.git-credentials_backup ~/.git-credentials
hexo d -g
./server-upload.sh
