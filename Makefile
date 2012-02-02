INSTALL_BASEDIR = /opt/db-migrations

install:
	@mkdir -p ${INSTALL_BASEDIR}/libexec ${INSTALL_BASEDIR}/share/doc/
	@cp *.sh ${INSTALL_BASEDIR}/libexec/
	@cp LICENSE ${INSTALL_BASEDIR}/share/doc/
	@for f in create* apply*; do \
		b=$(basename $$f); \
		cp $$f /usr/local/bin/db-migrations-$$b; \
		chmod 755 /usr/local/bin/db-migrations-$$b; \
	done

uninstall:
	@rm -rf ${INSTALL_BASEDIR}
	@rm -f /usr/local/bin/db-migrations-*