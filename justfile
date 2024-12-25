predict image:
    #!/usr/bin/env bash
    set -euxo pipefail
    export image_base=$(echo "{{image}}" | sed -E 's/\.[^.]+$//')
    cog predict -i image="@{{image}}" -o "$image_base.glb"
