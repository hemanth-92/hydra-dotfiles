{ pkgs, ... }:
{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      # AutoPagerize
      { id = "igiofjhpmpihnifddepnpngfjhkfenbp"; }
      # Awesome Screen Recorder & Screenshot
      { id = "nlipoenfbbikpbjkfpfillcgkoblgpmj"; }
      # Bitwarden
      { id = "nngceckbapebfimnlniiiahkandclblb"; }
      # Dark Reader
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; }
      # JSON Viewer
      { id = "gbmdgpbipfallnflgajpaliibnhdgobh"; }
      # Return YouTube Dislike
      { id = "gebbhagfogifgggkldgodflihgfeippi"; }
      # Session Manager
      { id = "mghenlmbmjcpehccoangkdpagbcbkdpc"; }
      # SponsorBlock for YouTube - Skip Sponsorships
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; }
      # Surfingkeys
      { id = "gfbliohnnapiefjpjlpjnehglfpaknnc"; }
      # uBlock Origin
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      # Video Speed Controller
      { id = "nffaoalbilbmmfgbnbgppjihopabppdk"; }
      # YouTube Auto HD + FPS
      { id = "fcphghnknhkimeagdglkljinmpbagone"; }
      # Youtube-shorts block
      { id = "jiaopdjbehhjgokpphdfgmapkobbnmjp"; }
      # adblocer ultimate
      { id = "ohahllgiabjaoigichmmfljhkcfikeof"; }
      # Allow CORS
      { id = "lhobafahddgcelffkeicbaginigeejlf"; }
    ];
  };
}
