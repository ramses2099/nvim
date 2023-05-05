--Ensuring lspconfig Is Working
local status, lspconfig = pcall(require,'lspconfig')
if (not status) then
    print("Lspconfig Is Not Working")
end

--Setup Language Servers.
lspconfig.pyright.setup {}
