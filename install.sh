#!/bin/bash

# ASCII Banner Termux Installer
# Only works on Termux environment

# ANSI Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verify Termux
if [ ! -d "/data/data/com.termux/files/usr" ]; then
    echo -e "${RED}[X] Error: This installer only works on Termux${NC}"
    exit 1
fi

PREFIX="/data/data/com.termux/files/usr"
INSTALL_DIR="$PREFIX/share/asciibanner"
LAUNCHER="$PREFIX/bin/asciibanner"

# Update packages
echo -e "${YELLOW}[•] Updating packages...${NC}"
apt update -y && apt upgrade -y

# Install dependencies
echo -e "${YELLOW}[•] Installing dependencies...${NC}"
apt install -y git python libcaca

# Clean install
echo -e "${YELLOW}[•] Installing ASCII Banner...${NC}"
rm -rf "$INSTALL_DIR" 2>/dev/null
git clone https://github.com/Anon4You/ASCIIBanner.git "$INSTALL_DIR"

# Install fonts
echo -e "${YELLOW}[•] Installing fonts...${NC}"
git clone https://github.com/xero/figlet-fonts.git "$INSTALL_DIR/fonts"

# Create launcher
echo -e "${YELLOW}[•] Creating launcher...${NC}"
cat > "$LAUNCHER" <<EOF
#!/bin/bash
python $INSTALL_DIR/asciibanner.py "\$@"
EOF
chmod +x "$LAUNCHER"

# Verify
if [ -f "$LAUNCHER" ]; then
    echo -e "${GREEN}[✓] Installation complete!${NC}"
    echo ""
    echo "Try these commands:"
    echo -e "  ${YELLOW}asciibanner 'Hello Termux'${NC}"
    echo -e "  ${YELLOW}asciibanner -f slant --color red 'Cool Text'${NC}"
    echo -e "  ${YELLOW}asciibanner --list-fonts${NC}"
else
    echo -e "${RED}[X] Installation failed${NC}"
    exit 1
fi