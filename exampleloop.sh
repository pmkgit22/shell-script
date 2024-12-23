#!/bin/bash

# Define log file
LOGFILE="script.log"

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Log message function
log_message() {
    local MESSAGE=$1
    echo -e "$MESSAGE" | tee -a "$LOGFILE"
}

# Check if a package is installed
is_installed() {
    dpkg -l | grep -qw "$1"
}

# Install a package
install_package() {
    local PACKAGE=$1
    if is_installed "$PACKAGE"; then
        log_message "${YELLOW}Package $PACKAGE is already installed.${NC}"
    else
        log_message "${GREEN}Installing package: $PACKAGE...${NC}"
        sudo apt-get install -y "$PACKAGE" >>"$LOGFILE" 2>&1
        if [ $? -eq 0 ]; then
            log_message "${GREEN}Package $PACKAGE installed successfully.${NC}"
        else
            log_message "${RED}Failed to install package: $PACKAGE.${NC}"
        fi
    fi
}

# List of packages
PACKAGES=("package1" "package2" "package3" "package4" "package5" "package6" "package7" "package8" "package9" "package10")

# Main loop to process packages
log_message "${GREEN}Starting package installation process...${NC}"
for PACKAGE in "${PACKAGES[@]}"; do
    install_package "$PACKAGE"
done

log_message "${GREEN}Script completed. Check $LOGFILE for details.${NC}"
