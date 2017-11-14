## Notes from 2017-10-26
# Aggregating and analyzing data with dplyr 

surveys <- read.csv("http://kbroman.org/datacarp/portal_data_joined.csv",
                    stringsAsFactors = FALSE)

library(dplyr)

surveys %>%
  group_by(sex) %>%
  tally()

surveys %>%
  group_by(sex) %>%
  summarize(mean_weight = mean(weight))

surveys %>%
  group_by(sex) %>%
  summarize(mean_weight = mean(weight, na.rm = TRUE))

surveys %>%
  group_by(sex, species_id) %>%
  summarize(mean_weight = median(weight, na.rm = TRUE)) %>%
  filter(!is.na(mean_weight)) %>%
  arrange(mean_weight)

out <- surveys %>%
  group_by(sex, species_id) %>%
  summarize(median_weight = median(weight, na.rm = TRUE),
            mean_weight = mean(weight, na.rm = TRUE)) %>%
  filter(!is.na(median_weight)) %>%
  arrange(desc(mean_weight))
str(out)
str(out %>% ungroup)

#########################################

reduced <- read.csv("http://kbroman.org/datacarp/portal_data_reduced.csv")

library(ggplot2)

ggplot(reduced, aes(x = weight, y = hindfoot_length)) +
  geom_point()

p <- ggplot(reduced, aes(x = weight, y = hindfoot_length)) +
  geom_point()

p
print(p)

p + scale_x_sqrt()

ggplot(reduced, aes(x = weight, y = hindfoot_length)) +
  geom_point(alpha = 0.1, color="blue") + 
  scale_x_sqrt()

ggplot(reduced, aes(x = weight, y = hindfoot_length)) +
  geom_point(alpha = 0.1, aes(color=species_id)) + 
  scale_x_sqrt()

ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length,
                    color=species_id)) +
  geom_point(alpha = 0.1) + 
  scale_x_sqrt()

ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length,
                    color=species_id)) +
  geom_point(alpha = 0.1) +
  geom_smooth(method = "lm", se=FALSE) +
  scale_x_sqrt()

ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length)) +
  geom_point(alpha = 0.1,
             aes(color=species_id)) +
  geom_smooth(method = "lm", se=FALSE) +
  scale_x_sqrt()

ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length,
                    group = species_id)) +
  geom_point(alpha = 0.1,
             aes(color=species_id)) +
  geom_smooth(method = "lm", se=FALSE) +
  scale_x_sqrt()


ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length,
                    color=species_id)) +
  geom_point(alpha = 0.1) + 
  scale_x_sqrt()

reduced %>%
  group_by(genus) %>%
  tally

ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length,
                    color=species_id)) +
  geom_point(alpha = 0.1) + 
  scale_x_sqrt() +
  facet_wrap(~ genus)

ggplot(reduced, aes(x = weight, 
                    y = hindfoot_length,
                    color=species_id)) +
  geom_point(alpha = 0.1) + 
  scale_x_sqrt() +
  facet_grid(sex ~ genus, scales = "free")

# more on aesthetics

counts_dm_ds <- reduced %>%
  filter(species_id %in% c("DM","DS")) %>%
  group_by(species_id, year) %>%
  tally

p <- ggplot(counts_dm_ds, aes(x=year, y=n))
p + geom_line() + geom_point(aes(color= species_id))
p + geom_line() + geom_point() + aes(color= species_id)
p + geom_line(aes(color= species_id)) + geom_point(aes(color= species_id))
