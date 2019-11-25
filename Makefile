
documentation:
	@jazzy \
		--min-acl private \
		--no-hide-documentation-coverage \
		--theme apple \
		--output ./docs \
		--documentation=./*.md
	@rm -rf ./build
