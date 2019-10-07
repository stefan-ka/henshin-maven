(defproject org.eclipse.emf.henshin/henshin-interpreter "1.4.0"
  :description "The Henshin Interpreter
(Inofficially repackaged for Maven)"
  :url "https://github.com/stefan-ka/henshin-maven"
  ;; Where are the Henshin class files?
  :filespecs [{:type :path :path "henshin-jars"}]
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :jar-exclusions [#"messages.properties"
                   #".*\.jar$"
                   #"\.keep$"
                   #"^(\.git/|colorModes|icons)"])
