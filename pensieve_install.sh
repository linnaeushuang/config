cd ~
mkdir -p ~/pensieve/dataset/fcc
sudo apt-get -y install git python
git clone https://github.com/AlbertTHuanG/pensieve ~/pensieve/pensieve
cd ~/pensieve/pensieve/
python ./setup.py
cd ~/pensivev/dataset/fcc
#wget -P ~/dataset/fcc https://www.fcc.gov/reports-research/reports/measuring-broadband-america/raw-data-measuring-broadband-america-2016/data-raw-2016-jul.tar.gz
#actual is 
#wget -P ~/dataset/fcc https://data.fcc.gov/download/measuring-broadband-america/2017/data-raw-2016-jul.tar.gz
