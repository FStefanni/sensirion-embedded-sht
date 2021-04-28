#!/usr/bin/env bash

make
rm -fr src

mkdir -p src
cp sgp-common/sht_git_version.c sgp-common/sht_git_version.h src
cp sht3x/sht3x.h sht3x/sht3x.c src
cp sht4x/sht4x.h sht4x/sht4x.c src
cp shtc1/shtc1.h shtc1/shtc1.c src
cp utils/sensirion_humidity_conversion.c utils/sensirion_humidity_conversion.h utils/sensirion_temperature_unit_conversion.c utils/sensirion_temperature_unit_conversion.h src

rm -fr \
    .circleci \
    .github \
    embedded-common \
    sample-projects \
    sht-common \
    sht3x \
    sht4x \
    shtc1 \
    tests \
    utilities \
    .clang-format \
    .gitlab-ci.yml \
    .gitmodules \
    CHANGELOG.md \
    LICENSE \
    Makefile \
    README.md

git add src
git cia -m"New cleaning"

# EOF
