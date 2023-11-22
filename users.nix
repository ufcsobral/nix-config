{ lib, ... }:

{
  # services.accounts-daemon.enable = lib.mkDefault true;

  # https://nixos.org/manual/nixos/stable/options#opt-system.activationScripts
  system.activationScripts = {
    visitante = "passwd -d visitante";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users =
    let
      groups = [ "networkmanager" ];
      password = "$y$j9T$v5pc.sLoYn26GUDibRrBA0$fdVBYV7sU0F3iwxUX9P80EIBAPmqAPq/tgzh5DEyZkD";
      with-sudo = groups ++ [ "wheel" ];
    in
    {
      dti = {
        createHome = lib.mkDefault true;
        description = "DTI";
        extraGroups = with-sudo;
        group = "users";
        home = "/home/dti";
        initialHashedPassword = password;
        isSystemUser = lib.mkDefault true;
      };
      visitante = {
        description = "Visitante";
        extraGroups = groups;
        # initialHashedPassword = password;
        isNormalUser = true;
        password = "";
      };
    };
}
