FROM rockylinux:9-minimal
RUN microdnf install -y texlive texlive-latex texlive-preprint; microdnf clean all 
ARG UID=1000
ARG GID=1000
RUN useradd -U -u $UID appuser
USER appuser
CMD /usr/bin/pdflatex /mnt/*.tex