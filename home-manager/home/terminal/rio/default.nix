{ pkgs, ... }: {
  home.packages = with pkgs; [
    rio
  ];

  programs.rio = {
    enable = true;

    settings = {
      fonts = {
        size = 16;
      };
    };
  };
}

