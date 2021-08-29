# haproxyapache
Aprovisionamento via Docker de uma infraestrutura de Webserver Apache sendo balanceados via haproxy.

# Builda as imagens personalizadas
cd compose/haproxy_apache/ && docker-compose build

# Sobe o compose
docker-compose -p haproxyapache -f docker-compose.yml up -d --scale apache=10

# Para acessar a interface WEB do haproxy
http://IP_DOCKER_HOST:1936/haproxy?status
	user/pass = stats/stats

# Envio de requisicoes para haproxy
ab -n 1000 -c 5 http://IP_DOCKER_HOST:8080/index.html
Obs: ab pacote apache2-utils

# Baixa o compose
docker-compose -p haproxyapache -f docker-compose.yml down

# Exemplo saida
docker-compose -p haproxyapache -f docker-compose.yml up -d --scale apache=10
Creating haproxyapache_apache_1  ... done
Creating haproxyapache_apache_2  ... done
Creating haproxyapache_apache_3  ... done
Creating haproxyapache_apache_4  ... done
Creating haproxyapache_apache_5  ... done
Creating haproxyapache_apache_6  ... done
Creating haproxyapache_apache_7  ... done
Creating haproxyapache_apache_8  ... done
Creating haproxyapache_apache_9  ... done
Creating haproxyapache_apache_10 ... done
Creating haproxyapache_apache_10 ... 
Creating haproxyapache_haproxy_1 ... done

