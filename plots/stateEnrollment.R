public_schools |>
  ggplot(aes(x=STATE, y=ENROLLMENT_RATE)) +
  geom_point(alpha = 0.01) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5)) +
  scale_y_continuous(labels = scales::percent, limits=c(0.75, 1)) +
  labs(
    title = "Enrollment Rates in US States",
    x = "State",
    y = "Enrollment Rates"
  )
  
public_schools |>
  summarize(.by=STATE, AVG_ENROLLMENT_RATE=mean(ENROLLMENT_RATE)) |>
  ggplot(aes(x = STATE, y = AVG_ENROLLMENT_RATE)) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5)) +
  # scale_y_continuous(labels = scales::percent, limits=c(0.75, 1)) +
  geom_col() +
  labs(
    title = "Averge Enrollment Rate in US States",
    x = "State",
    y = "Average Enrollment Rate"
  )
