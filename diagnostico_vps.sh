#!/bin/bash
# ============================================================================
# Script de Diagnóstico - Minecraft Crafts VPS
# ============================================================================

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║     DIAGNÓSTICO MINECRAFT CRAFTS - VPS                         ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Credenciais do banco
DB_USER="gvrGRTge"
DB_PASS="da5433DFW#@\$fv"
DB_NAME="minecraft_site"

# ============================================================================
echo "📋 1. INFORMAÇÕES DO SISTEMA"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Sistema Operacional: $(lsb_release -d | cut -f2)"
echo "Versão PHP: $(php -v | head -n 1)"
echo "Data/Hora: $(date)"
echo ""

# ============================================================================
echo "🔍 2. STATUS DO MARIADB/MYSQL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if sudo systemctl is-active --quiet mariadb; then
    echo -e "${GREEN}✓ MariaDB está rodando${NC}"
    sudo systemctl status mariadb | grep Active
elif sudo systemctl is-active --quiet mysql; then
    echo -e "${GREEN}✓ MySQL está rodando${NC}"
    sudo systemctl status mysql | grep Active
else
    echo -e "${RED}✗ MariaDB/MySQL NÃO está rodando!${NC}"
    echo "Execute: sudo systemctl start mariadb"
fi
echo ""

# ============================================================================
echo "🔍 3. VERIFICAR SE O BANCO EXISTE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
DB_EXISTS=$(mysql -u "$DB_USER" -p"$DB_PASS" -e "SHOW DATABASES LIKE '$DB_NAME';" 2>&1)
if echo "$DB_EXISTS" | grep -q "$DB_NAME"; then
    echo -e "${GREEN}✓ Banco '$DB_NAME' existe${NC}"
else
    echo -e "${RED}✗ Banco '$DB_NAME' NÃO existe!${NC}"
    echo "Você precisa importar o arquivo vps_deployment.sql"
fi
echo ""

# ============================================================================
echo "🔍 4. VERIFICAR TABELAS E DADOS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
TABLES=$(mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e "SHOW TABLES;" 2>&1)
if echo "$TABLES" | grep -q "items"; then
    echo -e "${GREEN}✓ Tabelas existem${NC}"
    echo ""
    echo "Contagem de registros:"
    mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e "
    SELECT 'items' as tabela, COUNT(*) as total FROM items
    UNION ALL
    SELECT 'recipes', COUNT(*) FROM recipes
    UNION ALL
    SELECT 'recipe_grid', COUNT(*) FROM recipe_grid
    UNION ALL
    SELECT 'ingredients_flat', COUNT(*) FROM ingredients_flat;
    " 2>&1

    # Verificar se tem os 257 itens
    ITEM_COUNT=$(mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -se "SELECT COUNT(*) FROM items;" 2>&1)
    if [ "$ITEM_COUNT" = "257" ]; then
        echo -e "${GREEN}✓ Banco completo com 257 itens${NC}"
    else
        echo -e "${YELLOW}⚠ Apenas $ITEM_COUNT itens encontrados (esperado: 257)${NC}"
    fi
else
    echo -e "${RED}✗ Tabelas NÃO existem!${NC}"
    echo "Execute: mysql -u $DB_USER -p$DB_PASS $DB_NAME < vps_deployment.sql"
fi
echo ""

# ============================================================================
echo "🔍 5. PERMISSÕES DO USUÁRIO"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Digite a senha do root do MySQL quando solicitado:"
mysql -u root -p -e "SHOW GRANTS FOR '$DB_USER'@'localhost';" 2>&1 | grep -i "GRANT"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Permissões configuradas${NC}"
else
    echo -e "${RED}✗ Erro ao verificar permissões${NC}"
fi
echo ""

# ============================================================================
echo "🔍 6. EXTENSÕES PHP (PDO)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if php -m | grep -q "pdo_mysql"; then
    echo -e "${GREEN}✓ PDO MySQL instalado${NC}"
    php -m | grep -i pdo
else
    echo -e "${RED}✗ PDO MySQL NÃO instalado!${NC}"
    echo "Execute: sudo apt install php-mysql && sudo systemctl restart apache2"
fi
echo ""

# ============================================================================
echo "🔍 7. VERIFICAR PORTA MYSQL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if sudo netstat -tlnp 2>/dev/null | grep -q ":3306"; then
    echo -e "${GREEN}✓ MySQL escutando na porta 3306${NC}"
    sudo netstat -tlnp | grep ":3306"
elif sudo ss -tlnp 2>/dev/null | grep -q ":3306"; then
    echo -e "${GREEN}✓ MySQL escutando na porta 3306${NC}"
    sudo ss -tlnp | grep ":3306"
else
    echo -e "${RED}✗ MySQL NÃO está escutando na porta 3306${NC}"
fi
echo ""

# ============================================================================
echo "🔍 8. VERIFICAR CONFIG.PHP"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
CONFIG_PATH="/var/www/html/api/config.php"
if [ -f "$CONFIG_PATH" ]; then
    echo -e "${GREEN}✓ Arquivo config.php encontrado${NC}"
    echo ""
    echo "Configurações:"
    grep "define('DB_" "$CONFIG_PATH" | sed "s/da5433DFW#@\$fv/********/g"
else
    # Tentar em outro caminho comum
    CONFIG_PATH="/home/*/public_html/api/config.php"
    if ls $CONFIG_PATH 2>/dev/null; then
        echo -e "${GREEN}✓ Arquivo config.php encontrado em public_html${NC}"
        grep "define('DB_" $CONFIG_PATH | sed "s/da5433DFW#@\$fv/********/g"
    else
        echo -e "${RED}✗ Arquivo config.php NÃO encontrado!${NC}"
        echo "Procure em: /var/www/html/api/config.php ou ~/public_html/api/config.php"
    fi
fi
echo ""

# ============================================================================
echo "🔍 9. ÚLTIMOS ERROS DO APACHE/NGINX"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ -f "/var/log/apache2/error.log" ]; then
    echo "Últimas 10 linhas do log do Apache:"
    sudo tail -10 /var/log/apache2/error.log
elif [ -f "/var/log/nginx/error.log" ]; then
    echo "Últimas 10 linhas do log do Nginx:"
    sudo tail -10 /var/log/nginx/error.log
else
    echo -e "${YELLOW}⚠ Logs não encontrados${NC}"
fi
echo ""

# ============================================================================
echo "🔍 10. TESTE DE CONEXÃO PHP"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Criando arquivo de teste..."
cat > /tmp/test_db.php << 'EOF'
<?php
$host = 'localhost';
$user = 'gvrGRTge';
$pass = 'da5433DFW#@$fv';
$db = 'minecraft_site';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass);
    echo "OK: Conexão bem-sucedida\n";
    $stmt = $pdo->query("SELECT COUNT(*) as total FROM items");
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo "OK: Total de itens = " . $result['total'] . "\n";
} catch (PDOException $e) {
    echo "ERRO: " . $e->getMessage() . "\n";
}
?>
EOF

php /tmp/test_db.php
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Teste de conexão concluído${NC}"
else
    echo -e "${RED}✗ Erro no teste de conexão${NC}"
fi
rm /tmp/test_db.php
echo ""

# ============================================================================
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                  RESUMO DO DIAGNÓSTICO                         ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "Se você viu erros acima, siga as instruções de cada seção."
echo "Para mais detalhes, consulte: VPS_DIAGNOSTIC.md"
echo ""
echo "Comandos úteis:"
echo "  - Ver logs completos: sudo tail -f /var/log/apache2/error.log"
echo "  - Reiniciar Apache: sudo systemctl restart apache2"
echo "  - Reiniciar MySQL: sudo systemctl restart mariadb"
echo "  - Importar banco: mysql -u $DB_USER -p'$DB_PASS' $DB_NAME < vps_deployment.sql"
echo ""
