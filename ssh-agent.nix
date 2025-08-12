{ config, lib, pkgs, ... }:

{
    
    # start ssh agent
    programs.ssh = {
        startAgent = true;
        extraConfig = ''
            AddKeysToAgent yes
        '';
    };
    
    # run ssh-add at session startup
    systemd.user.services."ssh-add" = {
        description = "Add SSH key to ssh-agent";
        after = [ "ssh-agent.service" ];
        wants = [ "ssh-agent.service" ];
        serviceConfig = {
            Type = "oneshot";
            ExecStart = "${pkgs.openssh}/bin/ssh-add -q ${builtins.getEnv "HOME"}/.ssh/id_ed25519";
        };
        wantedBy = [ "default.target" ];
    };
    
}
