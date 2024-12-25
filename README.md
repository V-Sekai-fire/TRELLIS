# TRELLIS

🚀 **[Try TRELLIS on Replicate](https://replicate.com/firtoz/trellis)** - Generate 3D models from images in your browser!

> **Note**: This Replicate deployment is maintained by firtoz, a fan of the TRELLIS project, and is not officially affiliated with Microsoft or the TRELLIS team. All rights, licenses, and intellectual property belong to Microsoft. For the original project, please visit [microsoft/TRELLIS](https://github.com/microsoft/TRELLIS).

TRELLIS is a powerful 3D asset generation model that converts text or image prompts into high-quality 3D assets. This Replicate deployment focuses on the image-to-3D generation capabilities of TRELLIS.

<img src="https://github.com/microsoft/TRELLIS/blob/main/assets/teaser.png?raw=true" width="100%">

## Model Description

TRELLIS uses a unified Structured LATent (SLAT) representation that enables generation of different 3D output formats. The model deployed here is TRELLIS-image-large, which contains 1.2B parameters and is trained on a diverse dataset of 500K 3D objects.

Key features:

- Generate high-quality 3D assets from input images
- Multiple output formats: 3D Gaussians, Radiance Fields, and textured meshes
- Detailed shape and texture generation
- Support for various viewpoint renderings

For more examples and to try it directly in your browser, visit the [Replicate model page](https://replicate.com/firtoz/trellis).

## Input Format

The model accepts:

- An input image (PNG or JPEG format)
- Optional parameters for controlling the generation process

## Output Format

The model outputs:

- A GLB file containing the generated 3D model with textures
- Preview renders from multiple angles
- Optional: Raw 3D Gaussians or Radiance Field representations

## Example Usage

```python
import replicate

output = replicate.run(
    "firtoz/trellis:version",
    input={
        "seed": 0,
        "image": "https://replicate.delivery/pbxt/M6rvlcKpjcTijzvLfJw8SCWQ74M1jrxowbVDT6nNTxREcvxO/ephemeros_cartoonish_character_art_cyberpunk_crocodile_white_ba_486fb649-bc68-46a0-b429-751b43734b89.png",
        "texture_size": 1024,
        "mesh_simplify": 0.95,
        "generate_color": True,
        "generate_model": True,
        "randomize_seed": True,
        "generate_normal": True,
        "ss_sampling_steps": 12,
        "slat_sampling_steps": 12,
        "ss_guidance_strength": 7.5,
        "slat_guidance_strength": 3
    }
)
print(output)
```

## Example Openapi Line Usage

```bash
cog serve
# Ensure the server is running and note the port it is using (it may vary)
curl -o openapi.json http://localhost:<port>/openapi.json
# Open the openapi.json file in https://mermade.github.io/openapi-gui/
# Use the OpenAPI GUI to upload the image
# "image": "https://replicate.delivery/pbxt/M6rvlcKpjcTijzvLfJw8SCWQ74M1jrxowbVDT6nNTxREcvxO/ephemeros_cartoonish_character_art_cyberpunk_crocodile_white_ba_486fb649-bc68-46a0-b429-751b43734b89.png"
```

## Citations

```bibtex
@article{xiang2024structured,
    title   = {Structured 3D Latents for Scalable and Versatile 3D Generation},
    author  = {Xiang, Jianfeng and Lv, Zelong and Xu, Sicheng and Deng, Yu and Wang, Ruicheng and Zhang, Bowen and Chen, Dong and Tong, Xin and Yang, Jiaolong},
    journal = {arXiv preprint arXiv:2412.01506},
    year    = {2024}
}
```

## License

TRELLIS is released under the MIT License. See [LICENSE](https://github.com/microsoft/TRELLIS/blob/main/LICENSE) for details.

## Links

- [Project Page](https://trellis3d.github.io)
- [Paper](https://arxiv.org/abs/2412.01506)
- [GitHub Repository](https://github.com/microsoft/TRELLIS)
- [Hugging Face Demo](https://huggingface.co/spaces/JeffreyXiang/TRELLIS)
