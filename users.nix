{ ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {
    dti = {
      isNormalUser = true;
      description = "DTI";
      extraGroups = [ "networkmanager" "wheel" ];
    };
    visitante = {
      isNormalUser = true;
      description = "Visitante";
      extraGroups = [ "networkmanager" ];
    };
  };
}
