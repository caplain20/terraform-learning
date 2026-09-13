output "adresse_ip" {
  description = "Adresse IP publique du serveur créé"
  value       = aws_instance.mon_serveur.public_ip
}
