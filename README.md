
<a name="readme-top">

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://images.contentstack.io/v3/assets/bltefdd0b53724fa2ce/blt3e2c7bebbae51138/6568a0834c0b9a3624d5582a/logo-tagline-white.svg" alt="Logo" width="300" height="80">
  </a>
</div>
</a>



<!-- ABOUT THE PROJECT -->
## About 

There are multiple way to install elasticsearch in this project we will install elasticsearch and kibana in linux enviroment.




<!-- GETTING STARTED -->
## Getting Started

In this tutorial you need to have linux Fedora or Debian distrebution 
we will use the ES and Kibana scripts to install the packages


### Installation


1. Install Git package
   ```sh
   sudo yum install git
   ```
3. Clone the Elasticsearch repo `es-install.sh`
   ```sh
   git clone https://github.com/wildcard-94/ElasticSearch/es-install.sh
   
   ```
4. Run the script
   ```sh
   sudo chmod 755 es-install.sh
   sudo ./es-install.sh
   ```
5. Reset elastic user password 
   ```sh
   cd /usr/share/elasticsearch/ ; sudo ./bin/elasticsearch-reset-password -u elastic
   ```
6. Copy the password and set ELASTIC-PASSWORD variable
   ```sh
   sudo ELASTIC-PASSWORD="your own password"
   ```
7. Check reachability   
   ```js
   sudo curl --cacert /etc/elasticsearch/certs/http_ca.crt -u elastic:$ELASTIC_PASSWORD https://localhost:9200
   ```
    <p>
    <img width="360" height="200" src="https://i.imgur.com/YrJMdbc.png" >
    </p>
8. Clone Kibana repo `kibana-install.sh`
   ```sh
   git clone https://github.com/wildcard-94/ElasticSearch/kibana-install.sh
   
   ```
9. Run the script
   ```sh
   sudo chmod 755 kibana-install.sh
   sudo ./kibana-install.sh
   ```
10. Open kibana in the browser and configuer security between elasticsearch and kibana by copy the output

   ```sh
   http://localhost:5601
   ```
   <p>
    <img width="360" height="200" src=https://i.imgur.com/YGLSTq7.png" >
    <p>
    <img width="360" height="200" src="https://i.imgur.com/cpJiMaZ.png" >
    <p>
    <img width="360" height="200" src="https://i.imgur.com/LcighHG.png" >
    </p>



<!-- ACKNOWLEDGMENTS -->

## Elastic binary tools used in the script
   <p>
    <img width="360" height="200" src=https://i.imgur.com/yJmLp3U.png" >
    <p>
    <img width="360" height="200" src="https://i.imgur.com/aVABWi7.png" >
    <p>
    <img width="360" height="200" src="https://i.imgur.com/nvMAsoi.png" >
    </p>


## References

* [Installing Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/8.2/install-elasticsearch.html)
* [Installing Kibana](https://www.elastic.co/guide/en/kibana/8.2/install.html)


<p align="right">(<a href="#readme-top">back to top</a>)</p>



