local make_exe
local build_cmd

if (string.match(vim.loop.os_uname().sysname, "^Windows")) then
    make_exe = 'cmake'
    build_cmd = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
else
    make_exe = 'make'
    build_cmd = 'make'
end

return {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = build_cmd,
    cond = function()
        return vim.fn.executable(make_exe) == 1
    end,
}
