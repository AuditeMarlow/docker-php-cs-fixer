PHP Coding Standards Fixer
==========================

Usage
-----
Much like just using `php-cs-fixer` like you normally would, you just run it
from the image instead:

```sh
$ docker run --rm --volume "$PWD":/app --workdir /app \
    auditemarlow/php-cs-fixer:latest fix /path/to/dir
$ docker run --rm --volume "$PWD":/app --workdir /app \
    auditemarlow/php-cs-fixer:latest fix /path/to/file
```
