{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.95;
      };
      terminal.shell = {
        args = ["new-session" "-A" "-D" "-s" "main"];
        program = "${pkgs.tmux}/bin/tmux";
      };
    };
  };
}
