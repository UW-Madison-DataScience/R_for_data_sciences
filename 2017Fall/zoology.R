# 2017_11_15 Zoology Club Demo

surveys <- read.csv("http://kbroman.org/datacarp/portal_data_reduced.csv",
                    stringsAsFactors = FALSE)

# examine structure of surveys data
str(surveys)

# start working with dplyr
library(dplyr)

surveys %>%
  filter(weight < 5) %>%
  select(species_id, sex, weight)

# save to red_survey (two different ways)
surveys %>%
  filter(weight < 5) %>%
  select(species_id, sex, weight) ->
  red_survey

red_survey <- 
  surveys %>%
  filter(weight < 5) %>%
  select(species_id, sex, weight)

# filter to get year 1995 and show year, sex and weight

surveys %>%
  filter(year == 1995) %>%
  select(year, sex, weight)

surveys %>%
  filter(year == 1995) %>%
  select(year, sex, weight) %>%
  head

# mutate: change a column

surveys %>%
  mutate(weight_kg = weight / 1000) %>%
  select(species_id, sex, weight_kg, weight) %>%
  head

surveys %>%
  mutate(weight = weight / 1000) %>%
  head

# split-apply-combine data analysis

surveys %>%
  group_by(sex) %>%
  tally

surveys %>%
  group_by(sex) %>%
  summarize(mean_weight = mean(weight))

surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight))

# arrange means in increasing order
surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight)) %>%
  arrange(mean_weight)

# arrange in descending order of mean weight
surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight)) %>%
  arrange(desc(mean_weight))

# multiple summaries
surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight),
            min_weight = min(weight),
            max_weight = max(weight))

# write multiple summaries to file
surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight),
            min_weight = min(weight),
            max_weight = max(weight)) %>%
  arrange(desc(mean_weight)) %>%
  write.csv("weight.csv")

#####################################
# now lets plot something
library(ggplot2)

surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight)) %>%
  
  ggplot() +
  aes(x = mean_weight,
      y = species_id,
      col = sex) +
  geom_point()

# separate facets by sex
surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight)) %>%
  
  ggplot() +
  aes(x = mean_weight,
      y = species_id,
      col = sex) +
  geom_point() +
  facet_wrap(~ sex)

# reorder species by mean weight
surveys %>%
  group_by(sex,species_id) %>%
  summarize(mean_weight = mean(weight)) %>%
  
  ggplot() +
  aes(x = mean_weight,
      y = reorder(species_id, mean_weight),
      col = sex) +
  geom_point() +
  facet_wrap(~ sex)
