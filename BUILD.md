# Configure the package versions
vi ./snap/local/build/build.sh

# Build signal-cli-gael
./snap/local/run.sh

# Read the logs
vi ./snap/local/build/build.log

# Configure the snap version
vi ./snap/snapcraft.yaml

# Edit README.md
vi README.md

# Create the snap
snapcraft --verbose

# Export credentials
export SNAPCRAFT_STORE_CREDENTIALS=$(cat snapcraft_creds.txt)

# Upload the snap
snapcraft upload --release=stable SNAP_PACKAGE

# Push to GitHub
[...]
