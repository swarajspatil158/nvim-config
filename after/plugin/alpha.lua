local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[                               _  ]],
[[  _____      ____ _ _ __ __ _ (_) ]],
[[ / __\ \ /\ / / _` | '__/ _` || | ]],
[[ \__ \\ V  V / (_| | | | (_| || | ]],
[[ |___/ \_/\_/ \__,_|_|  \__,_|/ | ]],
[[                            |__/   ]],
}
dashboard.section.buttons.val = {
    -- 	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
    -- 	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
    dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
    -- dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("n", "  Notes", ":VimwikiIndex <CR>"),
    dashboard.button("c", "  Editor Configuration", ":e $MYVIMRC <CR>"),
    -- dashboard.button("t", "  Terminal Configuration", ":e $TERMCONF <CR>"),
    dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "git.io/swarajpatil"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
