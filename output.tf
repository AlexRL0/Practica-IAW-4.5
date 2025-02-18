# Mostramos las IPs públicas de las instancias frontend
output "frontend_elastic_ips" {
  value = [for i in aws_eip.frontend : i.public_ip]
}

# Mostramos la IP pública de la instancia backend
output "backend_elastic_ip" {
  value = aws_eip.backend.public_ip
}

# Mostramos la IP pública de la instancia balanceador
output "balanceador_elastic_ip" {
  value = aws_eip.balanceador.public_ip
}

# Mostramos la IP pública de la instancia NFS
output "nfs_elastic_ip" {
  value = aws_eip.nfs.public_ip
}