# provision-osx
Provisioning details for OSX

## Before using

#### GitHub
Be sure to generate a new SSH-key for use with GitHub.

```shell
ssh-keygen -t rsa -b 4096 -C "your.github.email@domain.com"
ssh-add -K /path/to/generated/key
pbcopy < /path/to/generate/key
```

Go to [GitHub](https://github.com/settings/ssh) and paste your newly generated key. Test your GitHub access by running

```shell
ssh -T git@github.com
```

If you run into any issues, refer to [this GitHub wiki page](https://help.github.com/articles/generating-ssh-keys/).

#### Customization
In the `group_vars/all.yml` file you can specify the custom values needed for some of the actions.

* __user__: Your local username.
* __computer_name__: The name of your computer.

---

## Usage

```shell
git clone git@github.com:jeroenseegers/provision-osx.git
cd provision-osx
./provision.sh
```
