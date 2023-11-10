library(tidyverse)

public_schools = read_csv("./data/public_schools.csv")
private_schools = read_csv("./data/private_schools.csv")
school_scores = read_csv("./data/school_scores.csv")

public_schools = public_schools |>
  select(NAME, CITY, STATE, POPULATION, ENROLLMENT, FT_TEACHER) |>
  mutate(ENROLLMENT_RATE = ENROLLMENT/POPULATION) |>
  filter(ENROLLMENT_RATE >= 0 & FT_TEACHER >= 0 & POPULATION >= 0)

private_schools = private_schools |>
  select(NAME, CITY, STATE, POPULATION, ENROLLMENT, FT_TEACHER) |>
  mutate(ENROLLMENT_RATE = ENROLLMENT/POPULATION) |>
  filter(ENROLLMENT_RATE >= 0 & FT_TEACHER >= 0 & POPULATION >= 0)

