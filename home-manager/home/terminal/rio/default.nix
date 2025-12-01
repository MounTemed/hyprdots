{ pkgs, ... }:
{
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
        background = "111318";
        foreground = "e2e2e9";

        cursor = "acc7ff"; 
        cursor_foreground = "0f2f60"; 

        black = "353434"; 
        red = "8a80ff";
        green = "44def5"; 
        yellow = "ffdcf2";
        blue = "8cadd4"; 
        magenta = "a0a4ef";
        cyan = "96d0fc";
        white = "e8d3de";

        light_black = "ac9fa9";
        light_red = "a59dff";
        light_green = "89ecff";
        light_yellow = "fff0f6";
        light_blue = "aec3da";
        light_magenta = "b9b9f8";
        light_cyan = "b9e0ff";
        light_white = "ffffff";
      };
    };
  };
}
