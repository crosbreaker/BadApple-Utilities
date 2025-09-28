#!/bin/bash
# skidded from https://github.com/applefritter-inc/BadApple-icarus, hopefully apple doesnt care :(
# stupid script made by appleflyer
set -e

IMG_NAME="ba_utils.img"
MOUNT_DIR="mnt_point"
SIZE_MB=100

truncate -s ${SIZE_MB}M "$IMG_NAME"
mkfs.ext4 "$IMG_NAME"
mkdir -p "$MOUNT_DIR"
sudo mount -o loop "$IMG_NAME" "$MOUNT_DIR"

sudo cp -r br0ker.sh daub.sh recovery_selector.sh touchdev.sh unkeyroll.sh "$MOUNT_DIR"/
sync
sudo umount "$MOUNT_DIR"
rmdir "$MOUNT_DIR"

USED_BLOCKS=$(dumpe2fs -h "$IMG_NAME" | awk '/Block count:/ {print $3}')
BLOCK_SIZE=$(dumpe2fs -h "$IMG_NAME" | awk '/Block size:/ {print $3}')
NEW_SIZE=$((USED_BLOCKS * BLOCK_SIZE))
truncate -s "$NEW_SIZE" "$IMG_NAME"
e2fsck -f "$IMG_NAME"
resize2fs -M "$IMG_NAME"

echo "created and shrunk ext4 image: $IMG_NAME"
