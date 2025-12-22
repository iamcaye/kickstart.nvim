# Plugins de Neovim - Kickstart.nvim

Recopilación completa de todos los plugins utilizados en esta configuración.

## Gestión de Archivos

### oil.nvim
Navegador de archivos tipo buffer que permite editar el sistema de archivos como si fuera un buffer de texto.

### neo-tree.nvim
Explorador de archivos en árbol con interfaz moderna y funcionalidades avanzadas.

## Git

### vim-fugitive
Comandos de Git integrados en Neovim. Permite ejecutar comandos Git directamente desde el editor.

### gitsigns.nvim
- Muestra signos de cambios Git en el gutter
- Blame de línea actual
- Navegación entre hunks

## Navegación y Búsqueda

### telescope.nvim
Fuzzy finder altamente extensible para buscar archivos, texto, comandos LSP y más.

### telescope-fzf-native.nvim
Extensión FZF nativa para mejorar el rendimiento de búsqueda en Telescope.

### telescope-ui-select.nvim
Reemplaza las ventanas de selección nativas de Neovim con la interfaz de Telescope.

### harpoon (branch harpoon2)
Sistema de marcadores rápidos para navegar entre archivos frecuentemente utilizados.

## LSP y Completado

### nvim-lspconfig
Configuración de Language Server Protocol para múltiples lenguajes de programación.

### mason.nvim
Instalador y gestor de LSP servers, DAP servers, linters y formatters.

### mason-lspconfig.nvim
Integración entre Mason y nvim-lspconfig para simplificar la configuración.

### mason-tool-installer.nvim
Auto-instalación de herramientas configuradas.

### nvim-cmp
Motor de autocompletado modular y extensible.

### cmp-nvim-lsp
Fuente de autocompletado que obtiene sugerencias del LSP.

### cmp-path
Fuente de autocompletado para rutas de archivos.

### cmp-nvim-lsp-signature-help
Muestra la ayuda de firma de funciones durante el autocompletado.

### LuaSnip
Motor de snippets escrito en Lua con soporte para snippets VSCode.

### cmp_luasnip
Integración de LuaSnip con nvim-cmp.

### lazydev.nvim
Configuración automática de Lua LSP para desarrollo de plugins de Neovim.

## Formateo y Linting

### conform.nvim
Plugin de formateo automático con soporte para múltiples formateadores.

### nvim-lint
Linting asíncrono para detectar errores y problemas de estilo.

## Sintaxis y Highlighting

### nvim-treesitter
Parser incremental y sistema de highlighting avanzado basado en árboles de sintaxis.

## Utilidades

### vim-sleuth
Detección automática de configuraciones de indentación (tabstop y shiftwidth).

### Comment.nvim
Comentar y descomentar código de forma inteligente con múltiples tipos de comentarios.

### which-key.nvim
Muestra una ventana emergente con los keybindings disponibles según el contexto.

### mini.nvim
Colección de mini-plugins independientes:
- **mini.ai** - Mejores textobjects (around/inside)
- **mini.surround** - Manejo de surroundings (paréntesis, comillas, etc.)
- **mini.statusline** - Línea de estado minimalista

### nvim-autopairs
Auto-cierre automático de paréntesis, corchetes y comillas.

### indent-blankline.nvim
Muestra líneas verticales de indentación para mejor visualización del código.

### todo-comments.nvim
Highlight especial para comentarios TODO, FIXME, NOTE, etc.

### cloak.nvim
Oculta secretos y variables sensibles en archivos .env.

### fidget.nvim
Muestra notificaciones de progreso de LSP en la esquina de la pantalla.

### nvim-web-devicons
Iconos para tipos de archivo (requiere Nerd Font instalada).

## Debug

### nvim-dap
Debug Adapter Protocol para depuración de código.

### nvim-dap-ui
Interfaz de usuario para nvim-dap con paneles de variables, stack traces, etc.

### nvim-dap-go
Configuración específica de DAP para Go.

## Plugins Personalizados

Ubicados en `lua/custom/plugins/`:

### auto-dark-mode.lua
Cambio automático entre temas claro/oscuro según el sistema.

### colors.lua
Configuración personalizada de colores.

### colorscheme.lua
Gestión de esquemas de color.

### copilot.lua
Integración con GitHub Copilot.

### filetree.lua
Configuración personalizada del explorador de archivos.

### lualine.lua
Configuración de la barra de estado Lualine.

### sidekick.lua
Plugin de panel lateral personalizado.

### snacks.lua
Colección de utilidades pequeñas personalizadas.

### wakatime.lua
Integración con WakaTime para tracking de tiempo de desarrollo.

## LSP Servers Configurados

### eslint
Linting y formateo para JavaScript y TypeScript.

### lua_ls
Language server para Lua con configuración específica para Neovim.

---

**Total: ~40+ plugins** (incluyendo dependencias y módulos personalizados)

*Última actualización: Diciembre 22, 2025*
