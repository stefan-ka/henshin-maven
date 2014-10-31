#!/bin/zsh

echo "Unzipping jars in henshin-jars/..."
cd henshin-jars/
for x in *.jar; do
    unzip -o $x;
done
cd ..
rm -rf henshin-jars/META-INF/

echo "Creating a JAR"
lein jar

file=`echo target/henshin-*.jar`

if [[ ! -f ${file} ]]; then
    echo "Error: ${file} doesn't exist!"
    exit 1
fi

echo "Install locally or push to Clojars? (L or Clojars)"
read LocalOrClojars

if [[ $LocalOrClojars == "L" ]]; then
    echo "Installing in the local maven repo"
    lein install
elif [[ $LocalOrClojars == "Clojars" ]]; then
    echo "Pushing to Clojars"
    lein deploy clojars
else
    echo "Ok, won't do anything"
fi

echo "Fini."
