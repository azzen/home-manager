{
  lib,
  pkgs,
  ...
}: let
  rose-pine-theme = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "rose-pine-theme";
    version = "unstable-2025-04-05";
    rtpFilePath = "rose-pine.tmux";
    src = pkgs.fetchFromGitHub {
      owner = "rose-pine";
      repo = "tmux";
      rev = "5bf885fe2e181e9763d92d9c522b0526e901e449";
      sha256 = "sha256-YnpWvW0iWANB0snVhLKBTnOXlD3LQfbeoSFeae7SJ0c=";
    };
  };
in {
  programs.tmux.plugins = with pkgs; [
    {
      plugin = rose-pine-theme;
      extraConfig = ''
        set -g @rose_pine_variant 'main'
        set -g @rose_pine_host "on" # Enables hostname in the status bar
        set -g @rose_pine_date_time ""
        set -g @rose_pine_user "on"
        set -g @rose_pine_directory "on"
        set -g @rose_pine_bar_bg_disable "on"
      '';
    }

    tmuxPlugins.better-mouse-mode
  ];
}
