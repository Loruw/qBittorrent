# keep it all lowercase to match program naming convention on *nix systems
PROJECT_NAME = qbittorrent

# Define version numbers here
VER_MAJOR = 3
VER_MINOR = 4
VER_BUGFIX = 0
VER_BUILD = 0
VER_STATUS = alpha # Should be empty for stable releases!

# Don't touch the rest part
PROJECT_VERSION = $${VER_MAJOR}.$${VER_MINOR}.$${VER_BUGFIX}

!equals(VER_BUILD, 0) {
    PROJECT_VERSION = $${PROJECT_VERSION}.$${VER_BUILD}
}

PROJECT_VERSION = $${PROJECT_VERSION}$${VER_STATUS}

DEFINES += QBT_VERSION_MAJOR=$${VER_MAJOR}
DEFINES += QBT_VERSION_MINOR=$${VER_MINOR}
DEFINES += QBT_VERSION_BUGFIX=$${VER_BUGFIX}
DEFINES += QBT_VERSION_BUILD=$${VER_BUILD}

os2 {
    DEFINES += QBT_VERSION=\'\"v$${PROJECT_VERSION}\"\'
    DEFINES += QBT_VERSION_2=\'\"$${PROJECT_VERSION}\"\'
}
else {
    DEFINES += QBT_VERSION=\\\"v$${PROJECT_VERSION}\\\"
    DEFINES += QBT_VERSION_2=\\\"$${PROJECT_VERSION}\\\"
}
