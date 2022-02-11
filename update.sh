containers=( 
 "nginx-proxy"
 "nextcloud"
 "ninja"
 "ninja4"
 "netmedia.pro"
 "matrix"
# "odoo"
# "erpnext"
 "postgres-ssl"
)

# iterate over each element
for container in "${containers[@]}"; do
  echo ""
  echo "update container ${container}:"
  cd /root/docker/${container}
  docker-compose pull
  docker-compose build
  docker-compose up -d
done
