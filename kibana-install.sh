file="/etc/yum.repos.d/kibana.repo"

echo "[kibana-8.x]
name=Kibana repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md">$file

sudo yum install kibana-8.2.0
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service
sudo systemctl start kibana.service
sleep 1m
cd /usr/share/elasticsearch
sudo ./bin/elasticsearch-create-enrollment-token -s kibana

cd /usr/share/kibana/
sudo ./bin/kibana-verification-code 
