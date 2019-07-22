FROM ubuntu:18.04

RUN apt-get update\
  && apt-get install -y --no-install-recommends\
  wget\
  && wget https://raw.githubusercontent.com/OpenRTM/OpenRTM-aist/master/scripts/pkg_install_ubuntu.sh -O pkg_install_ubuntu.sh | wc -l > /number

RUN chmod a+x ./pkg_install_ubuntu.sh \
  && ./pkg_install_ubuntu.sh -l c++ -l python -c --yes \
  && dpkg -l | grep openrtm
    
