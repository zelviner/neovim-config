local LspServers = {}

local lua = require("codeassists.languages.lua")
local rust = require("codeassists.languages.rust")
local go = require("codeassists.languages.go")

table.insert(LspServers, lua)
table.insert(LspServers, rust)
-- table.insert(LspServers, go)

return LspServers
