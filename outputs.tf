output "bastionsecuritygp" {
  value = aws_security_group.bastionsecuritygp.id
}

output "privatesecuritygp" {
  value = aws_security_group.privatesecuritygp.id
}