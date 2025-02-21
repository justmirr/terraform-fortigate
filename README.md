# Terraform Automation for FortiGate

## Overview

This repository provides Terraform automation for managing FortiGate firewalls, including onboarding configurations, security hardening, and integration with FortiManager. The automation helps ensure consistent, scalable, and compliant firewall configurations across different environments.

## Repository Structure

### Onboarding

Automates the initial configuration of FortiGate firewalls, ensuring they are set up correctly from the start. This includes:

- **delete-default-routes** – Removes any default routes to enforce custom routing policies.
- **dhcp-relay** – Configures DHCP relay settings.
- **dns** – Sets up DNS configurations.
- **hostname** – Configures the hostname of the firewall.
- **ntp** – Configures NTP settings for time synchronization.
- **static-routes** – Defines and configures static routes.
- **zone** – Configures security zones.

### Hardening

Verifies and ensures that the FortiGate firewall meets security hardening requirements. This includes:

- **delete-any-allow** – Removes any overly permissive firewall rules.
- **delete-firewall-policy** – Ensures only necessary firewall policies exist.
- **firewall-details** – Collects and verifies firewall configuration details.
- **ntp-status** – Checks NTP configuration and synchronization status.
- **snmp-details** – Verifies SNMP configurations.
- **ssh-timeout** – Ensures SSH session timeout is configured for security.
- **ssl-tls-version** – Ensures secure SSL/TLS versions are enforced.
- **verify-fortimanager** – Verifies the integration of FortiGate with FortiManager.

### FortiManager Integration

Automates the integration of FortiGate with FortiManager, including:

- **Applying scripts** to FortiGate devices via FortiManager.
- **Assigning templates** to FortiGate devices.
- **Applying different types of templates** for configuration consistency and automation.

## Prerequisites

- **Terraform** installed on your local machine.
- **Access to FortiGate and FortiManager APIs.**
- **Proper credentials and permissions** for configuring firewalls.

## Usage

```sh
# Clone the repository
git clone https://github.com/your-username/terraform-fortigate.git
cd terraform-fortigate

# Navigate to the required module (inside onboarding, hardening, or fortimanager)

# Initialize Terraform
terraform init

# Plan the deployment
terraform plan

# Apply the configuration
terraform apply

# Destroy configurations when needed
terraform destroy
```

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the **MIT License**.
