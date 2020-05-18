library(tidyverse)
library(janitor)
library(here)

### SIXTH DHHS REPORT
may15outbreaks <- read_csv(here("outbreaks", "05-15-outbreaks.csv"),  col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "5/15") %>% 
  filter(!is.na(total_cases))

### FIFTH DHHS REPORT
may12outbreaks <- read_csv(here("outbreaks", "05-12-outbreak.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(facility = str_replace(facility, "Center\\)", "Genesis Healthcare LLC (Siler City Center)")) %>% 
  mutate(releasedate = "5/12") %>% 
  filter(!is.na(total_cases))

### FOURTH DHHS REPORT
may8outbreaks <- read_csv(here("outbreaks", "05-08-outbreak.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(facility = str_replace(facility, "Center\\)", "Genesis Healthcare LLC (Siler City Center)")) %>% 
  mutate(releasedate = "5/8") %>% 
  filter(!is.na(total_cases))
         
### THIRD DHHS REPORT
may5outbreaks <- read_csv(here("outbreaks", "05-05-outbreak.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(facility = str_replace(facility, "Columbus County", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  filter(facility != "Rehabilitation Center of") %>% 
  filter(facility != "Liberty Commons Nursing &") %>% # had to edit before importing to move the county and facility type to the right column
  mutate(facility = str_replace(facility, "Laurels of Chatham", "Laurels Of Chatham")) %>% 
  mutate(releasedate = "5/5")

### SECOND DHHS REPORT
may1outbreaks <- read_csv(here("outbreaks", "05-01-outbreak.csv")) %>% 
  clean_names() %>%
  separate(x4, into = c("staff_cases", "staff_deaths"), sep = " ", remove = T) %>% 
  separate(x5, into = c("resident_cases", "resident_deaths"), sep = " ", remove = T) %>% 
  separate(x6, into = c("total_cases", "total_deaths"), sep = " ") %>% 
  mutate(staff_cases = as.numeric(staff_cases)) %>% 
  mutate(staff_deaths = as.numeric(staff_deaths)) %>% 
  mutate(resident_cases = as.numeric(resident_cases)) %>% 
  mutate(resident_deaths = as.numeric(resident_deaths)) %>% 
  mutate(total_cases = as.numeric(total_cases)) %>% 
  mutate(total_deaths = as.numeric(total_deaths)) %>% 
  filter(facility != "Facility") %>% 
  filter(facility != "Liberty Commons Nursing &") %>% 
  filter(facility != "Columbus County") %>% 
  mutate(facility = str_replace(facility, "Rehabilitation Center of", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  mutate(releasedate = "5/1")

### FIRST DHHS REPORT
# cleaned in python
april27cases <- read_csv(here("outbreaks", "4-27-outbreak-cases.csv"))
april27facilities <- read_csv(here("outbreaks", "4-27-outbreak-facilities.csv"))
april27outbreaks <- bind_cols(april27cases, april27facilities)  %>% 
  mutate(releasedate = "4/27") %>% 
  rename(total_cases = "cases") %>% 
  rename(total_deaths = "deaths") %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Nursing & Rehabilitation Center of Columbus County", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  mutate(facility = str_replace(facility, "Pruitt Health -Carolina Point", "Pruitt Health-Carolina Point")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources -Outer Banks", "Peak Resources-Outer Banks")) %>% 
  mutate(facility = str_replace(facility, "LongLeaf Neuro -Medical Treatment Center", "LongLeaf Neuro-Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Home- Salisbury", "NC State Veterans Home - Salisbury")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor Tryon", "White Oak Manor-Tryon")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care - Marshville", "Autumn Care- Marshville"))

# combine
alloutbreaks <- bind_rows(april27outbreaks, may1outbreaks, may5outbreaks, may8outbreaks, may12outbreaks, may15outbreaks)

### ANALYZE
# total cases and deaths for all facilities in the latest report
may15outbreaks %>% 
  adorn_totals(where = "row") %>% tail(5)

# total cases and deaths for just nursing homes
may15outbreaks %>% filter(facility_type == "Nursing Home") %>% 
  adorn_totals(where = "row") %>% tail(5)

# differences between latest two reports
alloutbreaks %>% 
  select(facility, releasedate, total_cases)%>% 
  spread(releasedate, total_cases) %>% 
  mutate(diff = `5/15` - `5/12`) %>% View()
  # mutate(cases512 = as.numeric(ifelse(releasedate == "5/15", total_cases, NA))) %>% 
  # mutate(cases58 = as.numeric(ifelse(releasedate == "5/12", total_cases, NA))) %>% 
  # filter(releasedate == "5/15" | releasedate == "5/12") %>% 
  # mutate(diff = sum(cases512 - cases58)) %>% View()

# differences between latest report and one week prior
alloutbreaks %>% 
  select(facility, releasedate, total_cases)%>% 
  spread(releasedate, total_cases) %>% 
  mutate(diff = `5/15` - `5/8`) %>% View()
# mutate(cases512 = as.numeric(ifelse(releasedate == "5/12", total_cases, NA))) %>% 
#   mutate(cases58 = as.numeric(ifelse(releasedate == "5/5", total_cases, NA))) %>% 
#   filter(releasedate == "5/12" | releasedate == "5/5") %>% 
#   mutate(diff = sum(cases512 - cases58)) %>% View()

# list of the facility names for two latest reports
facilities512 <- may12outbreaks$facility

facilities515 <- may15outbreaks$facility

# which facilities are new additions to the latest report
may15outbreaks %>% 
  filter(!facilities515 %in% may12outbreaks$facility) %>% View()

# finding facilities that have been removed
# how many times do facilities show up? 
count_of_facilities <- alloutbreaks %>% 
  count(facility_county, facility)

# facilities that only show up once
one_facs <- count_of_facilities %>% 
  filter(n == 1)

# list of the one timers
list <- one_facs$facility

# one timers that show up every time but 5/8 (to see the facilities that dropped off)
alloutbreaks %>% 
  filter(facility %in% list) %>% View()

# df of facilities that only show up two or three times to ensure that they show up consecutively
twoandthree_facs <- count_of_facilities %>% 
  filter(n != 1, n != 4) 

# list of the names of the two and three-ers
list2 <- twoandthree_facs$facility

# view to see if they show up consecutively and haven't dropped off
alloutbreaks %>% 
  filter(facility %in% list2) 

# list of facility names
allfacilities <- alloutbreaks$facility

# df of just the latest outbreaks
lasttwo <- alloutbreaks %>% 
  filter(releasedate == "5/12" | releasedate == "5/15") %>% 
  count(facility)

# LOOP THAT DOESNT QUITE WORK/i need to figure out
# test <- alloutbreaks
# for(string in may8outbreaks$facility) if (string %in% "Center") test$facility <- "bob"
