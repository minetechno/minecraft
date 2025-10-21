# 🔧 Diagnóstico VPS - Erro de Conexão com Banco

## ⚠️ Problema Identificado
- **Site**: https://madecraft.site/home/
- **Erro**: API retornando HTTP 500
- **Causa provável**: Falha na conexão com o banco de dados MariaDB

---

## 🔍 PASSO 1: Verificar se o MariaDB está rodando

```bash
# Conecte via SSH na sua VPS
ssh usuario@madecraft.site

# Verifique o status do MariaDB
sudo systemctl status mariadb
```

**Resultado esperado:** `Active: active (running)`

**Se estiver parado:**
```bash
# Inicie o MariaDB
sudo systemctl start mariadb

# Habilite para iniciar no boot
sudo systemctl enable mariadb
```

---

## 🔍 PASSO 2: Verificar logs de erro do MariaDB

```bash
# Ver últimas linhas do log de erro
sudo tail -50 /var/log/mysql/error.log

# OU (dependendo da instalação)
sudo tail -50 /var/log/mariadb/mariadb.log
```

---

## 🔍 PASSO 3: Testar conexão com o banco

```bash
# Tente conectar com o usuário que você criou
mysql -u gvrGRTge -p

# Quando pedir a senha, digite: da5433DFW#@$fv
```

**Se conectar com sucesso:**
```sql
-- Verifique se o banco existe
SHOW DATABASES;

-- Use o banco
USE minecraft_site;

-- Verifique as tabelas
SHOW TABLES;

-- Conte os itens
SELECT COUNT(*) FROM items;

-- Saia
exit;
```

---

## 🔍 PASSO 4: Verificar se o banco foi importado

```bash
# Verifique se o arquivo SQL está na VPS
ls -lh ~/vps_deployment.sql

# Se existir, verifique se foi executado corretamente
mysql -u gvrGRTge -p -e "USE minecraft_site; SELECT COUNT(*) as total_items FROM items; SELECT COUNT(*) as total_recipes FROM recipes;"
# Senha: da5433DFW#@$fv
```

**Resultado esperado:**
- `total_items: 257`
- `total_recipes: 190`

**Se retornar erro "Table doesn't exist":**
```bash
# O banco não foi importado! Execute:
mysql -u gvrGRTge -p minecraft_site < ~/vps_deployment.sql
# Senha: da5433DFW#@$fv
```

---

## 🔍 PASSO 5: Verificar permissões do usuário MySQL

```bash
mysql -u root -p
```

Dentro do MySQL:
```sql
-- Veja as permissões do usuário
SHOW GRANTS FOR 'gvrGRTge'@'localhost';

-- Deve mostrar algo como:
-- GRANT ALL PRIVILEGES ON `minecraft_site`.* TO `gvrGRTge`@`localhost`

-- Se não tiver permissões, execute:
GRANT ALL PRIVILEGES ON minecraft_site.* TO 'gvrGRTge'@'localhost';
FLUSH PRIVILEGES;

exit;
```

---

## 🔍 PASSO 6: Verificar arquivo config.php na VPS

```bash
# Vá até o diretório da aplicação
cd /var/www/html
# OU
cd /home/usuario/public_html

# Verifique o config.php
cat api/config.php
```

**Verifique se está assim:**
```php
define('DB_HOST', 'localhost');
define('DB_USER', 'gvrGRTge');
define('DB_PASS', 'da5433DFW#@$fv');
define('DB_NAME', 'minecraft_site');
define('DB_CHARSET', 'utf8mb4');
```

**Se estiver diferente, edite:**
```bash
nano api/config.php
# Ou use vim:
vim api/config.php
```

---

## 🔍 PASSO 7: Verificar logs do PHP/Apache

```bash
# Logs do Apache (onde os erros 500 aparecem)
sudo tail -50 /var/log/apache2/error.log

# OU se estiver usando Nginx:
sudo tail -50 /var/log/nginx/error.log

# Logs do PHP
sudo tail -50 /var/log/php*.log
```

---

## 🔍 PASSO 8: Testar conexão PHP com MySQL

Crie um arquivo de teste:

```bash
cd /var/www/html
# OU
cd /home/usuario/public_html

# Crie arquivo de teste
cat > test_db.php << 'EOF'
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

echo "<h1>Teste de Conexão MySQL</h1>";

$host = 'localhost';
$user = 'gvrGRTge';
$pass = 'da5433DFW#@$fv';
$db = 'minecraft_site';

try {
    $pdo = new PDO(
        "mysql:host=$host;dbname=$db;charset=utf8mb4",
        $user,
        $pass,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );

    echo "<p style='color:green'>✓ Conexão bem-sucedida!</p>";

    // Testa query
    $stmt = $pdo->query("SELECT COUNT(*) as total FROM items");
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    echo "<p style='color:green'>✓ Total de itens: " . $result['total'] . "</p>";

} catch (PDOException $e) {
    echo "<p style='color:red'>✗ Erro: " . $e->getMessage() . "</p>";
}
?>
EOF
```

**Acesse no navegador:**
```
https://madecraft.site/test_db.php
```

---

## 🔍 PASSO 9: Verificar extensão PDO do PHP

```bash
# Verifique se o PDO está instalado
php -m | grep -i pdo

# Deve mostrar:
# pdo_mysql
# PDO

# Se NÃO aparecer, instale:
sudo apt update
sudo apt install php-mysql php-pdo
sudo systemctl restart apache2
# OU para Nginx:
sudo systemctl restart php8.1-fpm
```

---

## 🔍 PASSO 10: Verificar firewall do MySQL

```bash
# Verifique se o MySQL está ouvindo na porta 3306
sudo netstat -tlnp | grep 3306

# Ou use:
sudo ss -tlnp | grep 3306

# Resultado esperado:
# tcp  0  0  127.0.0.1:3306  0.0.0.0:*  LISTEN  1234/mysqld
```

---

## 📋 SCRIPT DE DIAGNÓSTICO RÁPIDO

Execute este script completo de uma vez:

```bash
#!/bin/bash
echo "=== DIAGNÓSTICO MINECRAFT CRAFTS ==="
echo ""

echo "1. Status do MariaDB:"
sudo systemctl status mariadb | grep Active
echo ""

echo "2. Verificar se o banco existe:"
mysql -u gvrGRTge -p'da5433DFW#@$fv' -e "SHOW DATABASES LIKE 'minecraft_site';"
echo ""

echo "3. Contar itens no banco:"
mysql -u gvrGRTge -p'da5433DFW#@$fv' minecraft_site -e "SELECT COUNT(*) as total_items FROM items; SELECT COUNT(*) as total_recipes FROM recipes;" 2>&1
echo ""

echo "4. Verificar permissões:"
mysql -u root -p -e "SHOW GRANTS FOR 'gvrGRTge'@'localhost';"
echo ""

echo "5. Extensões PHP instaladas:"
php -m | grep -i pdo
echo ""

echo "6. MySQL escutando:"
sudo netstat -tlnp | grep 3306
echo ""

echo "7. Últimos erros do Apache:"
sudo tail -10 /var/log/apache2/error.log
echo ""

echo "=== FIM DO DIAGNÓSTICO ==="
```

**Salve como arquivo e execute:**
```bash
nano diagnostico.sh
# Cole o script acima
# Salve com Ctrl+O, Enter, Ctrl+X

chmod +x diagnostico.sh
./diagnostico.sh
```

---

## ✅ SOLUÇÃO MAIS COMUM

**90% dos casos o problema é um destes:**

### 1️⃣ Banco não foi importado
```bash
mysql -u gvrGRTge -p'da5433DFW#@$fv' minecraft_site < vps_deployment.sql
```

### 2️⃣ Extensão PDO não instalada
```bash
sudo apt install php-mysql
sudo systemctl restart apache2
```

### 3️⃣ Permissões erradas do usuário
```bash
mysql -u root -p
GRANT ALL PRIVILEGES ON minecraft_site.* TO 'gvrGRTge'@'localhost';
FLUSH PRIVILEGES;
exit;
```

### 4️⃣ Config.php com dados errados
```bash
nano /var/www/html/api/config.php
# Verifique: DB_HOST, DB_USER, DB_PASS, DB_NAME
```

---

## 📞 DEPOIS DE EXECUTAR

Depois de executar os comandos, me envie:

1. ✅ O output do **PASSO 3** (teste de conexão manual)
2. ✅ O output do **PASSO 4** (count de itens)
3. ✅ O output do **PASSO 8** (acesso ao test_db.php)
4. ✅ O output do **PASSO 7** (últimas linhas do log de erro)

Com essas informações eu te dou a solução exata! 🎯
