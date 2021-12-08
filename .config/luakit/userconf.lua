-- Loading NoScript Plugin
require "noscript"

-- Loading Tabgroups Plugin
require "plugins/tabgroups"

-- Setup My Search Engine
local settings = require "settings"
local engines = settings.window.search_engines
engines.disroot = "https://search.disroot.org/?q=%s"
engines.default = engines.disroot

-- Setup My Editor
local editor = require "editor"
editor.editor_cmd = "xterm -e vis {file}"