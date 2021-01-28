**Chef Add hoc commands:**
- ssh web1 cat /hello.txt

**Guard**
- for checking if a resource exists (not_if)

**Chef templates**

- extension: .erb

**Repo folders chef**

- **a cookbooks directory** to store all of your cookbooks in
- **a policyfiles directory** to keep your overarching policies in place
- **a data_bags directory** to store any secrets and keys you might need to manage your environments

**Knife:**

- a command-line tool that provides an interface between a local chef-repo and the Chef Infra server.

**Test Kitchen** 

- Runs your infrastructure code in an isolated environment that resembles your production environment.
- With Test Kitchen, you continue to write your Chef code from your  workstation, but instead of uploading your code to the Chef server and  applying it to a node, Test Kitchen applies your code to a temporary  environment, such as a virtual machine on your workstation or a cloud or container instance.
- Test Kitchen builds the `Vagrantfile` for  you and is the interface you use to create, destroy, and run Chef on  your instances. Test Kitchen also downloads the Vagrant box for you as  needed.

**Kitchen file:**

- **driver** specifies the software that manages the machine. We're using the Vagrant Test Kitchen driver ([list of other popular drivers](https://docs.chef.io/config_yml_kitchen.html#drivers)). The Vagrant driver works with VirtualBox by default.
- **provisioner** specifies how to run Chef. We use `chef_zero` because it enables you to mimic a Chef server environment on your local machine. This allows us to work with node attributes and other Chef  server features.
- **transport** specifies how to execute commands  remotely on the test instance. WinRM is the default transport on  Windows; SSH is the default on all other operating systems.
- **verifier** specifies which application to use when running automated tests. You'll learn more about automated testing in a future module.
- **platforms** specifies the target operating systems. We're targeting just one – CentOS 7.
- **suites** specifies what we want to apply to the virtual environment. You can have more than one suite. We define just one, named `default`. This is where we provide the run-list, which defines which recipes to  run and in the order to run them. Your run-list contains one recipe –  the `learn_chef_httpd` cookbook's default recipe.

**Kitchen commandline tool**

- kitchen list (list all the ktichen boxes)
- kitchen create (create a virtual machine)
- Kitchen converge (apply cookbook on the machine, by running the chef-client on the instance)
- Kitchen connect \<machine-name\> (connect to the machine)
- Kitchen destroy (destroy the virtual machine)
- Kitchen verify (verify the setup based on integrated tests)
- Kitchen test (does destroy, create, converge, verify and destroy in one step!)

**Testing code in chef**

- InSpec format
- https://docs.chef.io/inspec/resources/
- cookbooks/webserver_test/test/integration/default/default_test.rb

**Cookstyle**

- For checking if there are errors in the cookbooks
- Based on RuboCop

**Chef Supermarket**
- Central location for cookbooks

**Ohai**

- Collect system configuration data
- Runs on the node together with the Chef Infra Client
- Ohai is run by Chef Infra Client at the beginning of every Chef run to determine system state

**Chef Inspec**

- is for compliance 
- `inspec` commandline tool is used for this