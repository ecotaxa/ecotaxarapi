#
# Read openapi.json
# Define general functions
#
# (c) 2025 Jean-Olivier Irisson, GNU General Public License v3

library("jsonlite")

# load API description
api <- fromJSON("https://ecotaxa.obs-vlfr.fr/api/api/openapi.json", simplifyDataFrame=F, simplifyVector=F)
# api <- fromJSON("tools/openapi.json", simplifyDataFrame=F, simplifyVector=F)

# Extract elements from a list, as a vector
get_elements <- function(x, id) { sapply(x, getElement, id) }
gel <- get_elements
