# Sphinx Template

This repo contains the barebones to work with sphinx

# With Docker

Build image:

	docker image build -t sphinx -f Dockerfile .

Build Docs:

	docker run --rm -v /path/to/docs:/workspaces sphinx make html

## With VS Code

	Download `Remote - Containers` extension for vscode.

When you open the folder, it'll promp to `Rebuild in container`. Click and wait :-)

To build (key shortcout)

	ctrl + shift + b

Or, from the root folder

	make html