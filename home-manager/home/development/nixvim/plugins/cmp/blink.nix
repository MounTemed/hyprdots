{ ... }:
{
  programs.nixvim.plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap.preset = "default";
      sources = {
        default = [ "lsp" "path" "snippets" "buffer" ];
      };
    };
  };
}
