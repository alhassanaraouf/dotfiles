-- Loading NoScript Plugin
require "noscript"

-- require "gopher"

-- Loading Tabgroups Plugin
require "tabgroups"
local window = require "window"
local tgname = require "tabgroups.tgname"

window.add_signal("build", function (w)
     local widgets, l, r = require "lousy.widget", w.sbar.l, w.sbar.r
     r.layout:pack(tgname())
end)

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