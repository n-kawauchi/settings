FROM ubuntu:18.04

RUN apt-get update

wget https://raw.githubusercontent.com/OpenRTM/OpenRTM-aist/master/scripts/pkg_install_ubuntu.sh
RUN chmod a+x ./pkg_install_ubuntu.sh&& \
    ./pkg_install_ubuntu.sh -l c++ -l python -c --yes
    
