# Henshin (repackaged for Maven)

This project's purpose is to simplify the process of making
[Henshin](http://www.eclipse.org/henshin/) available via Maven by packing the
contents of the JARs in the Henshin bundle into one single JAR, and pushing
that as an artifact to the public
[Clojars Maven repository](http://clojars.org)

## Usage

This project is based on the excellent
[Leiningen](https://github.com/technomancy/leiningen) tool, which you need to
install first.  Furthermore, you need an account at
[Clojars](http://clojars.org).

Once these requirements are met, this is the procedure to create a new Henshin
release and push it to [Clojars](http://clojars.org/henshin).

1. Download the current Henshin release from the
[Henshin Homepage](http://www.eclipse.org/henshin/).

2. Adjust the version number in `project.clj` to match the Henshin release.
(Please, only release stable versions.  Or simply create an issue here at
github and request that I do a new release.)

3. Unzip it somewhere, and copy all JAR files in `eclipse/plugins/` to this
project's `henshin-jars` folder.

4. Run the `do-release.zsh` script.

That will create one single JAR containing all Henshin classes (docs are not
included) and upload it to clojars.

## License

Copyright (C) 2014 Tassilo Horn

Distributed under the Eclipse Public License.
