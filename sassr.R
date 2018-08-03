#!/usr/bin/env Rscript

library(sass)
library(rlang)
library(minimist)
args <- minimist(args = commandArgs(TRUE))

if (rlang::has_length(args$`_`)) {
  cat(sass::compile(args$`_`))
}
