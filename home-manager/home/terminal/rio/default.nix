{ pkgs, ... }: {
  home.packages = with pkgs; [
    rio
  ];

  programs.rio = {
    enable = true;

    settings = {
      fonts = {
        size = 13;

        disable-warnings-not-found = {
          enable = false;
        };
      };
    };
  };
}
