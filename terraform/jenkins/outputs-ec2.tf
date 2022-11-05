output "jenkins_ip" {
  description = "Ipv4 from Jenkins server"
  value       = module.ec2_instance.public_ip
}
