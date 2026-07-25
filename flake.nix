{
  description = "Collection of devenv templates.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      apps = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          initScript = pkgs.writeShellScriptBin "devenv-template-init" ''
            set -euo pipefail

            TEMPLATE="''${1:-blank}"
            REPO_ROOT="${self}"
            SRC_DIR="$REPO_ROOT/templates/$TEMPLATE"

            if [ ! -d "$SRC_DIR" ]; then
              echo "Error: Template '$TEMPLATE' not found."
              echo ""
              echo "Available templates:"
              ls -1 "$REPO_ROOT/templates"
              exit 1
            fi

            echo "Initializing devenv template: $TEMPLATE..."

            for file in devenv.nix devenv.yaml; do
              if [ -f "$SRC_DIR/$file" ]; then
                if [ -f "$file" ]; then
                  echo "  Skipping $file (already exists)"
                else
                  cp "$SRC_DIR/$file" "./$file"
                  chmod u+w "./$file" 2>/dev/null || true
                  echo "  Created $file"
                fi
              fi
            done

            if [ -f "$SRC_DIR/.gitignore" ]; then
              if [ -f ".gitignore" ]; then
                echo "" >> .gitignore
                echo "# Added by devenv template ($TEMPLATE)" >> .gitignore
                cat "$SRC_DIR/.gitignore" >> .gitignore
                echo "  Appended devenv ignore rules to existing .gitignore"
              else
                cp "$SRC_DIR/.gitignore" "./.gitignore"
                chmod u+w "./.gitignore" 2>/dev/null || true
                echo "  Created .gitignore"
              fi
            fi

            echo "Done! Run 'devenv shell' to enter the environment."
          '';
        in
        {
          default = {
            type = "app";
            program = "${initScript}/bin/devenv-template-init";
          };
        }
      );

      templates = {
        blank = {
          path = ./templates/blank;
          description = "A blank devenv environment.";
        };
        rust = {
          path = ./templates/rust;
          description = "Rust development environment.";
        };
        elixir = {
          path = ./templates/elixir;
          description = "Elixir development environment.";
        };
        dotnet = {
          path = ./templates/dotnet;
          description = ".NET (C#) development environment.";
        };
        python = {
          path = ./templates/python;
          description = "Python development environment.";
        };
        go = {
          path = ./templates/go;
          description = "Go development environment.";
        };
        ruby = {
          path = ./templates/ruby;
          description = "Ruby and Rails development environment.";
        };
        odin = {
          path = ./templates/odin;
          description = "Odin development environment.";
        };
        nim = {
          path = ./templates/nim;
          description = "Nim development environment.";
        };
        zig = {
          path = ./templates/zig;
          description = "Zig development environment.";
        };
        ocaml = {
          path = ./templates/ocaml;
          description = "OCaml development environment.";
        };
        gleam = {
          path = ./templates/gleam;
          description = "Gleam development environment.";
        };
        haskell = {
          path = ./templates/haskell;
          description = "Haskell development environment.";
        };
        lua = {
          path = ./templates/lua;
          description = "Lua development environment.";
        };
        c = {
          path = ./templates/c;
          description = "C development environment.";
        };
        c-cpp = {
          path = ./templates/c-cpp;
          description = "C/C++ development environment.";
        };
        svelte = {
          path = ./templates/svelte;
          description = "Svelte and SvelteKit development environment.";
        };
        htmx = {
          path = ./templates/htmx;
          description = "HTMX web development environment.";
        };
        react = {
          path = ./templates/react;
          description = "React development environment.";
        };
        angular = {
          path = ./templates/angular;
          description = "Angular development environment.";
        };
        vue = {
          path = ./templates/vue;
          description = "Vue.js development environment.";
        };
        astro = {
          path = ./templates/astro;
          description = "Astro development environment.";
        };
        typescript = {
          path = ./templates/typescript;
          description = "TypeScript development environment.";
        };
        java = {
          path = ./templates/java;
          description = "Java development environment.";
        };
        kotlin = {
          path = ./templates/kotlin;
          description = "Kotlin development environment.";
        };
        swift = {
          path = ./templates/swift;
          description = "Swift development environment.";
        };
        scala = {
          path = ./templates/scala;
          description = "Scala development environment.";
        };
        php = {
          path = ./templates/php;
          description = "PHP development environment.";
        };
        r = {
          path = ./templates/r;
          description = "R language development environment.";
        };
        julia = {
          path = ./templates/julia;
          description = "Julia development environment.";
        };
        sql = {
          path = ./templates/sql;
          description = "SQL database development environment.";
        };

        default = self.templates.blank;
      };
    };
}
