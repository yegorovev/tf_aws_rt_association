output "route_table" {
  description = "Route table"
  value       = aws_route_table.rt
}

output "rt_association" {
  description = "Route table association"
  value       = aws_route_table_association.rt_association
}
