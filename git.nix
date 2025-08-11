{ config, lib, pkgs, ... }:

{

    programs.git = {
        enable = true;
        config = {
            user.name = "infernoid"
            user.email = "infernoid@gmail.com"
            # init.defaultBranch = "master"
            # pull.rebase = true;
        };
    };

}
