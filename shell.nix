{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.vim
    pkgs.emacs
    pkgs.sublime
    pkgs.just
    #Put another packets like just
  ];
}
