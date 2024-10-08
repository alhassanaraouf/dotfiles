-- load standard vis module, providing parts of the Lua API
require('vis')
require("plugins/vis-commentary")
require("plugins/vis-ctags")
require("plugins/vis-surround")
require("plugins/vis-pairs")
require("plugins/vis-editorconfig")
require("plugins/vis-title")
require("plugins/vis-spellcheck")


vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	vis:command('set number')
	vis:command('set shell /bin/sh')
end)
