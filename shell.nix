{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # ONLY audio-specific tools here
    supercollider
    supercollider-with-sc3-plugins
    faust2
    
    # Essential dev tools
    git
  ];
  
  shellHook = ''
    # Don't override system tools
    echo "🎵 Audio environment loaded"
    echo "  SuperCollider: $(which sclang)"
    echo "  Faust: $(which faust)"
  '';
}