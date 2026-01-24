#!/usr/bin/env bash
set -e

# Define log file
log="./install-$(date +%Y-%m-%d_%H:%M).log"

# Redirect stdout and stderr to tee (both screen and file)
exec > >(tee -a "$log") 2>&1

echo "Which script do you want to run?"
echo "1) iMac27"
echo "2) minis"
echo "3) vm"
echo -n "Enter choice (1 or 2 or 3): "

read CHOICE

case "$CHOICE" in
    1)
        echo "Running iMac27..."
        ./scripts/start-iMac27.sh
        ;;
    2)
        echo "Running minis..."
        ./scripts/start-minis.sh
        ;;
   3)
        echo "Running vm..."
        ./scripts/start-vm.sh
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo "Done."
