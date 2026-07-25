# devenv-templates

A collection of ready-to-use, minimal [devenv](https://devenv.sh) templates for quickly bootstrapping reproducible, Nix-based development environments.

## Quick Start & Usage

### 🚀 Recommended (Works on Any Project, including existing `.gitignore`)

Run `nix run` to initialize a template. If a `.gitignore` already exists in your directory, it will automatically append the devenv rules without overwriting or erroring out:

```bash
nix run github:adpa1013/devenv-templates -- <template>
```

*Example:*
```bash
nix run github:adpa1013/devenv-templates -- svelte
```

---

### ⚡ Native Flake Init (Fresh Directories)

To initialize a template using `nix flake init`:

```bash
nix flake init -t github:adpa1013/devenv-templates#<template>
```

*Example:*
```bash
nix flake init -t github:adpa1013/devenv-templates#rust
```

---

## Available Templates

### 🟢 Web & Frontend Stacks
| Template | Description | Key Tools |
| --- | --- | --- |
| `svelte` | Svelte & SvelteKit | Node.js 20, pnpm, `svelte-language-server` |
| `htmx` | HTMX & Web | Node.js 20, `miniserve` |
| `react` | React & Vite | Node.js 20, pnpm, TypeScript, `biome` |
| `angular` | Angular | Node.js 20, pnpm, `@angular/cli` |
| `vue` | Vue.js | Node.js 20, pnpm, `vue-language-server` |
| `astro` | Astro | Node.js 20, pnpm, `astro-language-server` |
| `typescript` | TypeScript / Node | Node.js 20, pnpm, `ts-node` |

### 🔵 Systems & General Purpose Languages
| Template | Description | Key Tools |
| --- | --- | --- |
| `c` | C | GCC, GDB, GNU Make, `clang-tools` |
| `c-cpp` | C / C++ | GCC/Clang, CMake, `clang-tools`, GDB |
| `rust` | Rust | Cargo, `rust-analyzer`, `cargo-watch` |
| `odin` | Odin | Odin compiler, `ols` |
| `nim` | Nim | Nim compiler, `nimble`, `nimlangserver` |
| `zig` | Zig | Zig compiler, `zls` |
| `go` | Go | Go compiler, `golangci-lint` |
| `python` | Python | Python 3, `venv`, `ruff` |
| `ruby` | Ruby & Rails | Ruby, Bundler, Solargraph |

### 🟣 Functional & Niche Languages
| Template | Description | Key Tools |
| --- | --- | --- |
| `elixir` | Elixir | Erlang, Elixir |
| `ocaml` | OCaml | OCaml, Dune 3, `ocaml-lsp`, Opam |
| `gleam` | Gleam | Gleam compiler, Erlang, Rebar3 |
| `haskell` | Haskell | GHC, Cabal, `haskell-language-server` |
| `lua` | Lua | Lua interpreter, `lua-language-server` |
| `scala` | Scala | Scala compiler, SBT, Metals LSP |

### 🟡 Enterprise & Ecosystem Languages
| Template | Description | Key Tools |
| --- | --- | --- |
| `dotnet` | .NET / C# | .NET SDK |
| `java` | Java | JDK 21, Gradle, Maven |
| `kotlin` | Kotlin | Kotlin compiler, JDK 21, Gradle |
| `swift` | Swift | Swift compiler |
| `php` | PHP | PHP 8.3, Composer |

### 📊 Data & Specialized
| Template | Description | Key Tools |
| --- | --- | --- |
| `r` | R Language | R environment |
| `julia` | Julia | Julia language |
| `sql` | SQL Database | PostgreSQL, SQLite, `sqldef`, `pgcli` |
| `blank` | Blank Devenv | Base template to customize |
