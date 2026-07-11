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

      default = self.templates.blank;
    };
  };
}
