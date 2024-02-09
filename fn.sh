usermgt(){
  echo "Enter the username of the new user"
  read name
  sudo adduser $name
  sudo groupadd managers
  sudo usermod -G managers $name
  id $name
  echo "$name account is created"
  grep $name /etc/passwd
}
filemgt(){
   if [ -e /etc/passwd ]
   then
   echo "It exist. Please procees"
   grep simon /etc/passwd
   touch test.java /home/simon
   else
   echo "It does not exist"
   fi
}
packegemgt(){
    sudo yum update -y
    sudo yum install tree nano vim unzip -y
}
db_backup(){
    cp -r * /tmp/backup
}
system and application performance monitoring
sapm(){
    df -h
    free -m
    top
    ps -ef
}
usermgt
filemgt


#invoke the function by calling which one you need
~                                                         
