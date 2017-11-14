## Notes from 2017-10-12

surveys <- read.csv("http://kbroman.org/datacarp/portal_data_joined.csv",
                    stringsAsFactors = FALSE)

surveys[1,1]
surveys[2,7]
surveys[2,"sex"]
table(surveys[,"sex"])

sex <- surveys[,"sex"]
sex <- surveys$sex
sex <- surveys[["sex"]]
class(surveys)
colname <- "sex"
sex <- surveys[[colname]]
sex <- surveys[,colname]
sex <- surveys$colname # does not work properly -- why? 
sex <- surveys[["sex"]]
names(surveys)

table(sex)
surveys[,"sex"] -> sex2

sex[1]
sex[c(1,3,5)]
sex[c(1,2,3,4,5)]
sex[1:10]

seq(1,10)
seq(1, n <- 10) # OK to do, but assigns 10 to n and uses as 2nd arg.
seq(1, n = 10) # this does not work properly

seq(from = 1, to = 10, by = 2)
seq(from = 1, by = 2, length.out = 10)
sex[seq(from = 1, by = 2, length.out = 10)]

seq(from = 1, length = 10, by = 2)
seq(1, length = 10, by = 2)
seq(35, length(sex))
ns <- nrow(surveys)
################################################
# Now doing unit 2 on curation (dplyr)
library(dplyr)
selectcol <- select(surveys, species_id, plot_type, weight)
head(selectcol)
surveys2002 <- filter(surveys, year == 2002)
head(surveys2002)

surveys %>% # this is a pipe!
  filter(weight < 5) %>%
  select(species_id, sex, weight)

surveys %>%
  filter(!is.na(weight)) %>%
  mutate(weight = weight / 1000) %>%
  select(species_id, sex, weight) %>%
  head

surveys %>%
  filter(!is.na(weight)) %>%
  mutate(weight_kg = weight / 1000) %>%
  select(species_id, sex, weight_kg) %>%
  head


