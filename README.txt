================================================================================
                    MINECRAFT CRAFTS - GUIA DE INSTALAÇÃO
================================================================================

DESCRIÇÃO
---------
Site completo para visualizar receitas de crafting do Minecraft com grade
visual 3x3. Desenvolvido com HTML5, CSS3, JavaScript (vanilla) e PHP como
API para ler dados do MariaDB.

REQUISITOS
----------
- WAMP Server (Windows + Apache + MySQL/MariaDB + PHP 8+)
- Navegador moderno com suporte a ES6 Modules
- MariaDB/MySQL rodando no WAMP

ESTRUTURA DO PROJETO
--------------------
minecraft/
  ├── home/index.html          → Página principal com grid de itens
  ├── craft/index.html         → Página de detalhes do craft
  ├── api/                     → Endpoints PHP da API
  │   ├── config.php           → Configurações (DB, BASE_PATH)
  │   ├── db.php               → Conexão com banco de dados
  │   ├── items.php            → GET lista de itens craftáveis
  │   └── recipe.php           → GET receita por ID
  ├── css/style.css            → Estilos com tema Minecraft
  ├── js/                      → Scripts JavaScript
  │   ├── utils/basepath.js    → Helpers de URL
  │   ├── home.js              → Lógica da home
  │   └── craft.js             → Lógica da página craft
  ├── partials/                → Componentes HTML reutilizáveis
  │   ├── header.html          → Cabeçalho
  │   └── footer.html          → Rodapé
  ├── assets/                  → Assets estáticos
  │   ├── icons/               → 14 ícones SVG pixel art
  │   └── fonts/pixel.woff     → Fonte pixel para títulos
  ├── sql/                     → Scripts de banco de dados
  │   ├── schema.sql           → Estrutura das tabelas
  │   └── seed.sql             → Dados iniciais (6 crafts)
  ├── index.html               → Redireciona para /home/
  └── README.txt               → Este arquivo

INSTRUÇÕES DE INSTALAÇÃO
-------------------------

1. COPIAR ARQUIVOS
   - Copie toda a pasta "minecraft" para: C:\wamp64\www\
   - O caminho completo deve ser: C:\wamp64\www\minecraft\

2. INICIAR WAMP
   - Inicie o WAMP Server
   - Certifique-se de que o ícone do WAMP está VERDE (todos os serviços rodando)
   - Se estiver LARANJA ou VERMELHO, verifique os logs de erro

3. CRIAR BANCO DE DADOS
   - Acesse o phpMyAdmin: http://localhost/phpmyadmin
   - Clique em "Novo" no menu lateral esquerdo
   - Nome do banco: minecraft_site
   - Collation: utf8mb4_unicode_ci
   - Clique em "Criar"

4. IMPORTAR ESTRUTURA DO BANCO
   - Com o banco "minecraft_site" selecionado
   - Clique na aba "Importar"
   - Clique em "Escolher arquivo"
   - Navegue até: C:\wamp64\www\minecraft\sql\schema.sql
   - Clique em "Executar"
   - Aguarde a mensagem de sucesso

5. IMPORTAR DADOS INICIAIS
   - Ainda na aba "Importar"
   - Clique em "Escolher arquivo"
   - Navegue até: C:\wamp64\www\minecraft\sql\seed.sql
   - Clique em "Executar"
   - Aguarde a mensagem de sucesso

6. VERIFICAR CREDENCIAIS (OPCIONAL)
   - Abra o arquivo: C:\wamp64\www\minecraft\api\config.php
   - Verifique as credenciais do banco de dados:

     define('DB_HOST', 'localhost');
     define('DB_USER', 'root');
     define('DB_PASS', '');  // Padrão WAMP é vazio
     define('DB_NAME', 'minecraft_site');

   - Ajuste APENAS se você alterou as credenciais padrão do WAMP

7. ACESSAR O SITE
   - Abra seu navegador
   - Acesse: http://localhost/minecraft/
   - Você será redirecionado automaticamente para: http://localhost/minecraft/home/

VERIFICAÇÃO DA INSTALAÇÃO
--------------------------

✓ Deve aparecer a página Home com cards dos 6 itens craftáveis
✓ O campo de busca no topo deve filtrar os itens
✓ Botão "Ver Detalhes" deve levar à página completa do craft
✓ Na página de detalhes, deve mostrar a grade 3x3 e lista de ingredientes

NAVEGAÇÃO DO SITE
-----------------

ROTAS (por pasta, SEM roteamento GET):
- http://localhost/minecraft/        → Redireciona para /home/
- http://localhost/minecraft/home/   → Página principal (grid de cards)
- http://localhost/minecraft/craft/?id=8   → Detalhes de um craft específico

FUNCIONALIDADES:
- Busca por nome de item (client-side, campo no header)
- Página completa de detalhes com descrição do item
- Grade 3x3 fiel ao Minecraft
- Lista agregada de ingredientes necessários

API ENDPOINTS
-------------

GET /minecraft/api/items.php
  → Retorna lista de todos os itens craftáveis
  → Parâmetro opcional: ?q=espada (filtro por nome)

GET /minecraft/api/recipe.php?id={id}
  → Retorna receita completa de um item
  → Inclui: item, grid (9 células), ingredients (lista agregada)

BANCO DE DADOS
--------------

TABELAS:
- items              → Itens (materiais e craftáveis)
- recipes            → Receitas (vincula item a uma receita)
- recipe_grid        → Grade 3x3 (9 linhas por receita)
- ingredients_flat   → Ingredientes agregados por receita

ITENS CADASTRADOS:
- Materiais: Graveto, Tronco de Madeira, Tábuas, Pedra, Ferro, Ouro, Diamante
- Craftáveis: Picareta de Madeira, Espada de Pedra, Machado de Pedra,
              Pá de Ouro, Espada de Ferro, Machado de Diamante

SOLUÇÃO DE PROBLEMAS
--------------------

PROBLEMA: Página em branco
SOLUÇÃO:
  - Verifique se o WAMP está rodando (ícone verde)
  - Acesse http://localhost/ para verificar se o Apache está ok
  - Verifique o console do navegador (F12) por erros JavaScript

PROBLEMA: Erro "Erro ao conectar ao banco de dados"
SOLUÇÃO:
  - Verifique se o MySQL está rodando no WAMP
  - Confirme que o banco "minecraft_site" foi criado
  - Verifique as credenciais em api/config.php

PROBLEMA: Erro 404 ao acessar /minecraft/
SOLUÇÃO:
  - Certifique-se de que a pasta está em C:\wamp64\www\minecraft\
  - Verifique se o Apache está rodando
  - Tente acessar diretamente: http://localhost/minecraft/home/

PROBLEMA: Itens não aparecem na home
SOLUÇÃO:
  - Abra o console do navegador (F12)
  - Verifique se há erros de rede (aba Network)
  - Teste a API diretamente: http://localhost/minecraft/api/items.php
  - Deve retornar um JSON com a lista de itens

PROBLEMA: Modal não abre ou não exibe a grade
SOLUÇÃO:
  - Verifique o console do navegador por erros JavaScript
  - Teste a API: http://localhost/minecraft/api/recipe.php?id=8
  - Deve retornar um JSON com item, grid e ingredients

PROBLEMA: Ícones não aparecem
SOLUÇÃO:
  - Verifique se a pasta assets/icons/ contém os 14 arquivos SVG
  - Abra um ícone diretamente: http://localhost/minecraft/assets/icons/stick.svg

PERSONALIZAÇÃO
--------------

ADICIONAR NOVOS ITENS:
1. Adicione o item na tabela "items"
2. Crie uma receita na tabela "recipes"
3. Preencha a grade 3x3 na tabela "recipe_grid" (9 linhas)
4. Preencha os ingredientes agregados em "ingredients_flat"
5. Adicione o ícone SVG em assets/icons/

ALTERAR CORES DO TEMA:
- Edite as variáveis CSS em css/style.css (seção :root)
- Cores principais: --color-grass, --color-dirt, --color-wood

ALTERAR BASE PATH:
- Se quiser mudar de /minecraft para /crafts, por exemplo:
  1. Edite api/config.php → define('BASE_PATH', '/crafts');
  2. Edite js/utils/basepath.js → export const BASE_PATH = '/crafts';
  3. Mova a pasta para C:\wamp64\www\crafts\

TECNOLOGIAS UTILIZADAS
----------------------
- HTML5 (estrutura semântica)
- CSS3 (grid, flexbox, variáveis CSS)
- JavaScript ES6+ (modules, async/await, fetch API)
- PHP 8+ (PDO, prepared statements)
- MariaDB/MySQL (banco de dados relacional)

SEGURANÇA
---------
✓ Prepared statements (proteção contra SQL injection)
✓ Escape de HTML no JavaScript (proteção contra XSS)
✓ Validação de parâmetros na API (id deve ser numérico)
✓ Headers Content-Type corretos
✓ Sem execução de código arbitrário

ACESSIBILIDADE
--------------
✓ Landmarks ARIA (role="dialog", aria-label)
✓ Foco visível em elementos interativos
✓ Suporte a navegação por teclado (ESC fecha modal)
✓ Textos alternativos em todas as imagens
✓ Mensagens de status com aria-live

COMPATIBILIDADE
---------------
- Chrome 90+
- Firefox 88+
- Edge 90+
- Safari 14+
- Opera 76+

NOTA: Requer suporte a ES6 Modules (type="module")

LICENÇA
-------
Projeto demonstrativo para fins educacionais.
Minecraft é marca registrada da Mojang Studios.

CRÉDITOS
--------
Desenvolvido como exemplo de site fullstack com:
- Frontend: HTML, CSS, JavaScript (vanilla)
- Backend: PHP (API RESTful)
- Banco de dados: MariaDB

================================================================================
                        http://localhost/minecraft/
================================================================================
