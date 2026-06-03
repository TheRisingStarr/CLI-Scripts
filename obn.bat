@echo off

set note=%1
shift

echo - %* >> E:\Obsidian\Galaxy\%note%.md

echo Added to %note%.md