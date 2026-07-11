{
  description = "Collection of devenv templates.";

  outputs = { self }: {
    templates = {
      # Blank Template
      blank = {
        path = ./templates/blank;
        description = "A blank devenv you can modify to fit any project.";
      };

      # Rust Template
      rust = {
        path = ./templates/rust;
        description = "A standard Rust development environment.";
      };

      # Elixir Template
      elixir = {
        path = ./templates/elixir;
        description = "A standard Elixir development environment.";
      };

      # .NET / C# Template
      dotnet = {
        path = ./templates/dotnet;
        description = "A standard .NET (C#) development environment.";
      };

      # Python Template
      python = {
        path = ./templates/python;
        description = "A standard Python development environment.";
      };

      # Go Template
      go = {
        path = ./templates/go;
        description = "A standard Go development environment.";
      };

      # Ruby / Ruby on Rails Template
      ruby = {
        path = ./templates/ruby;
        description = "A standard Ruby (and Ruby on Rails) development environment.";
      };

      default = self.templates.blank;
    };
  };
}
