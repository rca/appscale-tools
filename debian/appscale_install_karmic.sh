#!/bin/bash

. debian/appscale_install_functions.sh

DESTDIR=$2
DIST=karmic

case "$1" in
    tools)
	installappscaletools
	;;
    all)
	# scratch install of appscale including post script.
	installappscaletools
	postinstallappscaletools
	keygen
	;;
esac
