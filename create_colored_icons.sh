#!/bin/bash

# Script para criar ícones coloridos em massa
cd "c:\wamp64\www\minecraft\assets\icons"

# Cores e seus códigos hex
declare -A colors=(
    ["white"]="#FFFFFF|#F0F0F0|#E0E0E0"
    ["orange"]="#FF8C00|#FFA500|#FFB84D"
    ["magenta"]="#FF00FF|#DA70D6|#FF69B4"
    ["light_blue"]="#87CEEB|#87CEFA|#B0E0E6"
    ["yellow"]="#FFD700|#FFFF00|#FFFFCC"
    ["lime"]="#00FF00|#7FFF00|#90EE90"
    ["pink"]="#FFC0CB|#FFB6C1|#FFD1DC"
    ["gray"]="#808080|#A9A9A9|#D3D3D3"
    ["light_gray"]="#D3D3D3|#DCDCDC|#E8E8E8"
    ["cyan"]="#00FFFF|#00CED1|#48D1CC"
    ["purple"]="#800080|#9370DB|#BA55D3"
    ["blue"]="#0000FF|#4169E1|#6495ED"
    ["brown"]="#8B4513|#A0522D|#CD853F"
    ["green"]="#008000|#228B22|#32CD32"
    ["red"]="#FF0000|#DC143C|#FF6347"
    ["black"]="#000000|#2F2F2F|#1C1C1C"
)

# Criar ícones de lã
for color in "${!colors[@]}"; do
    IFS='|' read -r c1 c2 c3 <<< "${colors[$color]}"
    cat > "${color}_wool.svg" << EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Lã ${color}">
  <rect fill="$c2" x="3" y="3" width="10" height="10"/>
  <rect fill="$c1" x="4" y="4" width="8" height="8"/>
  <rect fill="$c3" x="5" y="5" width="3" height="3"/>
  <rect fill="$c3" x="9" y="9" width="2" height="2"/>
</svg>
EOF
done

# Criar ícones de corante
for color in "${!colors[@]}"; do
    IFS='|' read -r c1 c2 c3 <<< "${colors[$color]}"
    cat > "${color}_dye.svg" << EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Corante ${color}">
  <rect fill="$c2" x="5" y="6" width="6" height="6"/>
  <rect fill="$c1" x="6" y="7" width="4" height="4"/>
  <rect fill="$c3" x="7" y="8" width="2" height="2"/>
  <polygon fill="$c2" points="8,3 6,6 10,6"/>
</svg>
EOF
done

# Criar ícones de vidro colorido
for color in "${!colors[@]}"; do
    IFS='|' read -r c1 c2 c3 <<< "${colors[$color]}"
    cat > "${color}_stained_glass.svg" << EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Vidro ${color}">
  <rect fill="$c2" x="3" y="3" width="10" height="10" opacity="0.7"/>
  <rect fill="$c1" x="4" y="4" width="8" height="8" opacity="0.5"/>
  <rect fill="#FFFFFF" x="5" y="5" width="2" height="2" opacity="0.8"/>
  <rect fill="#FFFFFF" x="10" y="9" width="1" height="1" opacity="0.8"/>
</svg>
EOF
done

# Criar ícones de tapete
for color in "${!colors[@]}"; do
    IFS='|' read -r c1 c2 c3 <<< "${colors[$color]}"
    cat > "${color}_carpet.svg" << EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Tapete ${color}">
  <rect fill="$c2" x="3" y="10" width="10" height="2"/>
  <rect fill="$c1" x="4" y="10" width="8" height="1"/>
  <rect fill="$c3" x="5" y="11" width="2" height="1"/>
  <rect fill="$c3" x="9" y="11" width="2" height="1"/>
</svg>
EOF
done

echo "Criados 64 ícones coloridos (lãs, corantes, vidros e tapetes)!"
