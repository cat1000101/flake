{ config, pkgs, ... }:
{
  boot.kernelModules = [ "kvm-amd" ];
  hardware.cpu.amd.updateMicrocode = true;   # Update AMD CPU microcode for security
}
