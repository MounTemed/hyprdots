{ pkgs, ... }: {
  home.packages = with pkgs; [
    rustc
    cargo
    clippy
    cargo-audit
    cargo-auditable
    rustfmt
    cargo-fuzz
    rust-analyzer
  ];
}
