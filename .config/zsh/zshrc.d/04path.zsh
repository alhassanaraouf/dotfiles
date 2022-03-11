
# adding composer packages
PATH=~/.config/composer/vendor/bin/:$PATH

# add my scripts
PATH=~/scripts:$PATH

# adding sonarqube
export PATH="${PATH}:${SONAR_SCANNER_HOME}/bin"

# adding fly.io
export PATH="$FLYCTL_INSTALL/bin:$PATH"