file="/etc/yum.repos.d/elasticsearch.repo"

echo "[elasticsearch]
name=Elasticsearch repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=0
autorefresh=1
type=rpm-md" > $file

sudo yum install --enablerepo=elasticsearch elasticsearch-8.2.0
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service
sleep 1m
sudo systemctl status elasticsearch.service

