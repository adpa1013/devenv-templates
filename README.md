# devenv-templates

A collection of ready-to-use [devenv](https://devenv.sh) templates for quickly bootstrapping reproducible, Nix-based development environments.

## Usage

Initialize a new project with one of the templates below by running:

```
nix flake init -t github:adpa1013/devenv-templates#<template>
```

For example, to start a blank environment:

```
nix flake init -t github:adpa1013/devenv-templates#blank
```

## Available templates

| Template | Description |
| --- | --- |
| `blank` | A blank devenv you can modify to fit any project. |
| `rust` | Rust |
| `elixir` | Elixir |
| `dotnet` | .NET / C# |
| `python` | Python |
| `go` | Go |
| `ruby` | Ruby / Ruby on Rails |
