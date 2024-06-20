
{ config, pkgs, ... }:
{
  services.xserver.videoDrivers = ["nvidia"];
  boot.initrd.kernelModules = [ "nvidia" ];
  
  hardware = {
  # Enable OpenGL
    opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    };

    nvidia = {

      # Modesetting is required.
      modesetting.enable = true;

      open = false;

      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}
