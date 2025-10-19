#!/bin/bash
# Script para criar ícones SVG em lote
cd /c/wamp64/www/minecraft/assets/icons

# Materiais base
cat > leather.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#A0522D" width="16" height="16"/><rect fill="#8B4513" x="2" y="2" width="12" height="12"/><rect fill="#CD853F" x="4" y="4" width="8" height="8"/></svg>
EOF

cat > wool.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#F5F5F5" width="16" height="16"/><rect fill="#E5E5E5" x="2" y="2" width="6" height="6"/><rect fill="#E5E5E5" x="8" y="8" width="6" height="6"/></svg>
EOF

cat > string.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#F5F5F5" x="7" y="2" width="2" height="12"/><rect fill="#E5E5E5" x="6" y="3" width="1" height="10"/><rect fill="#E5E5E5" x="9" y="3" width="1" height="10"/></svg>
EOF

cat > feather.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#F5F5F5" x="8" y="1" width="2" height="14"/><rect fill="#D3D3D3" x="6" y="3" width="2" height="8"/><rect fill="#D3D3D3" x="10" y="3" width="2" height="8"/><rect fill="#A9A9A9" x="4" y="5" width="2" height="4"/><rect fill="#A9A9A9" x="12" y="5" width="2" height="4"/></svg>
EOF

cat > flint.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#696969" x="4" y="4" width="8" height="8"/><rect fill="#808080" x="5" y="5" width="6" height="6"/><rect fill="#A9A9A9" x="6" y="6" width="4" height="4"/></svg>
EOF

cat > redstone.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#DC143C" x="4" y="8" width="8" height="4"/><rect fill="#FF0000" x="5" y="9" width="6" height="2"/><rect fill="#8B0000" x="6" y="7" width="4" height="1"/></svg>
EOF

cat > ink_sac.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#1A1A1A" x="4" y="4" width="8" height="8"/><rect fill="#2A2A2A" x="5" y="5" width="6" height="6"/><rect fill="#0A0A0A" x="6" y="6" width="4" height="4"/></svg>
EOF

cat > paper.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><rect fill="#FFFFFF" x="3" y="2" width="10" height="12"/><rect fill="#F5F5F5" x="4" y="3" width="8" height="10"/><rect fill="#E5E5E5" x="5" y="5" width="6" height="1"/><rect fill="#E5E5E5" x="5" y="7" width="6" height="1"/><rect fill="#E5E5E5" x="5" y="9" width="6" height="1"/></svg>
EOF

echo "Materiais criados!"
