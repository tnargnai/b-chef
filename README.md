Overview
========

This is the Chef PoC repository.

Set Up
======

We will be using the following for creating our VMs:

* ChefDK - our local Chef environment and related tools
* Vagrant - providing an interface between Chef and Virtual Box
* Virtual Box - hypervisor for creating our VMs  
* Berkshelf - managing our cookbook dependencies (in ChefDK)
* Test Kitchen - tool to create/destroy/test our Chef cookbooks
* Serverspec - writing our tests

Install the following:

ChefDK - https://downloads.chef.io/chef-dk/ and further documentation https://docs.chef.io/install_dk.html
Vagrant - https://docs.vagrantup.com/v2/installation/
Virtual Box - https://www.virtualbox.org/wiki/Downloads

Virtual Box configuration:

All our VMs are configured on the 192.168.33.0 subnet you should have a host network configured with the appropriate settings to allow this.

We are also using kitchen-sync (https://github.com/coderanger/kitchen-sync) to speed up our test runs.  Install it with

  $ chef gem install kitchen-sync

Berkshelf
=========

We are using Berkshelf to manage our cookbook dependencies. Before you can start to use Test Kitchen you must create a Berksfile.lock file.

  $ cd ~/chef
  $ berks install
  $ berks update

Repository Directories
======================

This repository contains several directories, and each directory contains a README file that describes what it is for in greater detail, and how to use it for managing your systems with Chef.

* `cookbooks/` - Cookbooks you download or create.
* `data_bags/` - Store data bags and items in .json in the repository.
* `roles/` - Store roles in .rb or .json in the repository.
* `environments/` - Store environments in .rb or .json in the repository.

Configuration
=============

The config file, `.chef/knife.rb` is a repository specific configuration file for knife. If you're using the Chef Platform, you can download one for your organization from the management console. If you're using the Open Source Chef Server, you can generate a new one with `knife configure`. For more information about configuring Knife, see the Knife documentation.

https://docs.chef.io/knife.html

Test Kitchen
============
