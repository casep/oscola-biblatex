FROM fedora:latest
RUN dnf install -y texlive texlive-latex texlive-preprint texlive-splitindex texlive-imakeidx texlive-libertine biber; dnf clean all
ARG UID=1000
ARG GID=1000
RUN useradd -U -u $UID appuser
USER appuser
CMD pdflatex -synctex=1 -interaction=nonstopmode oscola ; pdflatex -synctex=1 -interaction=nonstopmode oscola ; biber oscola ; pdflatex -synctex=1 -interaction=nonstopmode oscola ; splitindex oscola -- -s oscola.ist ; makeindex oscola-general ; pdflatex -synctex=1 -interaction=nonstopmode oscola ; pdflatex -synctex=1 -interaction=nonstopmode oscola