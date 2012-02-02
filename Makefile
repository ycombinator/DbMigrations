INSTALL_PREFIX = /usr/local

install:
	@mkdir -p ${INSTALL_PREFIX}/libexec/db-migrations ${INSTALL_PREFIX}/share/doc/db-migrations
	@cp *.sh ${INSTALL_PREFIX}/libexec/db-migrations/
	@cp LICENSE ${INSTALL_PREFIX}/share/doc/db-migrations/
	@for f in create* apply*; do \
		b=$(basename $$f); \
		cp $$f ${INSTALL_PREFIX}/bin/db-migrations-$$b; \
		chmod 755 ${INSTALL_PREFIX}/bin/db-migrations-$$b; \
	done

uninstall:
	@rm -rf ${INSTALL_PREFIX}
	@rm -f ${INSTALL_PREFIX}/bin/db-migrations-*