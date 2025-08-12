{

    description = "NixOS configuration (flake)";

    inputs = {
    
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
        # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        
        home-manager = {
            url = "github:nix-community/home-manager/release-25.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix = {
            url = "github:nix-community/stylix/release-25.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        
    };

    outputs = { self, nixpkgs, home-manager, stylix, ... }@inputs: let
    
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };   
        
    in {
    
        nixosConfigurations = {
            fsociety = nixpkgs.lib.nixosSystem {
            
                inherit system;
                specialArgs = { inherit inputs; };
                
                modules = [

		    stylix.nixosModules.stylix

                    ./configuration.nix
                    
                    # enable Home Manager as a NixOS module
                    home-manager.nixosModules.home-manager {
                        # home-manager.extraSpecialArgs = { inherit inputs; };
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.yutani = import ./home.nix;
                    } 

                ];
            };
        };
    };

}
