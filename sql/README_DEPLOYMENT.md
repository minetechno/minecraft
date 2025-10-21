# 🎮 Minecraft Crafts - Deployment para VPS

## 📋 Resumo

Este guia completo ajudará você a configurar o banco de dados **minecraft_site** na sua VPS com MariaDB.

### Conteúdo do Banco de Dados

- ✅ **257 itens** (materiais, ferramentas, armaduras, blocos, alimentos, etc)
- ✅ **190 receitas** completas com grid 3x3
- ✅ **1.064 entradas de grid** (posicionamento dos itens nas receitas)
- ✅ **314 relacionamentos** de ingredientes

---

## 🚀 Passo a Passo - Deployment

### 1️⃣ Pré-requisitos

Sua VPS já deve ter:
- ✅ MariaDB ou MySQL instalado
- ✅ Acesso SSH à VPS
- ✅ Acesso root ao MariaDB

### 2️⃣ Upload do Arquivo SQL

**Opção A - Upload via SCP:**
```bash
# No seu computador local, execute:
scp sql/vps_deployment.sql usuario@ip-da-vps:/tmp/
```

**Opção B - Upload via FTP/SFTP:**
- Use FileZilla, WinSCP ou similar
- Faça upload do arquivo `vps_deployment.sql` para `/tmp/` na VPS

### 3️⃣ Executar o Deployment

**Conecte via SSH à sua VPS:**
```bash
ssh usuario@ip-da-vps
```

**Execute o script SQL:**
```bash
# Opção 1: Via comando direto
mysql -u root -p < /tmp/vps_deployment.sql

# Opção 2: Via console interativo
mysql -u root -p
# Dentro do MySQL:
source /tmp/vps_deployment.sql
```

---

## 👤 (OPCIONAL) Criar Usuário Específico

**É recomendado criar um usuário dedicado ao invés de usar root:**

```sql
-- Conecte ao MariaDB como root
mysql -u root -p

-- Crie o usuário (ajuste senha e host)
CREATE USER IF NOT EXISTS 'gvrGRTge'@'localhost'
  IDENTIFIED BY 'da5433DFW#@$fv';

-- Conceda permissões apenas ao banco minecraft_site
GRANT ALL PRIVILEGES ON minecraft_site.*
  TO 'gvrGRTge'@'localhost';

-- Aplique as mudanças
FLUSH PRIVILEGES;

-- Verifique
SHOW GRANTS FOR 'gvrGRTge'@'localhost';
```

### Configurações de Host:

| Host | Descrição | Recomendação |
|------|-----------|--------------|
| `'localhost'` | Acesso apenas local | ✅ Mais seguro |
| `'%'` | Acesso de qualquer IP | ⚠️ Menos seguro |
| `'192.168.1.%'` | Acesso de uma rede específica | ✅ Seguro |

---

## ✅ Verificação Pós-Instalação

```sql
USE minecraft_site;

-- Verificar quantidade de itens (deve retornar 257)
SELECT COUNT(*) as total_items FROM items;

-- Verificar quantidade de receitas (deve retornar 190)
SELECT COUNT(*) as total_recipes FROM recipes;

-- Verificar quantidade de entradas no grid (deve retornar 1064)
SELECT COUNT(*) as total_grid_entries FROM recipe_grid;

-- Verificar quantidade de ingredientes (deve retornar 314)
SELECT COUNT(*) as total_ingredients FROM ingredients_flat;

-- Listar algumas receitas como exemplo
SELECT r.id, i.name as item_name, i.slug
FROM recipes r
INNER JOIN items i ON r.item_id = i.id
LIMIT 10;

-- Ver estrutura das tabelas
SHOW TABLES;
DESCRIBE items;
DESCRIBE recipes;
DESCRIBE recipe_grid;
DESCRIBE ingredients_flat;
```

### Resultados Esperados:

```
total_items: 257
total_recipes: 190
total_grid_entries: 1064
total_ingredients: 314
```

---

## 🔌 Configuração da Aplicação

### PHP (PDO)
```php
<?php
try {
    $pdo = new PDO(
        'mysql:host=localhost;dbname=minecraft_site;charset=utf8mb4',
        'minecraft_user',
        'sua_senha',
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false
        ]
    );
    echo "Conexão bem-sucedida!";
} catch (PDOException $e) {
    die("Erro de conexão: " . $e->getMessage());
}
?>
```

### PHP (MySQLi)
```php
<?php
$mysqli = new mysqli(
    'localhost',
    'minecraft_user',
    'sua_senha',
    'minecraft_site'
);

if ($mysqli->connect_error) {
    die("Erro de conexão: " . $mysqli->connect_error);
}

$mysqli->set_charset('utf8mb4');
echo "Conexão bem-sucedida!";
?>
```

### Node.js (mysql2)
```javascript
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'minecraft_user',
    password: 'sua_senha',
    database: 'minecraft_site',
    charset: 'utf8mb4',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Testar conexão
pool.query('SELECT 1')
    .then(() => console.log('Conexão bem-sucedida!'))
    .catch(err => console.error('Erro:', err));
```

### Python (mysql-connector)
```python
import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='minecraft_user',
    password='sua_senha',
    database='minecraft_site',
    charset='utf8mb4'
)

cursor = conn.cursor()
cursor.execute("SELECT COUNT(*) FROM items")
result = cursor.fetchone()
print(f"Total de itens: {result[0]}")

conn.close()
```

---

## 🔒 Segurança

### 1. Firewall do MariaDB

**Permitir acesso apenas local (recomendado):**
```bash
# Edite o arquivo de configuração do MariaDB
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf

# Certifique-se que esta linha está configurada:
bind-address = 127.0.0.1

# Reinicie o MariaDB
sudo systemctl restart mariadb
```

**Permitir acesso remoto (use com cuidado):**
```bash
# Edite o arquivo de configuração
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf

# Altere para:
bind-address = 0.0.0.0

# Configure o firewall (Ubuntu/Debian)
sudo ufw allow 3306/tcp

# Reinicie o MariaDB
sudo systemctl restart mariadb
```

### 2. Senhas Fortes

Use senhas fortes com:
- Mínimo 12 caracteres
- Letras maiúsculas e minúsculas
- Números
- Caracteres especiais

**Exemplo de geração de senha forte:**
```bash
openssl rand -base64 16
```

---

## 💾 Backup

### Backup Manual
```bash
# Backup completo do banco
mysqldump -u root -p minecraft_site > backup_minecraft_$(date +%Y%m%d_%H%M%S).sql

# Backup compactado
mysqldump -u root -p minecraft_site | gzip > backup_minecraft_$(date +%Y%m%d_%H%M%S).sql.gz
```

### Backup Automático (Cron)
```bash
# Edite o crontab
crontab -e

# Adicione linha para backup diário às 3h da manhã
0 3 * * * mysqldump -u root -p'SUA_SENHA' minecraft_site | gzip > /backups/minecraft_$(date +\%Y\%m\%d).sql.gz

# Criar diretório de backups
mkdir -p /backups
```

### Restaurar Backup
```bash
# De arquivo SQL normal
mysql -u root -p minecraft_site < backup_minecraft_20251021.sql

# De arquivo compactado
gunzip < backup_minecraft_20251021.sql.gz | mysql -u root -p minecraft_site
```

---

## 🔧 Troubleshooting

### Problema: Não consegue conectar ao MariaDB

**Solução 1: Verifique se o serviço está rodando**
```bash
sudo systemctl status mariadb

# Se não estiver rodando, inicie
sudo systemctl start mariadb

# Habilite para iniciar no boot
sudo systemctl enable mariadb
```

**Solução 2: Verifique os logs**
```bash
sudo tail -f /var/log/mysql/error.log
```

### Problema: Erro de permissão ao executar o script

**Solução: Verifique permissões do usuário**
```sql
-- Conecte como root
mysql -u root -p

-- Veja as permissões atuais
SHOW GRANTS FOR 'minecraft_user'@'localhost';

-- Se necessário, recrie as permissões
DROP USER 'minecraft_user'@'localhost';
CREATE USER 'minecraft_user'@'localhost' IDENTIFIED BY 'senha';
GRANT ALL PRIVILEGES ON minecraft_site.* TO 'minecraft_user'@'localhost';
FLUSH PRIVILEGES;
```

### Problema: Charset errado (caracteres estranhos)

**Solução: Verifique e corrija charset**
```sql
-- Verifique charset atual
SHOW VARIABLES LIKE 'character_set%';

-- Configure para UTF8MB4
SET NAMES utf8mb4;

-- Verifique charset do banco
SELECT default_character_set_name, default_collation_name
FROM information_schema.SCHEMATA
WHERE schema_name = 'minecraft_site';

-- Se necessário, altere
ALTER DATABASE minecraft_site
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
```

### Problema: Conexão lenta

**Solução: Otimize configurações do MariaDB**
```bash
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf

# Adicione/ajuste:
[mysqld]
max_connections = 100
innodb_buffer_pool_size = 256M
innodb_log_file_size = 64M

# Reinicie
sudo systemctl restart mariadb
```

---

## 📊 Estrutura do Banco

### Tabela: `items`
Armazena todos os itens do jogo (materiais, ferramentas, armas, blocos, etc).

| Campo | Tipo | Descrição |
|-------|------|-----------|
| id | INT (PK) | ID único do item |
| name | VARCHAR(100) | Nome do item em português |
| slug | VARCHAR(120) | Nome único do item (URL-friendly) |
| description | TEXT | Descrição do item |
| icon | VARCHAR(200) | Nome do arquivo do ícone |
| category | VARCHAR(50) | Categoria (material, tool, weapon, etc) |
| created_at | TIMESTAMP | Data de criação |

### Tabela: `recipes`
Vincula uma receita a um item craftável.

| Campo | Tipo | Descrição |
|-------|------|-----------|
| id | INT (PK) | ID único da receita |
| item_id | INT (FK) | ID do item que será produzido |
| created_at | TIMESTAMP | Data de criação |

### Tabela: `recipe_grid`
Define a grade 3x3 de crafting (posição exata de cada ingrediente).

| Campo | Tipo | Descrição |
|-------|------|-----------|
| id | INT (PK) | ID único da entrada |
| recipe_id | INT (FK) | ID da receita |
| row | TINYINT | Linha (0-2) |
| col | TINYINT | Coluna (0-2) |
| ingredient_item_id | INT (FK) | ID do item ingrediente (NULL = vazio) |
| quantity | TINYINT | Quantidade (sempre 1 por posição) |

### Tabela: `ingredients_flat`
Lista consolidada de ingredientes por receita (totais).

| Campo | Tipo | Descrição |
|-------|------|-----------|
| id | INT (PK) | ID único |
| recipe_id | INT (FK) | ID da receita |
| ingredient_item_id | INT (FK) | ID do item ingrediente |
| quantity | INT | Quantidade total necessária |

---

## 🎯 Exemplos de Consultas Úteis

### Buscar item por slug
```sql
SELECT * FROM items WHERE slug = 'diamond_pickaxe';
```

### Buscar receita de um item
```sql
SELECT r.id as recipe_id, i.name, i.slug
FROM recipes r
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'diamond_sword';
```

### Buscar ingredientes de uma receita (totais)
```sql
SELECT i.name, i.slug, ing.quantity
FROM ingredients_flat ing
INNER JOIN items i ON ing.ingredient_item_id = i.id
WHERE ing.recipe_id = 1;
```

### Buscar grid completo de uma receita
```sql
SELECT
    rg.row,
    rg.col,
    i.name as ingredient_name,
    i.slug
FROM recipe_grid rg
LEFT JOIN items i ON rg.ingredient_item_id = i.id
WHERE rg.recipe_id = 1
ORDER BY rg.row, rg.col;
```

### Listar todas as receitas com seus itens
```sql
SELECT r.id, i.name as resultado, i.category
FROM recipes r
INNER JOIN items i ON r.item_id = i.id
ORDER BY i.category, i.name;
```

### Contar receitas por categoria
```sql
SELECT i.category, COUNT(*) as total
FROM recipes r
INNER JOIN items i ON r.item_id = i.id
GROUP BY i.category
ORDER BY total DESC;
```

---

## 📞 Suporte

Se tiver problemas:

1. ✅ Verifique se o MariaDB está rodando
2. ✅ Verifique os logs de erro
3. ✅ Verifique permissões do usuário
4. ✅ Teste a conexão com `mysql -u usuario -p`
5. ✅ Consulte este README

---

## 📝 Notas Finais

- ✅ O banco usa **UTF8MB4** para suporte completo a Unicode
- ✅ Todas as tabelas usam **InnoDB** com integridade referencial
- ✅ As foreign keys garantem que não haverá dados órfãos
- ✅ Os índices otimizam as consultas mais comuns
- ✅ O AUTO_INCREMENT está configurado corretamente

**Bom deployment! 🚀**
