# ASCII Banner Generator

![Python](https://img.shields.io/badge/python-3.7%2B-blue)
![License](https://img.shields.io/badge/license-BSD%203--Clause-blue)
![Platform](https://img.shields.io/badge/platform-Termux%2FLinux-lightgrey)

A feature-rich FIGlet-compatible ASCII art generator with color support and font previews, designed for Termux and Linux environments.

## 📥 Installation

### Method 1: One-line Install (Recommended)
```bash
curl -sL https://is.gd/asciibanner | bash
```

### Method 2: Alienkrishn repo APT Install
```bash
apt install asciibanner
```

## ✨ Features

- **Full ANSI Color Support**: 16 text colors + 16 background colors
- **Font Previews**: Preview any font before use
- **100+ Built-in Fonts**: All standard FIGlet fonts included
- **Smart Alignment**: Left, center, or right alignment
- **Terminal Aware**: Automatic width detection
- **File Output**: Save banners to text files

## 🚀 Quick Start

```bash
# Basic usage
asciibanner "Hello World"

# Colored text with specific font
asciibanner -f slant --color blue "Cool Banner"

# Preview available fonts
asciibanner --list-fonts
```

## 📚 Usage Examples

### Create Professional Banners
```bash
# Centered text with width limit
asciibanner -c -w 50 "Company Name"

# Multi-color alerts
asciibanner --color red --bg white "URGENT NOTICE"

# Pipe text through
echo "System Status: OK" | asciibanner -f block --color green
```

### Font Exploration
```bash
# Preview all font styles
for font in $(asciibanner --list-fonts); do
  echo "Font: $font"
  asciibanner --preview $font
done
```

## 📜 License

This project is licensed under the **BSD 3-Clause "New" or "Revised" License** - see the [LICENSE](LICENSE) file for complete details.

## 🤝 Contributing

We welcome contributions! Please read our:
- [Contribution Guidelines](CONTRIBUTING.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)


Developed by [Anon4You](https://github.com/Anon4You) • [Report Issues](https://github.com/Anon4You/ASCIIBanner/issues) • [Documentation](https://github.com/Anon4You/ASCIIBanner/wiki)

*"Transform your terminal into a canvas of ASCII art"*
