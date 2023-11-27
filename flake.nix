{
  description = "A reproducible package set for Cosmos, IBC and CosmWasm";

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      imports = [
        # Sets additional / modified arguments passed to flake-parts modules
        ./modules/args.nix
        # Provides the cosmosLib utilities as a flake output, and an input to perSystem modules
        ./modules/lib.nix
        # Contains default and exported devshells
        ./modules/devshells.nix
        # Sets the formatter flake output
        ./modules/formatter.nix
        # Sets the packages flake output
        ./modules/packages.nix
        # Sets the checks flake output
        ./modules/checks.nix
        # Sets the apps flake output
        ./modules/apps.nix
        # Sets the overlays.default flake output
        ./modules/overlay.nix
      ];
    };

  inputs = {
    # Nix Inputs
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay.url = "github:oxalica/rust-overlay/b8f3db465405014039985f1c5cea92cc29e1b3b5";
    sbt-derivation.url = "github:zaninime/sbt-derivation";
    nix-std.url = "github:chessai/nix-std";
    flake-parts.url = "github:hercules-ci/flake-parts";

    # Freshautomations inputs
    stoml-src.url = "github:freshautomations/stoml";
    stoml-src.flake = false;

    sconfig-src.url = "github:freshautomations/sconfig";
    sconfig-src.flake = false;

    # CometBFT
    cometbft-src.url = "github:cometbft/cometbft/v0.38.0";
    cometbft-src.flake = false;

    # Relayer Sources
    ibc-rs-src.url = "github:informalsystems/ibc-rs/v1.0.0";
    ibc-rs-src.flake = false;

    hermes-src.url = "github:informalsystems/hermes/v1.6.0";
    hermes-src.flake = false;

    relayer-src.url = "github:cosmos/relayer/v1.0.0";
    relayer-src.flake = false;

    ica-src.url = "github:cosmos/interchain-accounts-demo";
    ica-src.flake = false;

    # Chain Sources
    gaia-main-src.url = "github:cosmos/gaia";
    gaia-main-src.flake = false;

    gaia14-src.url = "github:cosmos/gaia/v14.0.0";
    gaia14-src.flake = false;

    gaia13-src.url = "github:cosmos/gaia/v13.0.2";
    gaia13-src.flake = false;

    gaia12-src.url = "github:cosmos/gaia/v12.0.0";
    gaia12-src.flake = false;

    gaia11-src.url = "github:cosmos/gaia/v11.0.0";
    gaia11-src.flake = false;

    gaia10-src.url = "github:cosmos/gaia/v10.0.2";
    gaia10-src.flake = false;

    gaia9-src.url = "github:cosmos/gaia/v9.0.3";
    gaia9-src.flake = false;

    gaia8-src.url = "github:cosmos/gaia/v8.0.1";
    gaia8-src.flake = false;

    gaia7-src.url = "github:cosmos/gaia/v7.1.0";
    gaia7-src.flake = false;

    gaia6-ordered-src.url = "github:informalsystems/gaia/v6.0.4-ordered";
    gaia6-ordered-src.flake = false;

    gaia6-src.url = "github:cosmos/gaia/v6.0.4";
    gaia6-src.flake = false;

    gaia5-src.url = "github:cosmos/gaia/v5.0.8";
    gaia5-src.flake = false;

    ibc-go-v2-src.url = "github:cosmos/ibc-go/v2.4.1";
    ibc-go-v2-src.flake = false;

    ibc-go-v3-src.url = "github:cosmos/ibc-go/v3.3.0";
    ibc-go-v3-src.flake = false;

    ibc-go-v4-src.url = "github:cosmos/ibc-go/v4.2.0";
    ibc-go-v4-src.flake = false;

    ibc-go-v5-src.url = "github:cosmos/ibc-go/v5.1.0";
    ibc-go-v5-src.flake = false;

    ibc-go-v6-src.url = "github:cosmos/ibc-go/v6.1.0";
    ibc-go-v6-src.flake = false;

    ibc-go-v7-src.url = "github:cosmos/ibc-go/v7.3.0";
    ibc-go-v7-src.flake = false;

    ibc-go-v8-src.url = "github:cosmos/ibc-go/v8.0.0";
    ibc-go-v8-src.flake = false;

    ibc-go-v8-channel-upgrade-src.url = "github:cosmos/ibc-go/04-channel-upgrades-alpha.0";
    ibc-go-v8-channel-upgrade-src.flake = false;

    cosmos-sdk-src.url = "github:cosmos/cosmos-sdk/v0.46.0";
    cosmos-sdk-src.flake = false;

    iris-src.url = "github:irisnet/irishub/v1.1.1";
    iris-src.flake = false;

    regen-src.url = "github:regen-network/regen-ledger/v3.0.0";
    regen-src.flake = false;

    evmos-src.url = "github:tharsis/evmos/v9.1.0";
    evmos-src.flake = false;

    juno-src.url = "github:CosmosContracts/juno/v17.1.1";
    juno-src.flake = false;

    osmosis-src.url = "github:osmosis-labs/osmosis/v20.4.0";
    osmosis-src.flake = false;

    sentinel-src.url = "github:sentinel-official/hub/v0.9.0-rc0";
    sentinel-src.flake = false;

    akash-src.url = "github:ovrclk/akash/v0.15.0-rc17";
    akash-src.flake = false;

    umee-src.url = "github:umee-network/umee/v2.0.0";
    umee-src.flake = false;

    ixo-src.url = "github:ixofoundation/ixo-blockchain/v0.18.0-rc1";
    ixo-src.flake = false;

    sifchain-src.url = "github:Sifchain/sifnode/v0.12.1";
    sifchain-src.flake = false;

    crescent-src.url = "github:crescent-network/crescent/v1.0.0-rc3";
    crescent-src.flake = false;

    stargaze-src.url = "github:public-awesome/stargaze/v3.0.0";
    stargaze-src.flake = false;

    # https://github.com/notional-labs/composable-centauri/pull/271
    centauri-src.url = "github:dzmitry-lahoda-forks/composable-centauri/c6736b946c3bc6c7c23788d499b2dff94ffd39f5";
    centauri-src.flake = false;

    wasmd-src.url = "github:CosmWasm/wasmd/v0.30.0";
    wasmd-src.flake = false;

    wasmd_next-src.url = "github:CosmWasm/wasmd/v0.40.0-rc.1";
    wasmd_next-src.flake = false;

    wasmvm_1-src.url = "github:CosmWasm/wasmvm/v1.0.0";
    wasmvm_1-src.flake = false;

    wasmvm_1_3_0-src.url = "github:CosmWasm/wasmvm/v1.3.0";
    wasmvm_1_3_0-src.flake = false;

    wasmvm_1_2_4-src.url = "github:CosmWasm/wasmvm/v1.2.4";
    wasmvm_1_2_4-src.flake = false;

    wasmvm_1_2_3-src.url = "github:CosmWasm/wasmvm/v1.2.3";
    wasmvm_1_2_3-src.flake = false;

    wasmvm_1_1_2-src.url = "github:CosmWasm/wasmvm/v1.1.2";
    wasmvm_1_1_2-src.flake = false;

    wasmvm_1_1_1-src.url = "github:CosmWasm/wasmvm/v1.1.1";
    wasmvm_1_1_1-src.flake = false;

    wasmvm_1_beta7-src.url = "github:CosmWasm/wasmvm/v1.0.0-beta7";
    wasmvm_1_beta7-src.flake = false;

    wasmvm_0_16_3-src.url = "github:CosmWasm/wasmvm/v0.16.3";
    wasmvm_0_16_3-src.flake = false;

    cosmwasm-src.url = "github:CosmWasm/cosmwasm/v1.2.6";
    cosmwasm-src.flake = false;

    apalache-src.url = "github:informalsystems/apalache/v0.24.0";
    apalache-src.flake = false;

    ignite-cli-src.url = "github:ignite/cli/v0.24.0";
    ignite-cli-src.flake = false;

    interchain-security-src.url = "github:cosmos/interchain-security/feat/ics-misbehaviour-handling";
    interchain-security-src.flake = false;

    stride-src.url = "github:Stride-Labs/stride/v8.0.0";
    stride-src.flake = false;

    stride-consumer-src.url = "github:Stride-Labs/stride/v12.1.0";
    stride-consumer-src.flake = false;

    migaloo-src.url = "github:White-Whale-Defi-Platform/migaloo-chain/v3.0.2";
    migaloo-src.flake = false;

    celestia-src.url = "github:celestiaorg/celestia-app/v1.4.0";
    celestia-src.flake = false;

    neutron-src.url = "github:neutron-org/neutron/v1.0.4";
    neutron-src.flake = false;

    gex-src.url = "github:cosmos/gex/bc168741b2019745d343606d31b5c274f216fc3f";
    gex-src.flake = false;

    beaker-src.url = "github:osmosis-labs/beaker/v0.1.6";
    beaker-src.flake = false;

    provenance-src.url = "github:/provenance-io/provenance/v1.17.0";
    provenance-src.flake = false;
  };
}

