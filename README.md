# Introduction
When I've found myself searching over the Internet for another necessary tool, I've decided to create this.
ATM it's just one Powershell script (yeah, I'm using Windows, hello GitHub) that uses [chocolatey](https://chocolatey.org/) package manager (How to install it you can find it [here](https://chocolatey.org/install#install-with-powershellexe)) on your Windows 10 laptop/desktop and install all the staff that you can see in `devopstoolsinstall.ps1` file. Not all the staff about DevOps but most of them I use in my job. If you don't need some of them just comment them in `devopstoolsinstall.ps1` **before** you'll execute it.
# Upgrade
Other useful side of this is that fron now you can easily upgrade any staff you've installed via chocolatey. For example:

```powershell
choco upgrade git
```

But the most awesome thing IMO is ability to upgrade **all** the staff installed via chocolatey (similar to Ubuntu's "sudo apt upgrade"):

```powershell
choco upgrade all
```
# So, Enjoy!
