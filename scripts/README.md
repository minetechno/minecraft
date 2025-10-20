# Scripts de Validação e Geração de Receitas

Este diretório contém scripts PHP para validar e gerar receitas do Minecraft baseadas em dados oficiais.

## 📁 Arquivos

### `validate_recipes.php`
Script de validação que compara a **existência** de receitas no banco com os dados oficiais.

**Uso:**
```bash
php scripts/validate_recipes.php
```

**O que faz:**
- Carrega dados oficiais do Minecraft (versão 1.20)
- Compara receitas do banco com receitas oficiais
- Identifica receitas faltantes
- Detecta receitas que não deveriam existir
- Gera relatório completo de cobertura

**Saída:**
- Lista de itens faltando no banco
- Lista de receitas que deveriam existir mas não existem
- Lista de receitas incorretas (que não existem no Minecraft oficial)
- Estatísticas de cobertura

---

### `validate_recipe_accuracy.php` ⭐ **NOVO!**
Script de validação de **EXATIDÃO** que compara ingrediente por ingrediente, posição por posição.

**Uso:**
```bash
php scripts/validate_recipe_accuracy.php
```

**O que faz:**
- Valida CADA ingrediente de CADA receita
- Compara posicionamento na grid 3x3
- Diferencia receitas shaped vs shapeless
- Detecta ingredientes incorretos, faltantes ou em posição errada
- Gera relatório visual detalhado com grids

**Saída:**
- Lista de receitas incorretas com comparação visual
- Grid do banco vs Grid oficial lado a lado
- Taxa de precisão (% de receitas corretas)
- Lista de slugs incorretos para correção

**Resultado Atual:**
- ✅ **100% de precisão** (176 de 176 receitas corretas)

---

### `generate_missing_recipes.php`
Script gerador que cria SQL automaticamente para adicionar receitas faltantes.

**Uso:**
```bash
php scripts/generate_missing_recipes.php
```

**O que faz:**
- Identifica receitas que existem no Minecraft mas não no banco
- Valida se todos os ingredientes necessários existem no banco
- Gera SQL automaticamente com INSERT statements
- Suporta receitas shaped (com forma) e shapeless (sem forma)
- Cria arquivo `sql/generated_missing_recipes.sql`

**Aplicar as receitas geradas:**
```bash
mysql -u root minecraft_site < sql/generated_missing_recipes.sql
```

---

## 🔧 Requisitos

- PHP 8.0+
- MySQL/MariaDB com banco `minecraft_site`
- Arquivos de dados do Minecraft em `/data/`:
  - `minecraft_items.json`
  - `minecraft_recipes.json`

## 📊 Fonte de Dados

Os scripts utilizam dados oficiais do **PrismarineJS minecraft-data**:

- **Repositório:** https://github.com/PrismarineJS/minecraft-data
- **Versão do Minecraft:** 1.20 (Java Edition)
- **Formato:** JSON com IDs e estruturas oficiais

### Atualizar dados do Minecraft

Para baixar a versão mais recente dos dados:

```bash
cd data/
curl -O https://raw.githubusercontent.com/PrismarineJS/minecraft-data/master/data/pc/1.20/items.json
curl -O https://raw.githubusercontent.com/PrismarineJS/minecraft-data/master/data/pc/1.20/recipes.json
mv items.json minecraft_items.json
mv recipes.json minecraft_recipes.json
```

## 🎯 Fluxo de Trabalho Recomendado

1. **Validar receitas atuais:**
   ```bash
   php scripts/validate_recipes.php
   ```

2. **Gerar receitas faltantes:**
   ```bash
   php scripts/generate_missing_recipes.php
   ```

3. **Revisar o SQL gerado:**
   ```bash
   cat sql/generated_missing_recipes.sql
   ```

4. **Aplicar as receitas no banco:**
   ```bash
   mysql -u root minecraft_site < sql/generated_missing_recipes.sql
   ```

5. **Validar novamente para confirmar:**
   ```bash
   php scripts/validate_recipes.php
   ```

## 📈 Resultados da Versão 1.4.3

Após executar os scripts:

- ✅ **201 receitas** no banco (antes: 173)
- ✅ **188 receitas validadas** (93.5% de confiabilidade)
- ✅ **0 receitas incorretas** (antes: 2)
- ✅ **16 receitas faltantes** (antes: 46)
- ✅ **30 novas receitas** adicionadas automaticamente

## 🔍 Estrutura dos Dados

### Items (minecraft_items.json)
```json
{
  "id": 2,
  "name": "granite",
  "displayName": "Granite",
  "stackSize": 64
}
```

### Recipes (minecraft_recipes.json)
```json
{
  "3": [
    {
      "inShape": [
        [2, 2],
        [2, 2]
      ],
      "result": {
        "count": 4,
        "id": 3
      }
    }
  ]
}
```

**Tipos de receitas:**
- **Shaped:** Tem `inShape` (formato específico na grid 3x3)
- **Shapeless:** Tem `ingredients` (ordem não importa)

## 🚀 Benefícios da Automação

1. **Confiabilidade:** Receitas baseadas em dados oficiais
2. **Velocidade:** Gera 30+ receitas em segundos
3. **Precisão:** Valida automaticamente contra dados reais
4. **Manutenção:** Fácil atualizar para novas versões do Minecraft
5. **Consistência:** Elimina erros humanos de digitação

## ⚠️ Limitações

- Apenas receitas de crafting table são suportadas
- Receitas de smelting (forno) não são incluídas
- Algumas receitas podem ser ignoradas se ingredientes não existirem no banco
- Variações de receitas (múltiplas formas) usam apenas a primeira

## 🔄 Manutenção Futura

Para atualizar para uma nova versão do Minecraft:

1. Atualizar arquivos JSON para nova versão (ex: 1.21)
2. Executar `validate_recipes.php` para ver diferenças
3. Executar `generate_missing_recipes.php` para gerar novas receitas
4. Revisar e aplicar as mudanças

## 📝 Logs e Debug

Os scripts exibem saída formatada com:
- ✓ Sucesso
- ⚠ Avisos
- 📊 Estatísticas
- ❌ Erros

Para debug detalhado, examine o SQL gerado antes de aplicar.

---

**Versão:** 1.4.3
**Data:** 2025-10-20
**Autor:** Sistema Automatizado com PrismarineJS minecraft-data
