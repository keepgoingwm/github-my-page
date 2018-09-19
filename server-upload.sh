export HOME=/home/ubuntu
who
git add . 
git commit -m 'update'
sudo git pull origin master & git push origin master
# baidu 推送
curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=keepgoingwm.github.io&token=l8s3g2YxreD2sgNB"
