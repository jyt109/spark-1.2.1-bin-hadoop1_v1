# To install modules on the master node
echo 'Installing packages'
yum install -y tmux
yum install -y pssh
yum install -y python27 python27-devel
yum install -y freetype-devel libpng-devel
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | python27
easy_install-2.7 pip
easy_install py4j
pip2.7 install ipython[all]
pip2.7 install requests numpy
pip2.7 install matplotlib
pip2.7 install nltk

# To install modules on the slave nodes
pssh -h /root/spark-ec2/slaves yum install -y python27 python27-devel
pssh -h /root/spark-ec2/slaves "wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | python27"
pssh -h /root/spark-ec2/slaves easy_install-2.7 pip
pssh -t 10000 -h /root/spark-ec2/slaves pip2.7 install numpy
pssh -h /root/spark-ec2/slaves pip2.7 install nltk
