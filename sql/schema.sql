-- ============================================
-- Minecraft Crafts Database Schema
-- ============================================

CREATE DATABASE IF NOT EXISTS minecraft_site
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE minecraft_site;

-- Tabela de itens (materiais e itens craftáveis)
CREATE TABLE IF NOT EXISTS items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  slug VARCHAR(120) NOT NULL UNIQUE,
  description TEXT,
  icon VARCHAR(200) NOT NULL,
  category VARCHAR(50) NOT NULL DEFAULT 'material',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_category (category),
  INDEX idx_slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela de receitas (vincula uma receita a um item craftável)
CREATE TABLE IF NOT EXISTS recipes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE,
  INDEX idx_item_id (item_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela da grade 3x3 de crafting (posições individuais)
CREATE TABLE IF NOT EXISTS recipe_grid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  recipe_id INT NOT NULL,
  `row` TINYINT NOT NULL CHECK (`row` BETWEEN 0 AND 2),
  `col` TINYINT NOT NULL CHECK (`col` BETWEEN 0 AND 2),
  ingredient_item_id INT NULL,
  quantity TINYINT NOT NULL DEFAULT 1,
  FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
  FOREIGN KEY (ingredient_item_id) REFERENCES items(id) ON DELETE CASCADE,
  UNIQUE KEY unique_position (recipe_id, `row`, `col`),
  INDEX idx_recipe_id (recipe_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela de ingredientes agregados (lista consolidada por receita)
CREATE TABLE IF NOT EXISTS ingredients_flat (
  id INT AUTO_INCREMENT PRIMARY KEY,
  recipe_id INT NOT NULL,
  ingredient_item_id INT NOT NULL,
  quantity INT NOT NULL DEFAULT 1,
  FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
  FOREIGN KEY (ingredient_item_id) REFERENCES items(id) ON DELETE CASCADE,
  UNIQUE KEY unique_ingredient (recipe_id, ingredient_item_id),
  INDEX idx_recipe_id (recipe_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
