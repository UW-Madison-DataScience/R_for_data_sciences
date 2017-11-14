meanSexSpecies <- surveys %>%
  group_by(sex, species_id) %>%
  summarize(mean_weight = median(weight, na.rm = TRUE)) %>%
  filter(!is.na(mean_weight)) %>%
  arrange(mean_weight)
