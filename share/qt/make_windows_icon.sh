#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/freicoin.png
ICON_DST=../../src/qt/res/icons/freicoin.ico
convert ${ICON_SRC} -resize 16x16 freicoin-16.png
convert ${ICON_SRC} -resize 32x32 freicoin-32.png
convert ${ICON_SRC} -resize 48x48 freicoin-48.png
convert freicoin-16.png freicoin-32.png freicoin-48.png ${ICON_DST}

