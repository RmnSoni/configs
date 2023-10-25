local M = {
  filetype= {
    javascript  = {
      require("formatter.filetypes.javascript").prettier
    },
    typesctipt = { 
      require("formatter.filetypes.typescript").prettier
    },
    [*] = {
      require("formatter.filetypers.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd( {"BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
