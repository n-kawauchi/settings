FROM ubuntu:18.04

COPY openrtm.pub /

RUN set -x \
  && apt-get update\
  && apt-get install -y --no-install-recommends\
  g++\
  make\
  cmake\
  omniorb-nameserver\
  libomniorb4-dev\
  omniidl\
  doxygen\
  nkf\
  gnupg2\
  python\
  wget\
  && export repo="http://openrtm.org/pub/Linux/ubuntu/ bionic"\
  && echo "deb $repo main" | tee -a /etc/apt/sources.list\
# && apt-key adv --keyserver keys.gnupg.net --recv-keys 4BCE106E087AFAC0\
  && wget --no-check-certificate https://openrtm.org/pub/openrtm.key\
  && apt-key add openrtm.key\
  && apt-get autoclean\
  && apt-get -qq update\
  && apt-get install -y --force-yes openrtm-aist-dev

    
