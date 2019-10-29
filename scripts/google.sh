#!/bin/bash
echo 'iasdiasd'
google()
{
    echo 'hiii'
    local s="$_"
    local query=

    case "$1" in
        '')   ;;
        that) query="search?q=${s//[[:space:]]/+}" ;;
        *)    s="$*"; query="search?q=${s//[[:space:]]/+}" ;;
    esac

    echo open /Applications/Google\ Chrome.app/ "http://www.google.com/${query}"
}
