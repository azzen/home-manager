{
  config,
  pkgs,
  ...
}: {
  home.username = "azzen";
  home.homeDirectory = "/home/azzen";
  home.stateVersion = "24.11"; # Please read the comment before changing.
  home.packages = with pkgs; [
    nodejs_23
    steam-devices-udev-rules
    rust-analyzer
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };

  programs.home-manager.enable = true;

  imports = [
    ./neovim
    ./krisp-patch
  ];

  sys.discord.enable = true;

  programs.fzf.enable = true;

  programs.eza = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zsh = {enable = true;};

  programs.git = {
    enable = true;
    userEmail = "6373020+azzen@users.noreply.github.com";
    userName = "azzen";
  };

  programs.kitty = {
    enable = true;
    font.name = "Agave Nerd Font";
    font.size = 14;
    settings = {background_opacity = 0.95;};
  };
}
