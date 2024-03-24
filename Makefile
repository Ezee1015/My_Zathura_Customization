REPO_DIR=${CURDIR}
REPO_CONFIG_DIR=${REPO_DIR}/config
LOCAL_CONFIG_DIR=~/.config/zathura

APT_PACKAGES=zathura
PACMAN_PACKAGES=zathura zathura-pdf-poppler

# Updates and install the lua files from the repository
install:
	$(eval DISTRO=$(shell cat /etc/os-release | grep "^ID=" | awk -F= '{print $$2}'))
	@mkdir -p ${LOCAL_CONFIG_DIR}
	@if [ "$(DISTRO)" = "debian" ]  || [ "$(DISTRO)" = "linuxmint" ]; then   \
		sudo apt install ${APT_PACKAGES};                                      \
	elif [ "$(DISTRO)" = "arch" ] || [ "$(DISTRO)" = "manjaro" ]; then       \
		sudo pacman -S ${PACMAN_PACKAGES};                                     \
	else                                                                     \
		echo "[Error] Distro not recognized. Please install: ${APT_PACKAGES}"; \
		exit 1;                                                                \
	fi
	@cp -r ${REPO_CONFIG_DIR}/* ${LOCAL_CONFIG_DIR}/

# Updates and send to the repository the files
send:
	@git pull
	# Delete configuration
	@rm -rf ${REPO_CONFIG_DIR}/*
	# Copy the configuration
	@cp -r ${LOCAL_CONFIG_DIR}/* ${REPO_CONFIG_DIR}/

# Updates from the repository the files. DESTRUCTIVE!!!
update:
	@git pull
	# Delete local configuration
	@rm -rf ${LOCAL_CONFIG_DIR}/*
	# Copia la configuración
	@cp -r ${REPO_CONFIG_DIR}/* ${LOCAL_CONFIG_DIR}/
