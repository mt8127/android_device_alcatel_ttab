ROOT="${PWD}"
DEVICE_DIR="device/alcatel/ttab"
REPOSITORIES=(
    'frameworks/av'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --whitespace=nowarn --keep-cr "${ROOT}/${DEVICE_DIR}/patches/${repository}"/*

    cd "${ROOT}"
done
