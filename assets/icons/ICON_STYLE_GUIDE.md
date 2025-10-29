# 🎨 Guia de Estilo para Ícones SVG - Minecraft Crafts

Este guia estabelece os padrões para criação e manutenção dos ícones SVG do projeto.

---

## 📐 ESPECIFICAÇÕES TÉCNICAS

### Formato e Estrutura

**Formato obrigatório:**
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Nome do Item">
  <!-- Comentários descritivos -->
  <rect fill="#HEXCODE" x="0" y="0" width="2" height="2"/>
  <!-- Mais elementos -->
</svg>
```

**Requisitos:**
- ✅ Namespace SVG: `xmlns="http://www.w3.org/2000/svg"`
- ✅ ViewBox fixo: `viewBox="0 0 16 16"` (grade 16x16 pixels)
- ✅ Acessibilidade: `role="img"` e `aria-label="Nome em Português"`
- ✅ Comentários explicativos em português
- ✅ Indentação de 2 espaços
- ✅ Uma quebra de linha antes de cada seção

---

## 🎨 ESTILO VISUAL

### Pixel Art 16x16

**Conceito:**
Todos os ícones usam estilo pixel art do Minecraft, com grid de 16x16 pixels.

**Técnica:**
- Use elementos `<rect>` para representar pixels
- Cada `<rect>` representa 1 ou mais pixels
- Blocos de 2x2 pixels são comuns para texturas

**Exemplo básico (Graveto):**
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Graveto">
  <!-- Cabo do graveto -->
  <rect fill="#8B4513" x="7" y="2" width="2" height="12"/>

  <!-- Sombreamento -->
  <rect fill="#654321" x="8" y="3" width="1" height="10"/>
</svg>
```

---

## 🌈 PALETA DE CORES

### Cores Principais do Minecraft

**Madeira:**
- Marrom escuro: `#654321`, `#8B4513`
- Marrom médio: `#A0522D`
- Marrom claro: `#CD853F`, `#DEB887`

**Pedra:**
- Cinza escuro: `#696969`, `#555555`
- Cinza médio: `#808080`, `#999999`
- Cinza claro: `#A9A9A9`, `#C0C0C0`

**Metais:**
- **Ferro:** `#C0C0C0`, `#D3D3D3`, `#A9A9A9`
- **Ouro:** `#FFD700`, `#FFA500`, `#DAA520`
- **Diamante:** `#5DECF5`, `#7FF4FF`, `#00CED1`

**Outros:**
- **Redstone:** `#DC143C`, `#FF0000`, `#8B0000`
- **Esmeralda:** `#50C878`, `#00FF7F`, `#3CB371`
- **Lápis-Lazúli:** `#1E90FF`, `#4169E1`, `#000080`
- **Couro:** `#A0522D`, `#8B4513`, `#CD853F`

### Regras de Cor

1. **Use 2-4 tons** da mesma cor para profundidade
2. **Tom mais claro** no centro ou topo (destaque)
3. **Tom mais escuro** nas bordas ou base (sombra)
4. **Evite gradientes** - use cores sólidas
5. **Seja fiel ao Minecraft** - consulte o jogo para cores corretas

---

## 📏 DIMENSÕES E GRID

### Sistema de Coordenadas

**Grid 16x16:**
```
   0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
 0 +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
...
15 +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
```

**Coordenadas:**
- `x="0"` = coluna mais à esquerda
- `y="0"` = linha superior
- `width` e `height` em pixels

**Centralização:**
- Centro horizontal: `x="7"` (para largura 2)
- Centro vertical: `y="7"` (para altura 2)
- Use `.5` para centralização precisa: `x="7.5"`

---

## 🛠️ TÉCNICAS DE DESENHO

### 1. Formas Simples (Materiais Base)

**Exemplo: Bloco Sólido**
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Bloco">
  <!-- Fundo -->
  <rect fill="#8B4513" width="16" height="16"/>

  <!-- Textura central -->
  <rect fill="#A0522D" x="2" y="2" width="12" height="12"/>

  <!-- Destaque -->
  <rect fill="#CD853F" x="4" y="4" width="8" height="8"/>
</svg>
```

### 2. Ferramentas (Formato Específico)

**Exemplo: Picareta**
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Picareta">
  <!-- Cabeça da picareta (3 blocos de material) -->
  <rect fill="#5DECF5" x="3" y="3" width="2" height="2"/>
  <rect fill="#5DECF5" x="5" y="3" width="2" height="2"/>
  <rect fill="#5DECF5" x="7" y="3" width="2" height="2"/>

  <!-- Cabo de madeira -->
  <rect fill="#8B4513" x="5" y="5" width="2" height="8"/>
</svg>
```

### 3. Sombreamento e Profundidade

**Técnica de 3 camadas:**
1. **Base** (tom médio) - preenche a forma toda
2. **Sombra** (tom escuro) - nas bordas inferiores/direitas
3. **Destaque** (tom claro) - no centro ou topo

```svg
<!-- Base -->
<rect fill="#808080" x="4" y="4" width="8" height="8"/>

<!-- Sombra -->
<rect fill="#696969" x="4" y="10" width="8" height="2"/>

<!-- Destaque -->
<rect fill="#A9A9A9" x="6" y="6" width="4" height="4"/>
```

### 4. Texturas

**Padrão quadriculado (lã, tapete):**
```svg
<!-- Fundo -->
<rect fill="#F5F5F5" width="16" height="16"/>

<!-- Quadrados alternados -->
<rect fill="#E5E5E5" x="2" y="2" width="6" height="6"/>
<rect fill="#E5E5E5" x="8" y="8" width="6" height="6"/>
```

**Linhas verticais (cerca, portão):**
```svg
<rect fill="#8B4513" x="3" y="0" width="2" height="16"/>
<rect fill="#8B4513" x="7" y="0" width="2" height="16"/>
<rect fill="#8B4513" x="11" y="0" width="2" height="16"/>
```

---

## 📁 CONVENÇÕES DE NOMENCLATURA

### Nome dos Arquivos

**Formato:** `nome_do_item.svg` (snake_case, minúsculas)

**Exemplos corretos:**
- ✅ `diamond_pickaxe.svg`
- ✅ `golden_sword.svg`
- ✅ `oak_planks.svg`
- ✅ `red_wool.svg`

**Exemplos incorretos:**
- ❌ `DiamondPickaxe.svg` (PascalCase)
- ❌ `diamond-pickaxe.svg` (kebab-case)
- ❌ `Diamond_Pickaxe.svg` (maiúsculas)

### Aria-Label

**Formato:** Nome em português, capitalizado

**Exemplos:**
- ✅ `aria-label="Picareta de Diamante"`
- ✅ `aria-label="Espada de Ouro"`
- ✅ `aria-label="Tábuas de Carvalho"`
- ✅ `aria-label="Lã Vermelha"`

---

## ✅ CHECKLIST DE QUALIDADE

Antes de salvar um ícone novo, verifique:

- [ ] ViewBox é `viewBox="0 0 16 16"`
- [ ] Tem `role="img"` e `aria-label` em português
- [ ] Usa apenas elementos `<rect>` (pixel art)
- [ ] Cores fiéis ao Minecraft
- [ ] Arquivo tem no máximo 2 KB
- [ ] Código está indentado (2 espaços)
- [ ] Tem comentários descritivos
- [ ] Nome do arquivo em snake_case
- [ ] Testado no navegador (renderiza corretamente)
- [ ] Consistente com ícones similares

---

## 🚫 O QUE NÃO FAZER

**❌ Não use:**
- Gradientes (`<linearGradient>`, `<radialGradient>`)
- Círculos ou curvas (`<circle>`, `<path>` com curvas)
- Textos (`<text>`)
- Imagens externas (`<image>`)
- JavaScript ou CSS inline complexo
- Transformações complexas (`<transform>`)

**❌ Evite:**
- Arquivos maiores que 2 KB
- Mais de 20 elementos `<rect>` (simplificar se necessário)
- Cores não relacionadas ao Minecraft
- Quebrar o padrão 16x16

---

## 📊 EXEMPLOS DE REFERÊNCIA

### Exemplo 1: Item Simples (Diamante)

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Diamante">
  <!-- Topo do diamante -->
  <rect fill="#5DECF5" x="7" y="2" width="2" height="2"/>

  <!-- Corpo brilhante -->
  <rect fill="#7FF4FF" x="7" y="4" width="2" height="2"/>
  <rect fill="#5DECF5" x="6" y="6" width="4" height="2"/>
  <rect fill="#7FF4FF" x="6" y="8" width="4" height="2"/>

  <!-- Base -->
  <rect fill="#00CED1" x="7" y="10" width="2" height="2"/>
</svg>
```

### Exemplo 2: Ferramenta Completa (Espada de Diamante)

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Espada de Diamante">
  <!-- Ponta da lâmina -->
  <rect fill="#7FF4FF" x="7" y="1" width="2" height="2"/>

  <!-- Lâmina (4 segmentos) -->
  <rect fill="#5DECF5" x="7" y="3" width="2" height="2"/>
  <rect fill="#7FF4FF" x="7" y="5" width="2" height="2"/>
  <rect fill="#5DECF5" x="7" y="7" width="2" height="2"/>
  <rect fill="#00CED1" x="7" y="9" width="2" height="2"/>

  <!-- Guarda -->
  <rect fill="#8B4513" x="5" y="10" width="6" height="2"/>

  <!-- Cabo -->
  <rect fill="#654321" x="7" y="12" width="2" height="3"/>
</svg>
```

### Exemplo 3: Bloco Decorativo (Mesa de Trabalho)

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" role="img" aria-label="Mesa de Trabalho">
  <!-- Fundo de madeira -->
  <rect fill="#8B4513" width="16" height="16"/>

  <!-- Grade de ferramentas (topo) -->
  <rect fill="#654321" x="2" y="2" width="5" height="5"/>
  <rect fill="#A0522D" x="3" y="3" width="3" height="3"/>

  <!-- Lateral com textura de madeira -->
  <rect fill="#654321" x="2" y="9" width="12" height="2"/>
  <rect fill="#A0522D" x="2" y="11" width="12" height="3"/>
</svg>
```

---

## 🔄 PROCESSO DE CRIAÇÃO

### Passo a Passo

**1. Pesquisa (5 min)**
- Consulte o sprite sheet do Minecraft oficial
- Veja como o item aparece no jogo
- Identifique as cores exatas

**2. Planejamento (5 min)**
- Esboce no papel grid 16x16
- Marque quais pixels serão preenchidos
- Defina a paleta de cores (2-4 tons)

**3. Código (15 min)**
- Comece com o template básico
- Adicione elementos `<rect>` um por um
- Teste frequentemente no navegador

**4. Refinamento (10 min)**
- Adicione sombreamento
- Ajuste cores para profundidade
- Adicione comentários descritivos

**5. Validação (5 min)**
- Use o script `validate_icons.ps1`
- Teste acessibilidade
- Compare com ícones similares

**6. Otimização (5 min)**
- Remova elementos redundantes
- Simplifique quando possível
- Verifique tamanho do arquivo

**Total:** ~45 minutos por ícone complexo

---

## 🛠️ FERRAMENTAS ÚTEIS

### Editores SVG
- **VS Code** com extensão SVG Preview
- **Inkscape** (grátis) - para design visual
- **Figma** (web) - para planejamento

### Ferramentas Online
- **SVGOMG** (https://jakearchibald.github.io/svgomg/) - otimização
- **SVG Path Visualizer** - debug de paths
- **ColorHexa** - conversão de cores

### Scripts do Projeto
- `validate_icons.ps1` - validação automática
- Nenhum script de geração automática (criação manual preserva qualidade)

---

## 📞 SUPORTE

Se tiver dúvidas ao criar um novo ícone:

1. ✅ Consulte ícones similares existentes
2. ✅ Verifique exemplos neste guia
3. ✅ Use o script de validação
4. ✅ Teste no navegador antes de finalizar

---

## 📝 HISTÓRICO DE ATUALIZAÇÕES

| Data | Versão | Mudanças |
|------|--------|----------|
| 2025-10-21 | 1.0 | Guia inicial criado |
| 2025-10-21 | 1.1 | Adicionados 6 ícones reformatados |

---

**Mantenha este guia atualizado sempre que novos padrões forem estabelecidos!**

🎮 **Bom trabalho criando ícones incríveis para o Minecraft Crafts!** ✨
