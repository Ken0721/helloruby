# user list
USERLIST=()
USERLIST[1]=root
USERLIST[2]=aptadm
USERLIST[3]=tmsftpusr

# ip address
IP=192.168.122
NODECNT=`grep $IP /etc/hosts | awk -F' ' '{print $1}' | wc -l`

# function
  # loop - user
  for ((i=1; i < `expr $USERCNT + 1`; i++)); do
    # ssh keygen
    if [ ${USERLIST[$i]} != "root" ]; then
      if [ -e /home/${USERLIST[$i]} ]; then
    # ssh keycopy
    # loop - node
    for ((j=1; j <= $NODECNT; j++)); do
      NODENAME=`grep $IP /etc/hosts | awk -F' ' '{print $2}' | sed -n ${j}p`
      # .ssh/config copy
      if [ ${USERLIST[$i]} != "root" ]; then
        if [ -e /home/${USERLIST[$i]} ]; then
          chown ${USERLIST[$i]} /home/${USERLIST[$i]}/.ssh/config

      for ((k=1; k < `expr $USERCNT + 1`; k++)); do
        # root copy
          if [ "$NODENAME" == "marsserver" ]; then
            if [ "${USERLIST[$k]}" == "root" ]; then
            fi
          # OTHER
          else
          fi
        # other user copy
        else
          if [ -e /home/${USERLIST[$i]} ]; then
            # MARS
            if [ "$NODENAME" == "marsserver" ]; then
              if [ "${USERLIST[$k]}" == "root" ]; then
                ssh-copy-id -i /home/${USERLIST[$i]}/.ssh/id_rsa.pub ${USERLIST[$k]}@$NODE > /dev/null 2>&1
              fi
            else
            # OTHER
            ssh-copy-id -i /home/${USERLIST[$i]}/.ssh/id_rsa.pub ${USERLIST[$k]}@$NODE > /dev/null 2>&1
            fi
          fi
        fi
      done
    done
  done

exit 0
