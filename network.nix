{ lib, ... }:

{
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  networking.hosts = {
    "200.129.37.136" = [
      "os.sobral.ufc.br"
      "patrimonio.sobral.ufc.br"
      "sobral.ufc.br"
      "ti.sobral.ufc.br"
    ];
  };

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    # ports = [ 2398 ];
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = lib.mkDefault true;
    };
  };
}
