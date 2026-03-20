#!/bin/bash

lake build
cp .i18n/en/Game.pot .i18n/en/Game.po
lake exe i18n --export-json
