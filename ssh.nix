{ config, lib, pkgs, ... }:

{

    # enable the OpenSSH daemon
    services.openssh = {
        enable = true;
        ports = [ 22 ];
        settings = {
            PasswordAuthentication = true;
            AllowUsers = null; # allows all users by default
            UseDns = true;
            X11Forwarding = false;
            # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
            PermitRootLogin = "prohibit-password";
        };
    };

    
}
