#!/bin/bash
echo "patching source..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/patch"

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/padding.patch
git am $CURRENT_DIR/headsup.patch

cd $ROOTDIR/kernel/oneplus/sm8250
git am $CURRENT_DIR/kernel.patch

cd $ROOTDIR
echo "Done"