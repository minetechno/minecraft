#!/bin/bash
cd "c:\wamp64\www\minecraft\assets\icons"

# Definir cores para cada tipo de madeira (planks|log_side|log_top)
declare -A wood_colors=(
    ["oak"]="#9D6B3B|#8B5A2B|#7A4A1B"
    ["spruce"]="#6B4423|#5A3A1A|#4A2A10"
    ["birch"]="#D7C185|#C7B175|#B7A165"
    ["jungle"]="#A0715A|#906050|#805040"
    ["acacia"]="#BA5D3B|#AA4D2B|#9A3D1B"
    ["dark_oak"]="#3D2817|#2D1807|#1D0800"
)

# Criar tábuas
for wood in "${!wood_colors[@]}"; do
    IFS='|' read -r planks log_side log_top <<< "${wood_colors[$wood]}"
    
    # Tábuas
    cat > "${wood}_planks.svg" << PLANKS
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Tábuas de ${wood}">
  <rect fill="$planks" x="3" y="3" width="10" height="10"/>
  <rect fill="$log_side" x="4" y="4" width="8" height="8"/>
  <!-- Linhas das tábuas -->
  <rect fill="$log_top" x="4" y="6" width="8" height="1"/>
  <rect fill="$log_top" x="4" y="9" width="8" height="1"/>
  <!-- Veios -->
  <rect fill="$log_top" x="5" y="5" width="1" height="1"/>
  <rect fill="$log_top" x="9" y="7" width="1" height="1"/>
  <rect fill="$log_top" x="7" y="10" width="1" height="1"/>
</svg>
PLANKS

    # Troncos
    cat > "${wood}_log.svg" << LOGS
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Tronco de ${wood}">
  <!-- Lateral do tronco -->
  <rect fill="$log_side" x="3" y="3" width="10" height="10"/>
  <rect fill="$planks" x="4" y="4" width="8" height="8"/>
  <!-- Linhas verticais da casca -->
  <rect fill="$log_top" x="5" y="4" width="1" height="8"/>
  <rect fill="$log_top" x="8" y="4" width="1" height="8"/>
  <rect fill="$log_top" x="10" y="4" width="1" height="8"/>
  <!-- Textura -->
  <rect fill="$log_top" x="6" y="5" width="1" height="2"/>
  <rect fill="$log_top" x="9" y="8" width="1" height="2"/>
</svg>
LOGS
done

echo "12 ícones de madeira criados (6 tábuas + 6 troncos)!"
