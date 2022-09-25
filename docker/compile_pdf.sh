#!/usr/bin/env bash
# compile_pdf.sh
#
# Copyright (C) 2022 - Carlos "casep" Sepulveda
# casep@fedoraproject.org
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

if [ ! -d "$2" ] ; then mkdir $2 ; fi
pdflatex -synctex=1 -interaction=nonstopmode -output-directory $2 $1
pdflatex -synctex=1 -interaction=nonstopmode -output-directory $2 $1
biber $2/$1
pdflatex -synctex=1 -interaction=nonstopmode -output-directory $2 $1
splitindex $2/$1 -- -s oscola.ist
makeindex $2/$1 oscola-general
pdflatex -synctex=1 -interaction=nonstopmode -output-directory $2 $1
pdflatex -synctex=1 -interaction=nonstopmode -output-directory $2 $1