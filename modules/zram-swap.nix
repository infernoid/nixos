{ config, lib, pkgs, ... }:

{

    zramSwap = {
        enable = true;
        algorithm = "zstd";
        memoryPercent = 100;
        memoryMax = 1024 * 1024 * 4096;
        # priority = 100;
    };

}
