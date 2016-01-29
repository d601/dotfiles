# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export XENVIRONMENT="${HOME}/.Xresources"
export _JAVA_AWT_WM_NONREPARENTING=1

export PYTHONPATH=/opt/warehouse/DATA-Lib/python/

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=":$HOME/bin:$PATH"

# Chromium depot_tools adds a shitton of programs to the path, this might
# cause problems
#export PATH="$PATH:~/src/depot_tools"

# Add storm command
export PATH="$PATH:/opt/storm/bin"

# Enable ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Fix for intellij
export IBUS_ENABLE_SYNC_MODE=1

# Enable /usr/local/lib64
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig

# Aliases
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
#export PS1="\[\033[1;37m\][\[\033[0;37m\]$ \[\033[1;32m\]\u@\H\[\033[0;37m\] \t \w \[\033[1;37m\]]\[\033[m\]\n"
#export PS1="\[\033[1;37m\][\[\033[0;37m\]$ $(user_color)\u@\H\[\033[0;37m\] \t \w \[\033[1;37m\]]\[\033[m\]\n"
#export PS1="\[\033[1;32m\]\u@\H\[\033[0;37m\] \t \w\[\033[m\] \$?\n"
export PS1="\e[48;5;95m\[\033[1;32m\]\u@\H\[\033[0;37m\] \t \w\[\033[m\] $?\n"

export JAVA_HOME=/etc/alternatives/java_sdk

#testing for hadoop
#export JAVA_HOME=/usr/lib/jvm/jre-openjdk/
export HADOOP_INSTALL=/opt/hadoop
export HADOOP_PREFIX=/opt/hadoop
#export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
#export HADOOP_COMMON_HOME=$HADOOP_INSTALL
#export HADOOP_HDFS_HOME=$HADOOP_INSTALL
#export HADOOP_YARN_HOME=$HADOOP_INSTALL
#export HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop
#export HIVE_SERVER2_THRIFT_PORT=10010
#export YARN_CONF_DIR=/opt/hadoop/etc/hadoop
#export HADOOP_YARN_USER=hadoop
##export HADOOP_CLASSPATH=${TEZ_CONF_DIR}:${TEZ_JARS}/*:${TEZ_JARS}/lib/*
#export HIVE_HOME=/opt/warehouse/RL-Hive/packaging/target/apache-hive-1.2.0-bin/apache-hive-1.2.0-bin/
export HIVE_HOME=/opt/hive/

export TERMINAL=/usr/bin/xterm

h2d(){
  echo "ibase=16; $@"|bc
}
d2h(){
  echo "obase=16; $@"|bc
}
