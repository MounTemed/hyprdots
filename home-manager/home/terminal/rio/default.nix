{ pkgs, ... }: {
  home.packages = with pkgs; [
    rio
  ];

  programs.rio = {
    enable = true;

    settings = {
      confirm-before-quit = false;
      fonts = {
        size = 18;
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
      colors = {
        cursor = "#d6d3e6";
      };
    };
  };
}

