# mda.streams 0.9.0

## Changes

* file downloads are faster and more internally streamlined

* get_metab_model now posts a modernized model to SB when practical (0.8.16)

* make get_sites private (0.8.15)

# mda.streams 0.8.14

## Status

This package is not ready for use by many, but it does currently have functions 
for:

* downloading and preparing (staging) data from outside websites

* posting staged data to ScienceBase as tab-separated (.tsv) tables with data 
units

* modifying or deleting data on ScienceBase

* synthesizing data for model testing, and posting such data to ScienceBase

* querying and modifying the table of variables and their units, sources, and 
definitions

* querying, locating, downloading, and merging data from ScienceBase

* finding site information including metadata and maps

* creating metabolism model configuration files

* using metabolism model configuration files to build input datasets from 
ScienceBase

* running metabolism models based on configuration files - once per row or many 
times per row - locally or on a cluster

* posting model config files and results to ScienceBase

* retrieving posted models and modernizing to meet current streamMetabolizer 
formatting standards

* summarizing the availability of input data

* summarizing the quality of fitted models (but some of this logic might move to
streamMetabolizer)