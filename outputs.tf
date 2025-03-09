output "ado-id"{
    description = "Vnet name"
    value = module.ado_module.ado-id
}

output "storage-account-id" {
    description = "Storage Account id"
    value = module.storage_module.storage-account-id  
}