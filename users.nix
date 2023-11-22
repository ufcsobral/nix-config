{ lib, ... }:

{
  services.accounts-daemon.enable = true;

  services.xserver.displayManager.gdm.settings = {
    greeter = {
      Exclude = builtins.concatStringsSep "," [
        "almino"
        "dti"
        # !! Não modificar as linhas abaixo
        # "adm"
        # "bin"
        # "daemon"
        # "halt"
        # "lp"
        # "mail"
        # "news"
        # "nfsnobody"
        # "noaccess"
        # "nobody"
        # "nobody4"
        # "operator"
        # "pcap"
        # "postgres"
        # "pvm"
        # "root"
        # "rpm"
        # "shutdown"
        # "sync"
        # "uucp"
      ];
      Include = lib.mkDefault "visitante";
      IncludeAll = lib.mkDefault false;
    };
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {
    dti = {
      isNormalUser = true;
      description = "DTI";
      extraGroups = [ "networkmanager" "wheel" ];
      initialHashedPassword = "$y$j9T$v5pc.sLoYn26GUDibRrBA0$fdVBYV7sU0F3iwxUX9P80EIBAPmqAPq/tgzh5DEyZkD";
    };
    visitante = {
      isNormalUser = true;
      description = "Visitante";
      extraGroups = [ "networkmanager" ];
    };
  };
}
