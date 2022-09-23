FROM rockylinux:9-minimal
RUN microdnf install -y texlive texlive-latex texlive-preprint; microdnf clean all 
ARG UID=1000
ARG GID=1000
ARG LATEXFILE=oscola
RUN useradd -U -u $UID appuser
USER appuser
CMD pdflatex -synctex=1 -interaction=nonstopmode $LATEXFILE ; pdflatex -synctex=1 -interaction=nonstopmode $LATEXFILE ; biber $LATEXFILE ; pdflatex -synctex=1 -interaction=nonstopmode $LATEXFILE ; splitindex $LATEXFILE -- -s oscola.ist ; makeindex oscola-general ; pdflatex -synctex=1 -interaction=nonstopmode $LATEXFILE