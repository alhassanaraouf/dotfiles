local settings = require "settings"
local engines = settings.window.search_engines

engines.disroot = "https://search.disroot.org/?q=%s"

engines.default = engines.disroot

