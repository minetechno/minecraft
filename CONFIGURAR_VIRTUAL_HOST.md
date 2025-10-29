# 🌐 Configurar Virtual Host: minecraft.test

Este guia vai te ajudar a configurar o acesso ao projeto via **http://minecraft.test** ao invés de **http://localhost/minecraft/**

---

## ✅ O QUE JÁ FOI FEITO AUTOMATICAMENTE

1. ✅ **Virtual Host configurado no Apache**
   - Arquivo editado: `C:\wamp64\bin\apache\apache2.4.62.1\conf\extra\httpd-vhosts.conf`
   - Virtual Host criado para `minecraft.test`
   - DocumentRoot apontando para `c:/wamp64/www/minecraft`

---

## 🚀 O QUE VOCÊ PRECISA FAZER (3 PASSOS SIMPLES)

### PASSO 1: Adicionar entrada no arquivo hosts

**Opção A - Script Automático (Recomendado):**

1. Localize o arquivo no projeto: `add_hosts_entry.ps1`
2. **Clique com botão direito** no arquivo
3. Selecione **"Executar com PowerShell"**
4. Se pedir permissões, clique em **"Sim"**

**Opção B - Manual:**

1. Abra o **Bloco de Notas como Administrador**
   - Clique em Iniciar
   - Digite "Bloco de Notas"
   - Clique com botão direito
   - Selecione "Executar como administrador"

2. No Bloco de Notas, vá em **Arquivo > Abrir**

3. Navegue até: `C:\Windows\System32\drivers\etc\`

4. Mude o filtro de "Documentos de Texto" para **"Todos os Arquivos"**

5. Abra o arquivo **hosts**

6. Adicione esta linha no final:
   ```
   127.0.0.1  minecraft.test
   ```

7. Salve o arquivo (Ctrl+S)

---

### PASSO 2: Testar configuração do Apache

**Execute o script de teste:**

1. Dê duplo clique no arquivo: `test_apache_config.bat`
2. Aguarde o resultado
3. Deve aparecer: **"Syntax OK"**

Se aparecer erro, revise os arquivos de configuração.

---

### PASSO 3: Reiniciar serviços do WAMP

**Opção A - Via Script (Recomendado):**

1. **Clique com botão direito** no arquivo: `restart_wamp.bat`
2. Selecione **"Executar como administrador"**
3. Aguarde a mensagem de sucesso

**Opção B - Via Interface do WAMP:**

1. Clique no ícone do **WAMP** na bandeja do sistema (próximo ao relógio)
2. Selecione **"Restart All Services"**
3. Aguarde os serviços reiniciarem

---

## 🎯 TESTAR O ACESSO

Abra seu navegador e acesse:

```
http://minecraft.test
```

**Deve abrir direto na home do projeto!**

Também funcionam:
- `http://minecraft.test/home/`
- `http://minecraft.test/craft/`
- `http://minecraft.test/api/items.php`

---

## 🔧 SOLUÇÃO DE PROBLEMAS

### Problema 1: "Este site não pode ser acessado"

**Solução:**
- Verifique se executou o **PASSO 1** (adicionar no arquivo hosts)
- Execute no Prompt de Comando como Administrador:
  ```
  ipconfig /flushdns
  ```
- Feche e abra o navegador novamente

---

### Problema 2: "Forbidden - You don't have permission"

**Solução:**
- Verifique se o WAMP está rodando (ícone deve estar verde)
- Reinicie os serviços do WAMP
- Verifique se a pasta `c:\wamp64\www\minecraft` existe

---

### Problema 3: Apache não reinicia

**Solução:**
1. Execute: `test_apache_config.bat`
2. Se aparecer erro de sintaxe, verifique o arquivo:
   `C:\wamp64\bin\apache\apache2.4.62.1\conf\extra\httpd-vhosts.conf`
3. Consulte os logs em: `c:\wamp64\logs\apache_error.log`

---

### Problema 4: Ainda abre http://localhost/minecraft/

**Solução:**
- Limpe o cache do navegador (Ctrl+Shift+Delete)
- Tente usar o modo anônimo do navegador
- Digite exatamente: `http://minecraft.test` (sem /minecraft/ no final)

---

## 📋 RESUMO DOS ARQUIVOS CRIADOS

| Arquivo | Descrição |
|---------|-----------|
| `add_hosts_entry.ps1` | Script para adicionar entrada no hosts |
| `test_apache_config.bat` | Testa se a configuração do Apache está correta |
| `restart_wamp.bat` | Reinicia os serviços do WAMP |
| `CONFIGURAR_VIRTUAL_HOST.md` | Este guia completo |

---

## 🎓 COMO FUNCIONA

### Arquivo hosts
O arquivo `hosts` faz o Windows resolver `minecraft.test` para `127.0.0.1` (localhost).

### Virtual Host
O Apache recebe a requisição para `minecraft.test` e direciona para a pasta correta (`c:/wamp64/www/minecraft`).

### Resultado
Você acessa `http://minecraft.test` e o Apache serve os arquivos do projeto diretamente!

---

## 💡 DICAS ÚTEIS

### Adicionar mais domínios locais

Se quiser adicionar outros projetos, repita o processo:

1. Adicione no arquivo hosts:
   ```
   127.0.0.1  outro-projeto.test
   ```

2. Adicione um novo VirtualHost no `httpd-vhosts.conf`:
   ```apache
   <VirtualHost *:80>
       ServerName outro-projeto.test
       DocumentRoot "c:/wamp64/www/outro-projeto"
       <Directory "c:/wamp64/www/outro-projeto/">
           Options +Indexes +FollowSymLinks
           AllowOverride All
           Require local
       </Directory>
   </VirtualHost>
   ```

3. Reinicie o Apache

---

## 📞 PRECISA DE AJUDA?

Se tiver algum problema:

1. Verifique os logs do Apache: `c:\wamp64\logs\apache_error.log`
2. Verifique os logs específicos do projeto:
   - `c:\wamp64\logs\minecraft_error.log`
   - `c:\wamp64\logs\minecraft_access.log`
3. Execute o script de teste: `test_apache_config.bat`

---

## ✅ CHECKLIST FINAL

Antes de testar, verifique se você:

- [ ] Executou o script `add_hosts_entry.ps1` como administrador
- [ ] O script de teste (`test_apache_config.bat`) retornou "Syntax OK"
- [ ] Reiniciou os serviços do WAMP
- [ ] Limpou o cache DNS (`ipconfig /flushdns`)
- [ ] Fechou e abriu o navegador novamente

Se todos os itens estão marcados, acesse: **http://minecraft.test** 🎉

---

**Bom desenvolvimento! 🚀**
