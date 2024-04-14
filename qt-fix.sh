#!/bin/bash

# A script to fix when custom QT styles break due to a QT update
# This script recompiles them against the new version of QT

aurhelper=paru
echo "rebuilding qt5 plugins"
$aurhelper -aS --rebuild qt5-styleplugins qt5gtk2 qt5ct-kde

echo "rebuilding qt6 plugins"
$aurhelper -aS --rebuild qt6gtk2 qt6ct-kde
