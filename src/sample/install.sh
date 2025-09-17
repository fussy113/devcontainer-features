#!/bin/sh
set -e

TEXT=${TEXT:-undefined}

cat > /usr/local/bin/sample \
<< EOF
#!/bin/sh
RED='\033[0;91m'
NC='\033[0m' # No Color
echo "\${RED}${TEXT}"
EOF

chmod +x /usr/local/bin/sample
