{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./highlight.nix
    ./keymaps.nix
    ./lsp.nix
    ./options.nix
  ];

  plugins = {
    nix-develop.enable = true;
    which-key.enable = true;
    # All commands available straight away
    telescope.enable = true;
    # $ nvim . will open oil instead of netrw
    oil.enable = true;
    # all parsers included
    treesitter.enable = true;
    luasnip.enable = true;
    rainbow-delimiters.enable = true;
    auto-save.enable = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
  };

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
    };
  };
}
