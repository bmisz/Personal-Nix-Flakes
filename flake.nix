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

      full = {
        path = ./full;
        description = "A template that shows all standard flake outputs";
        welcomeText = ''
          You just created a template that will show you all standard flake outputs.

          Read more about it here:

            https://github.com/NixOS/templates/tree/master/full
        '';
      };
    };

    defaultTemplate = self.templates.C;

  };
}
