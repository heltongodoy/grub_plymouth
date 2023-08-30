#!/bin/bash

[1] opcao
# Instalar tema boot plymouth Ubuntu/Debian
sudo apt update
sudo apt install plymouth-themes
cd /usr/share/plymouth/themes
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/fade-in/fade-in.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u


[2] opcao
# Instalar tema boot plymouth Debian
sudo apt install plymouth plymouth-themes
sudo apt install plymouth-theme-breeze kde-config-plymouth
sudo apt install firmware-linux

# Editar config do GRUB em /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash loglevel=3 rd.systemd.show_status=auto rd.udev.log_priority=3 nvidia-drm.modeset=1"
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash loglevel=3 rd.systemd.show_status=auto rd.udev.log_priority=3 i915.modeset=1"
GRUB_TERMINAL_OUTPUT="gfxterm"
GRUB_THEME="/usr/share/grub/themes/breeze/theme.txt"
GRUB_GFXMODE=1920x1080x32
GRUB_GFXPAYLOAD_LINUX=keep

# Verificar no arauivo /etc/initramfs-tools/modules (colocar no final do arquivo)
intel_agp
drm
i915 modeset=1

# depois
sudo update-initramfs -u


[3] opcao
# Ver temas instalados
plymouth-set-default-theme -l

# Então, para definir o tema desejado, execute:
plymouth-set-default-theme -R THEME
