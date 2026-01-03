local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
end

return {
  {
    "craftzdog/solarized-osaka.nvim",
    config = function() 
      vim.cmd.colorscheme "solarized-osaka"
      enable_transparency()
    end
  },
}
