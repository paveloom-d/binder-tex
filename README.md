# Description

### A notice
If you are unsure, please refer to the description on the last commit on the
[`master`](https://github.com/paveloom-d/binder-tex/tree/master) branch.

### What is this?

This is a Docker image from a series of images based on the
[`paveloom/binder-base`](https://github.com/paveloom-d/binder-base) image. It adds some
TeX dependencies and a couple of Python packages. See more under the spoiler:

<details>
<summary>Content of the image</summary>
<ul>
  <li>
    Base image:
    <a href="https://github.com/paveloom-d/binder-base">paveloom/binder-base</a>
    (0.1.1)
  </li>
  <li>TexLive:</li>
  <ul>
    <li>dvipng</li>
    <li>texlive-latex-extra</li>
    <li>texlive-fonts-extra</li>
    <li>texlive-lang-cyrillic</li>
    <li>cm-super</li>
  </ul>
  <li>Python packages:</li>
  <ul>
    <li>wheel</li>
    <li>numpy</li>
    <li>matplotlib</li>
  </ul>
</ul>
</details>

### Any examples?

Yeah, there's a Jupyter notebook you can watch static
[here on GitHub](https://github.com/paveloom-d/binder-tex/blob/master/examples/example.ipynb)
or interactively on
[Binder](https://mybinder.org/v2/gh/paveloom-d/binder-tex/master?urlpath=lab/tree/example.ipynb).

### How do I use it?

The image is hosted on [Docker Hub](https://hub.docker.com/r/paveloom/binder-tex).
To get it, in your `Dockerfile` just specify:

```dockerfile
FROM paveloom/binder-tex:tag
```

where the `tag` is one of the following:

* [0.1.0](https://github.com/paveloom-d/binder-tex/releases/tag/v0.1.0)
