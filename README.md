# Henshin (repackaged for Maven) 
[![Clojars Project](https://img.shields.io/clojars/v/org.eclipse.emf.henshin/henshin.svg)](https://clojars.org/org.eclipse.emf.henshin/henshin) [![Clojars Project](https://img.shields.io/clojars/v/org.eclipse.emf.henshin/henshin-interpreter.svg)](https://clojars.org/org.eclipse.emf.henshin/henshin-interpreter)

This project's purpose is to simplify the process of making [Henshin](http://www.eclipse.org/henshin/) available via Maven by packing the contents of the JARs in the Henshin bundle into one single JAR, and pushing that as an artifact to the public [Clojars Maven repository](http://clojars.org).

You can use the Henshin library within your Maven or Gradle build as follows:

**Gradle**:
```gradle
compile 'org.eclipse.emf.henshin:henshin:1.4.0'
```

**Maven**:
```xml
<dependency>
  <groupId>org.eclipse.emf.henshin</groupId>
  <artifactId>henshin</artifactId>
  <version>1.4.0</version>
</dependency>
```

Do not forget to add the Clojars repository to your build:
https://clojars.org/repo/

If you only need the Henshin interpreter and model without all the other plugins, use the following artifact:

**Gradle**:
```gradle
compile 'org.eclipse.emf.henshin:henshin-interpreter:1.4.0'
```

**Maven**:
```xml
<dependency>
  <groupId>org.eclipse.emf.henshin</groupId>
  <artifactId>henshin-interpreter</artifactId>
  <version>1.4.0</version>
</dependency>
```

**Note:** The Henshin interpreter in version 1.4.0 has also been published to the Maven Central (including source and javadoc JAR's) by the [Context Mapper](https://contextmapper.org/) project. Have a look at [https://github.com/ContextMapper/henshin-interpreter](https://github.com/ContextMapper/henshin-interpreter). You may want to use this version if you need the interpreter only. (does not require additional Maven repository in your build)

## Usage

This project is based on the excellent [Leiningen](https://github.com/technomancy/leiningen) tool, which you need to
install first. Furthermore, you need an account at [Clojars](http://clojars.org) and be added to the _org.eclipse.emf.henshin_ group (create an [issue](https://github.com/stefan-ka/henshin-maven/issues) if you want to deploy a new version by yourself).

Once these requirements are met, this is the procedure to create a new Henshin
release and push it to [Clojars](https://clojars.org/org.eclipse.emf.henshin/henshin).

1. Download the current Henshin release from the [Henshin Homepage](http://www.eclipse.org/henshin/).

2. Adjust the version number in `project.clj` to match the Henshin release.
(Please, only release stable versions. Or simply create an [issue](https://github.com/stefan-ka/henshin-maven/issues) here at
github and request that I do a new release.)

3. Unzip it somewhere, and copy all JAR files in `eclipse/plugins/` to this
project's `henshin-jars` folder.

4. Run the `do-release.zsh` script.

That will create one single JAR containing all Henshin classes (docs are not included) and upload it to clojars.

## License
Henshin is Distributed under the Eclipse Public License 1.0.
