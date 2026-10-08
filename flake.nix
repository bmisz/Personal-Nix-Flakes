{
  description = "My personal flake templates";

  outputs = { self }: {

    templates = {
      C = {
        path = ./C;
		description = "A C template";
		welcomeText = ''
		  Created a C template.

		  Use nix-develop to get started.

		  Dont foget to use direnv if using an IDE such as VSCode.
		  '';
      };
    };

    defaultTemplate = self.templates.C;

  };
}
