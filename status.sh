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
  echo "show container ${container} status:"
  cd /root/docker/${container}
  docker-compose ps
done
