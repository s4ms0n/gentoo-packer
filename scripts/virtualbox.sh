#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge "=virtual/linux-sources-1" --autounmask-write
etc-update --automode -5
emerge "=virtual/linux-sources-1"

emerge "=app-emulation/virtualbox-additions-5.1.6" --autounmask-write
etc-update --automode -5
emerge "=app-emulation/virtualbox-additions-5.1.6"

#rc-update add virtualbox-guest-additions default
EOF
