{
  config,
  pkgs,
  ...
}: {
  home.username = "azzen";
  home.homeDirectory = "/home/azzen";
  home.stateVersion = "24.11"; # Please read the comment before changing.
  home.packages = with pkgs; [
    nodejs_24
    steam-devices-udev-rules
    rust-analyzer
    gimp
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };

  programs.home-manager.enable = true;

  imports = [
    ./zsh.nix
    ./tmux
    ./alacritty.nix
    ./neovim
    ./krisp-patch
  ];

  sys.discord.enable = true;

  programs.fzf.enable = true;

  programs.eza = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    userEmail = "6373020+azzen@users.noreply.github.com";
    userName = "azzen";
  };
}
