INSTALL_PREFIX = /usr/local

.PHONY: test

install:
	@mkdir -p ${INSTALL_PREFIX}/libexec/db-migrations ${INSTALL_PREFIX}/share/doc/db-migrations
	@cp *.sh ${INSTALL_PREFIX}/libexec/db-migrations/
	@cp LICENSE ${INSTALL_PREFIX}/share/doc/db-migrations/
	@for f in skytime create* apply*; do \
		b=$(basename $$f); \
		cp $$f ${INSTALL_PREFIX}/bin/db-migrations-$$b; \
		chmod 755 ${INSTALL_PREFIX}/bin/db-migrations-$$b; \
	done

uninstall:
	@rm -rf ${INSTALL_PREFIX}/libexec/db-migrations
	@rm -rf ${INSTALL_PREFIX}/share/doc/db-migrations
	@rm -f ${INSTALL_PREFIX}/bin/db-migrations-*

test:
	@for f in test/*; do \
		SHUNIT2_PATH=shunit2/src/shunit2 /bin/bash $$f; \
	done

