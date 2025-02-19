{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      salvaConfig = import ./nvim;
    in
    {
      packages.aarch64-linux = {
        default =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = nixpkgs.legacyPackages.aarch64-linux;
            modules = [
              {
                config.vim.package = inputs.neovim-nightly-overlay.packages.aarch64-linux.default;
              }
              salvaConfig
            ];
          }).neovim;
      };
      packages.x86_64-linux = {
        default =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = nixpkgs.legacyPackages.x86_64-linux;
            modules = [
              {
                config.vim.package = inputs.neovim-nightly-overlay.packages.x86_64-linux.default;
              }
              salvaConfig
            ];
          }).neovim;
      };
    };
}
