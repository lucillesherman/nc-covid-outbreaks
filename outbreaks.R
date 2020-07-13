library(tidyverse)
library(janitor)
library(here)

july10outbreaks <- read_csv(here::here("outbreaks", "7-10-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "7/10/2020")

july7outbreaks <- read_csv(here::here("outbreaks", "7-7-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "7/7/2020")

july2outbreaks <- read_csv(here::here("outbreaks", "7-2-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "7/2/2020")

june30outbreaks <- read_csv(here::here("outbreaks", "6-30-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/30/2020")

june26outbreaks <- read_csv(here::here("outbreaks", "6-26-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/26/2020") 

june23outbreaks <- read_csv(here::here("outbreaks", "6-23-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/23/2020") 
### 

june19outbreaks <- read_csv(here::here("outbreaks", "6-19-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/19/2020") 

###

june16outbreaks <- read_csv(here::here("outbreaks", "6-16-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/16/2020") %>% 
  filter(facility != "Abernathy Laurels Newton") %>% 
  filter(facility != "Premier Living & Rehab Center") %>% 
  filter(facility != "Shelton Rd., Concord") %>% 
  filter(facility != "San Lee Dr., Sanford") %>% 
  filter(facility != "NC Hwy 42, Willow Spring")

### 

june12outbreaks <- read_csv(here::here("outbreaks", "6-12-outbreaks.csv"),  col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/12/2020") %>% 
  mutate(staff_cases = as.numeric(staff_cases))

### 

june9outbreaks <- read_csv(here::here("outbreaks", "6-9-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/9/2020") %>% 
  mutate(staff_cases = as.numeric(staff_cases))

### 
june5outbreaks <- read_csv(here::here("outbreaks", "6-5-outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/5/2020") %>% 
  filter(!is.na(total_cases)) 

### 
june2outbreaks <- read_csv(here::here("outbreaks", "6-2outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "6/2/2020") %>% 
  filter(!is.na(total_cases))

### 
may29outbreaks <- read_csv(here::here("outbreaks", "congregate_settings - congregate_data5_29.csv")) %>% 
  mutate(releasedate = "5/29/2020") %>% 
  clean_names() %>% 
  filter(!is.na(total_cases)) %>% 
  rename(facility_county = "county") %>% 
  rename(facility_type = "type")

### 
may26outbreaks <- read_csv(here::here("outbreaks", "5-26outbreaks.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "5/26/2020") %>% 
  filter(!is.na(total_cases))

###  
may22outbreaks <-  read_csv(here::here("outbreaks", "5-22outbreaks.csv"),  col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "5/22/2020") %>% 
  filter(!is.na(total_cases))

### 
may19outbreaks <-  read_csv(here::here("outbreaks", "5-19outbreaks.csv"),  col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "5/19/2020") %>% 
  filter(!is.na(total_cases))

### 
may15outbreaks <- read_csv(here::here("outbreaks", "05-15-outbreaks.csv"),  col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(releasedate = "5/15/2020") %>% 
  filter(!is.na(total_cases))

### 
may12outbreaks <- read_csv(here::here("outbreaks", "05-12-outbreak.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(facility = str_replace(facility, "Center\\)", "Genesis Healthcare LLC (Siler City Center)")) %>% 
  mutate(releasedate = "5/12/2020") %>% 
  filter(!is.na(total_cases))

### 
may8outbreaks <- read_csv(here::here("outbreaks", "05-08-outbreak.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(facility = str_replace(facility, "Center\\)", "Genesis Healthcare LLC (Siler City Center)")) %>% 
  mutate(releasedate = "5/8/2020") %>% 
  filter(!is.na(total_cases))
         
### 
may5outbreaks <- read_csv(here::here("outbreaks", "05-05-outbreak.csv"), col_names = c("facility_type", "facility_county", "facility", "staff_cases", "staff_deaths", "resident_cases", "resident_deaths", "total_cases", "total_deaths")) %>% 
  mutate(facility = str_replace(facility, "Columbus County", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  filter(facility != "Rehabilitation Center of") %>% 
  filter(facility != "Liberty Commons Nursing &") %>% # had to edit before importing to move the county and facility type to the right column
  mutate(facility = str_replace(facility, "Laurels of Chatham", "Laurels Of Chatham")) %>% 
  mutate(releasedate = "5/5/2020")

### 
may1outbreaks <- read_csv(here::here("outbreaks", "05-01-outbreak.csv")) %>% 
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
  mutate(releasedate = "5/1/2020")

### 
# cleaned in python
april27cases <- read_csv(here::here("outbreaks", "4-27-outbreak-cases.csv"))
april27facilities <- read_csv(here::here("outbreaks", "4-27-outbreak-facilities.csv"))
april27outbreaks <- bind_cols(april27cases, april27facilities)  %>% 
  mutate(releasedate = "4/27/2020") %>% 
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
alloutbreaks <- bind_rows(april27outbreaks, may1outbreaks, may5outbreaks, may8outbreaks, may12outbreaks, may15outbreaks, may19outbreaks, may22outbreaks, may26outbreaks, may29outbreaks, june2outbreaks, june5outbreaks, june9outbreaks, june12outbreaks, june16outbreaks, june19outbreaks, june23outbreaks, june26outbreaks, june30outbreaks, july2outbreaks, july7outbreaks, july10outbreaks) %>% 
  mutate(facility = str_replace(facility, "Aston Park Health Care Center Inc", "Aston Park Health Care")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care – Cornelius", "Autumn Care - Cornelius")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care – Drexel", "Autumn Care - Drexel")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care – Saluda", "Autumn Care - Saluda")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care – Statesville", "Autumn Care - Statesville")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care- Marshville", "Autumn Care – Marshville")) %>% 
  mutate(facility = str_replace(facility, "Ayden Court Nursing and Rehabilitation Center", "Ayden Court Nursing and Rehab")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health & Rehab / Hendersonville", "Brian Center Health & Rehab/Hendersonville")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health & Rehabilitation/Hendersonville", "Brian Center Health & Rehab/Hendersonville")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health and Rehab / Hickory Viewmont", "Brian Center Health & Rehab/Hickory Viewmont")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health and Rehab/Hickory Viewmont", "Brian Center Health & Rehab/Hickory Viewmont")) %>% 
  mutate(facility = str_replace(facility, "Brookdale Berkeley Boulevard", "Brookdale Berkeley Blvd")) %>% 
  mutate(facility = str_replace(facility, "Camden Health & Rehab", "Camden Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Deerfield Episcopal Retirement Community Inc", "Deerfield Episcopal Retirement Community")) %>% 
  mutate(facility = str_replace(facility, "Grace Heights Health and Rehabilitation", "Grace Heights Health and Rehab")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Columbus", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Nursing & Rehabilitation Center", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Nursing and Rehab Ctr of Columbus Cty", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Nursing & Rehabilitation Center of Columbus County of Columbus County", "Liberty Commons Nursing & Rehabilitation Center of Columbus County")) %>% 
  mutate(facility = str_replace(facility, "Long Leaf Neuro-Medical Treatment Center", "LongLeaf Neuro-Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "LongLeaf Neuro–Medical Treatment Center", "LongLeaf Neuro-Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "Louisburg Healthcare and Rehab", "Louisburg Healthcare and Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "Louisburg Healthcare & Rehabilitation Center", "Louisburg Healthcare and Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "Louisburg Healthcare and Rehab Center Center", "Louisburg Healthcare and Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "Monroe Rehabilitation Center", "Monroe Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Home – Salisbury", "NC State Veterans Home - Salisbury")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Home – Kinston", "NC State Veterans Home - Kinston")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Nursing Home – Fayetteville", "NC State Veterans Nursing Home - Fayetteville")) %>% 
  mutate(facility = str_replace(facility, "O’Berry Neuro-Medical Treatment Center", "O’Berry Neuro- Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "O’Berry Neuro-Medical Treatment Center", "O’Berry Neuro- Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "O'Berry Neuro-Medical Treatment Center", "O’Berry Neuro- Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "Parkview Health and Rehabilitation", "Parkview Health and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources -  Alamance", "Peak Resources - Alamance")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources – Charlotte", "Peak Resources - Charlotte")) %>% 
  mutate(facility = str_replace(facility, "Pembroke Center/Genesis", "Pembroke Center")) %>% 
  mutate(facility = str_replace(facility, "Pembroke Center / Genesis", "Pembroke Center")) %>% 
  mutate(facility = str_replace(facility, "Pinehurst Healthcare & Rehabilitation Center", "Pinehurst HealthCare & Rehab")) %>% 
  mutate(facility = str_replace(facility, "Pruitt Health – Carolina Point", "Pruitt Health-Carolina Point")) %>% 
  mutate(facility = str_replace(facility, "Pruitt Health - Carolina Point", "Pruitt Health-Carolina Point")) %>% 
  mutate(facility = str_replace(facility, "Silas Creek Rehabilitation", "Silas Creek Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Springbrook Nursing and Rehabilitation", "Springbrook Nursing and Rehab")) %>% 
  mutate(facility = str_replace(facility, "Treyburn Rehabilitation Center", "Treyburn Rehab & Nursing")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare -Ramseur", "Universal Healthcare Ramseur")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare - Ramseur", "Universal Healthcare Ramseur")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare - Lillington", "Universal Health Lillington")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare Lillington", "Universal Health Lillington")) %>% 
  mutate(facility = str_replace(facility, "Universal Health Care and Rehabilitation Center - Concord", "Universal Healthcare Concord")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare - Concord", "Universal Healthcare Concord")) %>% 
  mutate(facility = str_replace(facility, "Village Green Health and Rehabilitation", "Village Green Health & Rehab")) %>% 
  mutate(facility = str_replace(facility, "Wadesboro Health & Rehab Center", "Wadesboro Health & Rehab")) %>% 
  mutate(facility = str_replace(facility, "Wellington Rehabilitation and Healthcare", "Wellington Rehab and Healthcare")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor - Burlington", "White Oak Manor-Burlington")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor – Burlington", "White Oak Manor-Burlington")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor – Tryon", "White Oak Manor-Tryon")) %>% 
  mutate(facility = str_replace(facility, "Wilora Lake Healthcare Center", "Wilora Lake Health Care")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health and Rehab/HickoryViewmont", "Brian Center Health & Rehab/Hickory Viewmont")) %>% 
  mutate(facility = str_replace(facility, "Carrington Place	 Matthews", "Carrington Place, Matthews")) %>% 
  mutate(facility = str_replace(facility, "Carrington Place, Matthews", "Carrington Place, Matthews")) %>% 
  mutate(facility = str_replace(facility, "NC Hwy 42	 Willow Spring", "NC Hwy 42, Willow Spring")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Nursing Home –Fayetteville", "NC State Veterans Nursing Home - Fayetteville")) %>% 
  mutate(facility = str_replace(facility, "Old Hwy 16	 Grassy Creek", "Old Hwy 16, Grassy Creek")) %>% 
  mutate(facility = str_replace(facility, "Parkview Health and Rehabilitation Center", "Parkview Health and Rehabilitation Center Center")) %>% 
  mutate(facility = str_replace(facility, "Patterson Ave.	 Concord", "Patterson Ave., Concord")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources - Alamance", "Peak Resources – Alamance")) %>% 
  mutate(facility = str_replace(facility, "Pelican Health Randolph LLC", "Pelican Health Henderson")) %>% 
  mutate(facility = str_replace(facility, "Piney Grove Nursing & Rehab", "Piney Grove Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Piney Grove Nursing and Rehab", "Piney Grove Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "San Lee Dr.	 Sanford", "San Lee Dr., Sanford")) %>% 
  mutate(facility = str_replace(facility, "Shelton Rd.	 Concord", "Shelton Rd., Concord")) %>% 
  mutate(facility = str_replace(facility, "Silas Creek Rehabilitation Center", "Silas Creek Rehabilitation Center Center")) %>% 
  mutate(facility = str_replace(facility, "Springbrook Nursing and Rehab Center", "Springbrook Nursing and Rehab")) %>% 
  mutate(facility = str_replace(facility, "The Laurels Of Chatham", "The Laurels of Chatham")) %>% 
  mutate(facility = str_replace(facility, "UNC Rex - Rehab and Nursing Care Center", "UNC Rex Rehabilitation and Nursing Care Center of Apex")) %>% 
  mutate(facility = str_replace(facility, "Heartfields of Cary", "HeartFields at Cary")) %>% 
  mutate(facility = str_replace(facility, "Parkview Health and Rehabilitation Center Center Center", "Parkview Health and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Parkview Health and Rehabilitation Center Center", "Parkview Health and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Piney Grove Nursing and Rehabilitation Centerilitation Center", "Piney Grove Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Silas Creek Rehabilitation Center Center Center", "Silas Creek Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Silas Creek Rehabilitation Center Center", "Silas Creek Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Universal Health Care and Rehabilitation Center – Concord", "Universal Healthcare Concord")) %>% 
  mutate(facility = str_replace(facility, "WoodHaven Nursing", "WoodHaven Nursing, Alzheimer’s and Rehabilitation Care Center affiliated with Southeastern Regional Medical Center")) %>% 
  mutate(facility = str_replace(facility, "WoodHaven Nursing, Alzheimer’s and Rehabilitation Care Center affiliated with Southeastern Regional Medical Center, Alzheimer’s and Rehabilitation Care Center affiliated with Southeastern Regional Medical Center", "WoodHaven Nursing, Alzheimer’s and Rehabilitation Care Center affiliated with Southeastern Regional Medical Center")) %>% 
  mutate(facility = str_replace(facility, "Adams Farm Living and Rehabilitation", "Adams Farm Living & Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care   Saluda", "Autumn Care - Saluda")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care Saluda", "Autumn Care - Saluda")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care Drexel", "Autumn Care - Drexel")) %>% 
  mutate(facility = str_replace(facility, "Camden Health and Rehabilitation Center", "Camden Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Capital Nursing and Rehabilitation Center", "Capital Nursing & Rehab")) %>% 
  mutate(facility = str_replace(facility, "Capital Nursing and Rehabilitation",	"Capital Nursing & Rehab")) %>% 
  mutate(facility = str_replace(facility, "Friends Home West", "Friends Homes West")) %>% 
  mutate(facility = str_replace(facility, "Hunter Woods Nursing & Rehab", "Hunter Woods Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "LongLeaf Neuro Medical Treatment Center", "LongLeaf Neuro-Medical Treatment Center")) %>% 
  mutate(facility = str_replace(facility, "Moores Swamp Rd, Ivanhoe", "Moores Swamp Rd., Ivanhoe")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Home   Salisbury", "NC State Veterans Home - Salisbury")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Home,Salisbury", "NC State Veterans Home - Salisbury")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Nursing Home Fayetteville", "NC State Veterans Nursing Home - Fayetteville")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources Alamance", "Peak Resources – Alamance")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources Charlotte", "Peak Resources - Charlotte")) %>% 
  mutate(facility = str_replace(facility, "PruittHealth   Farmville", "PruittHealth – Farmville")) %>% 
  mutate(facility = str_replace(facility, "PruittHealth   Farmville", "PruittHealth – Farmville")) %>% 
  mutate(facility = str_replace(facility, "PruittHealth Farmville", "PruittHealth – Farmville")) %>% 
  mutate(facility = str_replace(facility, "PruittHealth-Farmville", "PruittHealth – Farmville")) %>% 
  mutate(facility = str_replace(facility, "Universal Health Care and Rehabilitation Center Concord", "Universal Healthcare Concord")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor Burlington", "White Oak Manor-Burlington")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor Charlotte", "White Oak Manor – Charlotte"))
alloutbreaks %>% 
  count(facility) %>% View()

alloutbreaks %>% filter(facility_type == "Nursing Home") %>% distinct(facility, .keep_all = T)

### ANALYZE
# total cases and deaths for all facilities in the latest report
june12outbreaks %>% 
  adorn_totals(where = "row") %>% tail(5)

# total cases and deaths for just nursing homes
june12outbreaks %>% filter(facility_type == "Nursing Home") %>% 
  adorn_totals(where = "row") %>% tail(5)

# previous weeks
june9outbreaks %>% 
  adorn_totals(where = "row") %>% tail(5)

# total cases and deaths for just nursing homes
june12outbreaks %>% filter(facility_type == "Nursing Home") %>% 
  adorn_totals(where = "row") %>% tail(5)

# differences between latest two reports
alloutbreaks %>% 
  select(facility, releasedate, total_cases)%>% 
  spread(releasedate, total_cases) %>% 
  mutate(diff = `6/12` - `6/9`) %>% View()
  # mutate(cases512 = as.numeric(ifelse(releasedate == "5/15", total_cases, NA))) %>% 
  # mutate(cases58 = as.numeric(ifelse(releasedate == "5/12", total_cases, NA))) %>% 
  # filter(releasedate == "5/15" | releasedate == "5/12") %>% 
  # mutate(diff = sum(cases512 - cases58)) %>% View()

# differences between latest report and one week prior
alloutbreaks %>% 
  select(facility, releasedate, total_cases)%>% 
  spread(releasedate, total_cases) %>% 
  mutate(diff = `6/12` - `6/5`) %>% View()
# mutate(cases512 = as.numeric(ifelse(releasedate == "5/12", total_cases, NA))) %>% 
#   mutate(cases58 = as.numeric(ifelse(releasedate == "5/5", total_cases, NA))) %>% 
#   filter(releasedate == "5/12" | releasedate == "5/5") %>% 
#   mutate(diff = sum(cases512 - cases58)) %>% View()

# list of the facility names for two latest reports
facilities29 <- may29outbreaks$facility

facilities65 <- june5outbreaks$facility

# which facilities are new additions to the latest report
compare <- june5outbreaks %>% 
  filter(!facilities65 %in% may29outbreaks$facility)

compare %>% filter(facility_county %in% c("Chatham", "Durham", "Wake", "Orange", "Johnston")) %>% View()

# list of the facility names for two latest reports
facilities65 <- june5outbreaks$facility

# which facilities are new additions to the latest report
compare <- june5outbreaks %>% 
  filter(!facilities65 %in% may29outbreaks$facility)
compare %>% filter(facility_county %in% c("Chatham", "Durham", "Wake", "Orange", "Johnston")) %>% View()


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

all_nh <- read_csv("outbreaks/nh.txt", col_names = c("facility_id", "facility_type", "facility_county", "facility", "facility_address1", "facility_address2", "facility_city", "facility_state", "facility_zip", "facility_phone", "facility_fax", "expiration", "license_no", "licensee", "nftotal", "ha_total", "total_beds", "provider", "admin")) %>% 
  mutate(facility_type = "Nursing Home")

library(lubridate)

nursing_home_outbreaks <- alloutbreaks %>% 
  filter(facility_type == "Nursing Home") %>% 
  mutate(releasedate = mdy(releasedate)) %>% 
  arrange(desc(releasedate)) %>% 
  distinct(facility, .keep_all = TRUE) %>% 
  mutate(facility = str_replace(facility, "Barbour Court", "Barbour Court Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources – Alamance", "Peak Resources - Alamance")) %>% 
  mutate(facility = str_replace(facility, "Wadesboro Health & Rehab Center", "Wadesboro Health & Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "Aston Park Health Care", "Aston Park Health Care Center Inc")) %>% 
  mutate(facility = str_replace(facility, "Deerfield Episcopal Retirement Community", "Deerfield Episcopal Retirement Community Inc")) %>% 
  mutate(facility = str_replace(facility, "Deerfield Episcopal Retirement Community", "StoneCreek Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care - Drexel", "Autumn Care of Drexel")) %>% 
  mutate(facility = str_replace(facility, "Grace Heights Health and Rehab", "Grace Heights Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Five Oaks Manor Rehab", "Five Oaks Manor")) %>% 
  mutate(facility = str_replace(facility, "Universal Health Care and Rehabilitation Center – Concord", "Universal Health Care and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health & Rehab/Hickory Viewmont", "Brian Center Health and Rehabilitation Hickory/Viewmont")) %>% 
  mutate(facility = str_remove(facility, "Genesis Healthcare LLC \\(")) %>% 
  mutate(facility = str_remove(facility, "\\)")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Nursing & Rehabilitation Center of Columbus County", "Liberty Commons Nursing and Rehab Ctr of Columbus Cty")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Nursing Home - Fayetteville", "NC State Veterans Home-Fayetteville")) %>% 
  mutate(facility = str_remove(facility, " \\(Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Treyburn Rehab & Nursing", "Treyburn Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Piney Grove Nursing and Rehabilitation Centerilitation Center", "Piney Grove Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Silas Creek Rehabilitation Center Center Center", "Silas Creek Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Louisburg Healthcare and Rehab Center", "Louisburg Healthcare & Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Clapps Nursing Center", "Clapps Nursing Center Inc")) %>% 
  mutate(facility = str_replace(facility, "Universal Health Lillington", "Universal Health Care / Lillington")) %>% 
  mutate(facility = str_replace(facility, "Brian Center Health & Rehab/Hendersonville", "Brian Center Health & Rehabilitation/Hendersonville")) %>% 
  mutate(facility = str_replace(facility, "Springbrook Nursing and Rehab", "Springbrook Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care - Cornelius", "Autumn Care of Cornelius")) %>% 
  mutate(facility = str_replace(facility, "Abernathy Laurels Newton", "Abernethy Laurels")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care - Saluda", "Autumn Care of Saluda")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care - Statesville", "Autumn Care of Statesville")) %>% 
  mutate(facility = str_replace(facility, "Autumn Care – Marshville", "Autumn Care of Marshville")) %>% 
  mutate(facility = str_replace(facility, "Ayden Court Nursing and Rehab", "Ayden Court Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Capital Nursing & Rehab", "Capital Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Care Center of Apex", "UNC Rex Rehabilitation and Nursing Care Center of Apex")) %>% 
  mutate(facility = str_replace(facility, "Carrington Place, Matthews", "Carrington Place")) %>% 
  mutate(facility = str_replace(facility, "Carver Living Center (Rehabilitation)", "Carver Living Center")) %>% 
  mutate(facility = str_replace(facility, "Hillcrest Convalescent Center", "Hillcrest Convalescent Center Inc")) %>% 
  mutate(facility = str_replace(facility, "Hunter Woods Nursing & Rehab", "Hunter Woods Nursing and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons", "Liberty Commons Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Liberty Commons Salisbury", "Liberty Commons Nsg and Rehab Ctr of Rowan Cty")) %>% 
  mutate(facility = str_replace(facility, "Louisburg Manor", "Louisburg Healthcare & Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Monroe Rehab Center", "Monroe Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "NC State Veterans Home - Kinston", "NC State Veterans Home-Kinston")) %>% 
  mutate(facility = str_replace(facility, "Parkview Health and Rehabilitation Center Center Center", "Parkview Health and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Parkview Health and Rehabilitation Center Center", "Parkview Health and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Peak Resources - Charlotte", "Peak Resources-Charlotte")) %>% 
  mutate(facility = str_replace(facility, "Pelican Health Henderson", "Pelican Health Henderson LLC")) %>% 
  mutate(facility = str_replace(facility, "Pinehurst HealthCare & Rehab", "Pinehurst Healthcare & Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Premier Living & Rehab Center", "Premier Living and Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "PruittHealth – Farmville", "PruittHealth-Farmville")) %>% 
  mutate(facility = str_replace(facility, "Rich Square Nursing and Rehabilitation", "Rich Square Nursing & Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Signature HealthCARE", "Signature HealthCARE of Chapel Hill")) %>% 
  mutate(facility = str_replace(facility, "Silas Creek Rehabilitation Center Center", "Silas Creek Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "StoneCreek Health and Rehabilitation", "StoneCreek Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "StoneCreek Health and Rehabilitation Inc", "StoneCreek Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "The Citadel at Salisbury", "The Citadel Salisbury")) %>% 
  mutate(facility = str_replace(facility, "Three Rivers Health & Rehabilitation", "Three Rivers Health and Rehab")) %>% 
  mutate(facility = str_replace(facility, "UNC Rex Rehabilitation and Nursing UNC Rex Rehabilitation and Nursing Care Center of Apex", "UNC Rex Rehabilitation and Nursing Care Center of Apex")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare Concord", "Universal Health Care and Rehabilitation Center")) %>% 
  mutate(facility = str_replace(facility, "Universal Healthcare Ramseur", "Universal Health Care/Ramseur")) %>% 
  mutate(facility = str_replace(facility, "Village Green Health & Rehab", "Village Green Health and Rehabilitation")) %>% 
  mutate(facility = str_replace(facility, "Wadesboro Health & Rehab", "Wadesboro Health & Rehab Center")) %>% 
  mutate(facility = str_replace(facility, "Wellington Rehab and Healthcare", "Wellington Rehabilitation and Healthcare")) %>% 
  mutate(facility = str_replace(facility, "White Oak Manor \\– Charlotte", "White Oak Manor-Charlotte")) %>% 
  mutate(facility = str_replace(facility, "Wilkes\\(boro Health and Rehabilitation", "Wilkesboro Health and Rehabilitation, LLC")) %>% 
  mutate(facility = str_replace(facility, "WilMed Nursing and Rehabilitation", "Wilson Rehabilitation and Nursing Center")) %>% 
  mutate(facility = str_replace(facility, "Wilora Lake Health Care", "Wilora Lake Healthcare Center"))

nh_join <- all_nh %>% 
  left_join(nursing_home_outbreaks, by = c("facility", "facility_county", "facility_type")) %>% 
  arrange(desc(total_cases)) %>% 
  distinct(facility_address1, .keep_all = T)

percapita <- read_sheet("https://docs.google.com/spreadsheets/d/1yPEiMwTWV2lawwxaCU9GjAqoNmuXicGdBX0BHNuQE2c/edit#gid=1018303427", sheet = "DHHS by day by county") %>% 
  clean_names() %>% 
  subset(date > "2020-06-17")

rate25 <- percapita %>% 
  filter(rate_per_10_000 > 29)

list <- rate25$county

no_cases <- nh_join %>% 
  filter(is.na(total_cases)) %>% 
  filter(total_beds > 100)

no_cases_greaterthan25 <- no_cases[no_cases$facility_county %in% list ,]

with_cases <- nh_join %>% 
  filter(!is.na(total_cases))

gs4_auth(email = "lsherman@newsobserver.com")

# grab the spreadsheet so you can write to it
nursinghomes_collab <- gs4_get("https://docs.google.com/spreadsheets/d/1jSweRJZotsnmlhtADV-KR1NMnzTA8lJ0aWTz8TZ8EbQ/edit#gid=0")

#### VERY IMPORTANT. BEFORE YOU RUN THIS, CHANGE THE RANGE 
nursinghomes_collab %>%
  range_write(no_cases_greaterthan25, col_names = T, range = "E1")

nursinghomes_collab %>%
  range_write(with_cases, sheet = "outbreaks", col_names = T, range = "A1")

nursinghomes_collab %>% 
  range_write(no_cases, sheet = "all_no_outbreaks", col_names = T, range = "A1")
