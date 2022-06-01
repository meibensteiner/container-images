# Container images for a homelab

## Deployment

To see how I deploy these services on my homelab, check out [homelab](https://github.com/meibensteiner/homelab)

## Support 

All images are built weekly and should therefore always be on the latest version. The most recent build gets the tag "latest".

Afterwards, a smoketest is performed to ensure nothing has drastically changed. If the smoketest is successful, the image gets labeled with "stable".

All images are treated this way. However, I can only garantee support for images currently used in my homelab.

In use:
- [minidlna](minidlna)

Not in use:
- [nfs4](nfs4)
- [tftp](tftp)