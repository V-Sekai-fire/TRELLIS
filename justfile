predict image:
    #!/usr/bin/env bash
    set -euxo pipefail
    export image_base=$(echo "{{image}}" | sed -E 's/\.[^.]+$//')
    cog predict -i image="@{{image}}" -o "$image_base.glb"

benchmark:
    hyperfine --warmup 3 --export-json benchmark.json just predict "assets/example_image/The_front_view_is_a_young_woman_mage_light_guardian_with_realistic_adu_S3728563760_St8_G1.png"