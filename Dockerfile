FROM conda/miniconda3
RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge openjdk r-base=4.0.0
RUN apt-get update && apt-get -y install curl rlwrap
RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh && chmod +x linux-install-1.10.1.536.sh && ./linux-install-1.10.1.536.sh && clojure -e "\"ok\""
RUN curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && chmod a+x /usr/local/bin/lein && lein version
RUN Rscript -e 'install.packages("Rserve",,"http://rforge.net")'
CMD ["lein","repl",":start",":port","12345",":host", "0.0.0.0"]
