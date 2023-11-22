{ ... }:

{
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
