all:
	@scripts/meta all
image:
	@scripts/meta image
clean:
	@scripts/meta clean
prepare:
	@scripts/meta prepare
gen_sshd_keys:
	@scripts/meta gen_sshd_keys
release:
	@scripts/release
bootstrap-all:
	@bootstrap/bootstrap-all $(filter-out $@,$(MAKECMDGOALS))
