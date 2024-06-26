
{ config, pkgs, ... }:
{
  boot = {
    kernelModules = [ "nvidia_uvm" "nvidia_modeset" "nvidia_drm" "nvidia" "glaxnimate"];  # Load these kernel modules at boot
    kernelParams = [ "nvidia-drm.modeset=1" ];   # Additional kernel parameters-
    #kernel.sysctl."vm.swappiness" = 10;   # Reduce swappiness to prioritize physical memory over swap

    initrd.availableKernelModules = [ "xhci_pci" "ahci" "usb_storage" "nvme" "sd_mod" "sr_mod" ];  # Specify kernel modules in the initial RAM disk
    initrd.kernelModules = [ "nvidia" ];
    extraModulePackages = [ config.boot.kernelPackages.nvidia_x11 ];
  };

  services.xserver.videoDrivers = ["nvidia"];
  services.xserver.exportConfiguration = true;
  
  hardware = {
  # Enable OpenGL
    graphics = {
    enable = true;
    enable32Bit = true;
    };

    nvidia = {
      # Modesetting is required.
      modesetting.enable = true;

      # stops screen tering sometimes?
      forceFullCompositionPipeline = true;

      open = false;

      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}
