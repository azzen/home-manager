{
  pkgs,
  config,
  ...
}: {
  imports = [./plugins.nix];

  programs.tmux = {
    enable = true;
    shortcut = "a";
    baseIndex = 1;
    newSession = true;
    escapeTime = 0;

    extraConfig = ''
      set-option -g mouse on
      set-option -g focus-events on
      set-option -g default-terminal "screen-256color"

      bind \\ split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      bind c new-window -c "#{pane_current_path}"
    '';
  };
}
