## BUILD
```shell
curl -fsSL https://pixi.sh/install.sh | bash
source ~/.bashrc
pixi g i rattler-build
git clone https://github.com/way-zer/conda-packages.git
rattler-build build -r p4lang-pi
rattler-build build -r p4lang-bmv2
```
