bash version of https://getkirby.com/docs/cookbook/setup/git

### How to use

1. copy `kirby.sh` to the desired location for your [kirby](https://getkirby.com/) installation
2. use the command line to navigate to said destination
3. execute `sh kirby.sh your-folder-name`
4. the script will clone the [kirby plainkit](https://github.com/getkirby/plainkit) and install kirby as a git submodule
5. you can now enter `./update.sh` from inside your project folder to update kirby

👍

especially useful if all your web projects are stored in a single location, i.e when using [laravel valet](https://laravel.com/docs/valet) for development

(requires [git](https://git-scm.com/))

(please note that kirby is **not freeware** and requires a valid license to be used on a production server)
