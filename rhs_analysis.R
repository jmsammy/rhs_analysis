library(tidyverse)
library(rnrfa)

rhs <- read_excel("rhs_data.xlsx") %>%
  janitor::clean_names() %>%
  rename(county_country = county_cnutry)

rhs_no_na <- rhs %>%
  filter(!is.na(grid_ref))

rhs_no_na$latlong <- osg_parse(rhs_no_na$grid_ref, coord_system = "WGS84")

?st_transform
names(rhs)
