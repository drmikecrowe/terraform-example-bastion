# terraform-example-bastion
Deploys the Bastion host service to the environment

The Bastion Host(s) are the concentration point for all AWS host logins.  From there a user may SSH to other hosts in the environment.  The service uses [tf_example_svc](https://github.com/threatstack/tf_example_svc) to setup a standard looking service configuration for the environment.
