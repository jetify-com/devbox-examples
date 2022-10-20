# Set Mix + Hex to install packages in a local directory
mkdir -p .nix-mix
mkdir -p .nix-hex
export MIX_HOME=$PWD/.nix-mix
export HEX_HOME=$PWD/.nix-hex

# Add Erlang Flags
export ERL_AFLAGS='-kernel shell_history enabled'