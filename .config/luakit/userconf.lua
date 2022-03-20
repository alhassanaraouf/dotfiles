-- Loading NoScript Plugin
require "noscript"

-- Loading Tabgroups Plugin
require "tabgroups"
-- require "uaswitch"
require "pass"

-- Setup My Search Engine
local settings = require "settings"
local engines = settings.window.search_engines
engines.disroot = "https://search.disroot.org/?q=%s"
engines.default = engines.disroot

-- Setup My Editor
local editor = require "editor"
editor.editor_cmd = "xfce4-terminal -x vis {file}"