#!/bin/bash

#version=v20191108
version=v20200218
version=v20200702
expid=ssp245
model=NorESM2-MM
years1=(2014 2015 $(seq 2021 10 2091))
years2=(2020 2020 $(seq 2030 10 2100))

#years1+=(2015 $(seq 2021 10 2091))
#years2+=(2021 $(seq 2031 10 2101))

${CMOR_ROOT}/workflow/cmorCheck.sh -v=$version -e=$expid -m=$model -yrs1="${years1[*]}" -yrs2="${years2[*]}"

