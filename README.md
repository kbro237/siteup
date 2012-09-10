`siteup` takes an arbitrary site presumed to be down and checks on it every five minutes until it can gladly report the site is back up. As is, it notifies [Growl](http://growl.info/) upon success. 

I'm sure the effect of this script is better accomplished with other software, but I wrote this to practice my scripting.

## Notes ##

- the site to check can be given in `stdin` ... or else it asks for it
- change the interval variable if you don't like 5 minutes
- sorry if the colors look stupid or the shell escaping of them doesn't work
