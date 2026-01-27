{ ... }: {
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      window-padding-balance = true;
      window-padding-x = 0;
      window-padding-y = 0;
      window-padding-color = "extend";
      
      window-decoration = false;
      window-inherit-font-size = false;

      font-size = 13;

      background = "111318";
      foreground = "e2e2e9";
      
      cursor-color = "acc7ff";
      cursor-text = "0f2f60";

      palette = [
        "0=#353434"
        "1=#8a80ff"
        "2=#44def5"
        "3=#ffdcf2"
        "4=#8cadd4"
        "5=#a0a4ef"
        "6=#96d0fc"
        "7=#e8d3de"
        "8=#ac9fa9"
        "9=#a59dff"
        "10=#89ecff"
        "11=#fff0f6"
        "12=#aec3da"
        "13=#b9b9f8"
        "14=#b9e0ff"
        "15=#ffffff"
      ];
    };
  };
}
