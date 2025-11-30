{ pkgs, ... }: {
  home.packages = with pkgs; [
    rio
  ];

  programs.rio = {
    enable = true;

    settings = {
      confirm-before-quit = true;
      fonts = {
        size = 20;
        featues = [ ];
        use-drawable-chars = true;
        symbol-map = [ ];
        disable-warnings-not-found = true;
        additional-dirs = [ ];
      };
      cursor = {
        shape = "beam";
      };
      editor = {
        program = "nvim";
        args = [ ];
      };
    };
  };
}

