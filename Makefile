.PHONY: update
update:
	home-manager switch --flake .#azzen


.PHONY: clean
clean:
	nix-collect-garbage -d


.PHONY: fmt
fmt: 
	@nixfmt .
