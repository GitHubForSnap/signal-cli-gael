# Configure the package versions
vi ./snap/local/build/build.sh

# Build signal-cli-gael
./snap/local/run.sh

# Read the logs
vi ./snap/local/build/build.log

# Configure the snap version
vi ./snap/snapcraft.yaml

# Create the snap
snapcraft --verbose

# Upload the snap
snapcraft upload --release=stable SNAP_PACKAGE
