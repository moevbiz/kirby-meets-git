bash version of https://getkirby.com/docs/cookbook/setup/git.
The script will clone the [kirby plainkit](https://github.com/getkirby/plainkit) and install kirby as a git submodule.

### How to use

```
bash <(curl -Ls https://raw.githubusercontent.com/moevbiz/kirby-meets-git/master/kirby.sh) your-folder-name
```
(replace 'your-folder-name' with a name for your new folder, obvs).

#### Alternatively:

1. copy `kirby.sh` to the desired location for your [kirby](https://getkirby.com/) installation
2. use the command line to navigate to said destination
3. execute `sh kirby.sh your-folder-name`
4. the script will clone the [kirby plainkit](https://github.com/getkirby/plainkit) and install kirby as a git submodule
5. you can now run `./update.sh` from inside your project folder to update kirby

Copying the script to your directory could be useful if all your web projects are stored in a single location, i.e when using [laravel valet](https://laravel.com/docs/valet) for development.

👍

(requires [git](https://git-scm.com/))

(please note that kirby is **not freeware** and requires a valid license to be used on a production server)
