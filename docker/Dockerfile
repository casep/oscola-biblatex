FROM fedora:latest
RUN dnf install -y texlive texlive-latex texlive-preprint texlive-splitindex texlive-imakeidx texlive-libertine biber; dnf clean all
ARG UID=1000
ARG GID=1000
ARG LATEXFILE=oscola
ARG OUTPUT_FOLDER=pdf
RUN useradd -U -u $UID appuser
USER appuser
COPY --chown=appuser:appuser compile_pdf.sh /opt/
ENTRYPOINT /opt/compile_pdf.sh $LATEXFILE $OUTPUT_FOLDER