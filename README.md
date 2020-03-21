# Covid19@Home

Folding proteins on GPUs to fight Covid-19.

What's this all about?
- https://foldingathome.org/2020/03/10/covid19-update/
- https://foldingathome.org/2020/03/15/coronavirus-what-were-doing-and-how-you-can-help-in-simple-terms/
- https://www.reddit.com/r/pcmasterrace/comments/flgm7q/ama_with_the_team_behind_foldinghome_coronavirus/.compact

Run the following to start folding proteins to fight Covid-19 on your GPUs

```
docker run --runtime=nvidia --init danieljh/covid19-at-home
```

Using the GPU container requires [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) on the host.

We recommend monitoring GPUs and CPUs via
- `htop`
- `watch nvidia-smi`
- `nvtop` (available from https://github.com/Syllo/nvtop)

Project adapted from https://github.com/stefancrain/folding-at-home for simplicity and my 6x GTX 1080 TI GPU rig use case.

![](./danipod.jpg)
