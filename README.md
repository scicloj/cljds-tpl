# Clojure data science with clojure + R + python
Doing data science projects with clojure requires from time to time to tap into the existing libraries of R and python.

Two projects for interoperability are:

* R-clojure interop: https://github.com/scicloj/clojisr
* python clojure interop: https://github.com/clj-python/libpython-clj

# Why use docker ?
Classically the usage of docker for java/clojure was not given major impoprtance. The JVM + maven / leiningen / clojure library 
management tools guaranty
a high level of "ease of installation" and "reproducibility" without using any extra tool.

The moment python or R gets introduced in a workflow, this change drastically. 
Both ecosystem are known of having sometimes difficulties of installing libraries, due to OS dependencies.

This can be solved to a large extend via docker. So the idea of having a single Dockerfile 
(as a base) for data science project which want to use clojure + R + python at the same time was borne.
