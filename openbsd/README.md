I'm in love with a font called [tamzen](https://github.com/sunaku/tamzen-font). Get it or use whatever you want. For the bar, I have a few icons, courtesy of 
[siji-font](https://github.com/stark/siji).

```
$ cp *.pcf ~/.fonts/bitmap
$ cd ~/.fonts/bitmap
$ mkfontdir
$ mkfontscale
$ # refer the xsession file
```

The `ufetch` script is from [jschx](https://gitlab.com/jschx/ufetch).

To get the packages I have, there is a file called `installed`.
Do a 
```
$ doas pkg_add -l installed
```
