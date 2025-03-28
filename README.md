# Azure Virtual Network Terraform Module

This repository demonstrates how to create reusable Terraform modules for Azure resources. The module showcases best practices for structuring Terraform code to promote reusability and maintainability.

## Module Overview

This module creates an Azure Virtual Network with configurable subnets. It demonstrates:

- Variable parameterization
- Resource creation with dynamic inputs
- Output definition
- Module referencing

## Requirements

- Terraform >= 0.12.x
- Azure subscription
- Azure CLI or other authentication method configured

## Module Structure

```
terraform-modules/
├── main.tf           # Main module resources (VNet and subnets)
├── variables.tf      # Input variable definitions
├── outputs.tf        # Output definitions
├── providers.tf      # Provider configuration
├── .gitignore        # Git ignore file
└── test/             # Example implementation of the module
    └── main.tf       # Test module usage
```

## Usage

To use this module in your Terraform configuration:

```hcl
module "vnet" {
  source       = "path/to/module"
  vnet_name    = "my-vnet"
  address_space = ["10.0.0.0/16"]
  subnets      = {
    subnet1 = "10.0.1.0/24"
    subnet2 = "10.0.2.0/24"
  }
}
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| vnet_name | Name of the Virtual Network | string | yes |
| address_space | Address space for the VNet | list(string) | yes |
| subnets | Map of subnet names to CIDR blocks | map(string) | yes |

## Outputs

| Name | Description |
|------|-------------|
| vnet_id | The ID of the created Virtual Network |
| subnets_ids | Map of subnet names to their IDs |

## Testing the Module

The `test` directory contains an example implementation of this module:

1. Navigate to the test directory:
   ```
   cd test
   ```

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Apply the configuration:
   ```
   terraform apply
   ```

## Best Practices Demonstrated

- **Modularity**: Separating resources into reusable modules
- **Variable Definition**: Clear input/output interfaces
- **Documentation**: Well-documented variables and usage
- **Testing**: Example implementation for validation
- **Resource Grouping**: Logical grouping of related resources

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.