# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "okeeffe-xp-ie6.box"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
  end

  config.vm.provision "shell", inline: <<-SHELL
    $ErrorActionPreference = "Stop"
    cd C:\\vagrant
    .\\provision-timezone.bat
    .\\provision-screensaver.bat
    .\\provision-balloon-tips.bat
    .\\provision-jdk.ps1
    .\\provision-ant.ps1
    .\\provision-python.ps1
    .\\provision-git.ps1
  SHELL
  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-buck.ps1"

end
