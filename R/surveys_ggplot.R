library(ggplot2)
library(dplyr)
surveys <- read.csv("data/portal_data_joined.csv")
surveys_complete <- surveys %>%
  filter(species_id != "", !is.na(weight)) %>%
  filter(!is.na(hindfoot_length), sex != "")
# count records per species
species_counts <- surveys_complete %>%
  group_by(species_id) %>%
  tally
# get names of the species with counts >= 10
frequent_species <-  species_counts %>%
  filter(n >= 10) %>%
  select(species_id)
# filter out the less-frequent species
surveys_complete <- surveys_complete %>%
  filter(species_id %in% frequent_species$species_id)

ggplot(surveys_complete %>%
         filter(species_id == "DM"), 
       aes(x = weight, y = hindfoot_length)) + 
  geom_point(shape = 1)


surveys_plot <- ggplot(surveys_complete, 
                       aes(x = weight, 
                           y = hindfoot_length))

## http://docs.ggplot2.org/current/scale_brewer.html
RColorBrewer::brewer.pal.info
surveys_plot + 
  geom_point(alpha = 1, shape = 1, aes(color=genus)) +
  scale_color_brewer(type="qualitative", palette = "Paired") +
  scale_x_sqrt()
