#!/bin/bash
# Mar 30 2023
# nedd
# Install steam and wine with updates - Modded by _SiCk https://afflicted.sh/


# Define colors for formatting
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to display menu
display_menu() {
    clear
    echo -e "${GREEN}=== Steam and Wine Installer ===${NC}\n"
    echo "Please choose an option:"
    echo "1. Update package lists"
    echo "2. Upgrade installed packages"
    echo "3. Enable the multiverse repository"
    echo "4. Install Steam"
    echo "5. Enable 32-bit architecture"
    echo "6. Add Wine repository"
    echo "7. Install Wine"
    echo "8. Quit"
    echo
}

# Function to perform actions based on user choice
perform_action() {
    case $1 in
        1)
            echo -e "\n${YELLOW}Updating package lists...${NC}"
            sudo apt update
            ;;
        2)
            echo -e "\n${YELLOW}Upgrading installed packages...${NC}"
            sudo apt-get upgrade
            ;;
        3)
            echo -e "\n${YELLOW}Enabling the multiverse repository...${NC}"
            sudo add-apt-repository multiverse
            ;;
        4)
            echo -e "\n${YELLOW}Installing Steam...${NC}"
            sudo apt install steam
            ;;
        5)
            echo -e "\n${YELLOW}Enabling 32-bit architecture...${NC}"
            sudo dpkg --add-architecture i386
            ;;
        6)
            echo -e "\n${YELLOW}Adding Wine repository...${NC}"
            sudo add-apt-repository ppa:ubuntu-wine/ppa
            ;;
        7)
            echo -e "\n${YELLOW}Installing Wine...${NC}"
            sudo apt-get update
            sudo apt-get install wine1.8
            ;;
        8)
            echo -e "${YELLOW}Quitting...${NC}"
            exit 0
            ;;
        *)
            echo -e "${YELLOW}Invalid option.${NC}"
            ;;
    esac

    # Pause before returning to the menu
    read -n 1 -s -r -p "Press any key to continue..."
}

# Main loop
while true
do
    display_menu
    read -p "Enter your choice: " choice
    perform_action $choice
done
