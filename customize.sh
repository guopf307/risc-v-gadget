#!/bin/sh

FK_FORCE=yes flash-kernel $(find /boot -name 'vmlinuz-*' | sed -e 's|^[^-]*-||')

# Disable Wayland for using Xorg
sed -i 's|#[[:space:]]*WaylandEnable[[:space:]]*=.*|WaylandEnable=false|' /etc/gdm3/custom.conf

chown root:root /etc/udev/rules.d/*
chmod 0644 /etc/udev/rules.d/*
