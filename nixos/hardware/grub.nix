
{ config, pkgs, ... }:
{
  # Bootloader.
  boot.loader = {
  timeout = 5;
  efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot";
  };
  grub = {
    enable = true;
    efiSupport = true;
    useOSProber = true;
    #efiInstallAsRemovable = true; # Otherwise /boot/EFI/BOOT/BOOTX64.EFI isn't generated
    extraEntriesBeforeNixOS = true;
    devices = [ "nodev" ];
  };
  };

    # boot.loader.systemd-boot.enable = true;
}
