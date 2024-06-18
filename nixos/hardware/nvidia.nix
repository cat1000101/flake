
{ config, pkgs, ... }:
{
  # Enable OpenGL
    hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    open = false;

    nvidiaSettings = true;
    
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

}