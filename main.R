library(tidyverse)

public_schools = read_csv("./data/public_schools.csv")
private_schools = read_csv("./data/private_schools.csv")
school_scores = read_csv("./data/school_scores.csv")
ma_schools = read_csv("./data/MA_schools.csv")

temp = ma_schools |>
  select("Average SAT_Reading", "Average SAT_Writing", "Average SAT_Math", "% Dropped Out", "Total Expenditures") |>
  drop_na() |>
  mutate("Average SAT" = `Average SAT_Reading` + `Average SAT_Writing` + `Average SAT_Math`).

public_schools = public_schools |>
  select(NAME, CITY, STATE, POPULATION, ENROLLMENT, FT_TEACHER) |>
  mutate(ENROLLMENT_RATE = ENROLLMENT/POPULATION) |>
  filter(ENROLLMENT_RATE >= 0 & FT_TEACHER >= 0 & POPULATION >= 0)

private_schools = private_schools |>
  select(NAME, CITY, STATE, POPULATION, ENROLLMENT, FT_TEACHER) |>
  mutate(ENROLLMENT_RATE = ENROLLMENT/POPULATION) |>
  filter(ENROLLMENT_RATE >= 0 & FT_TEACHER >= 0 & POPULATION >= 0)

