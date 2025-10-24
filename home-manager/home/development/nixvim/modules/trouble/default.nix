{ ... }:
{
  programs.nixvim = {
    plugins.trouble.enable = true;
    plugins.trouble.settings.auto_refresh = true;
  };
}
