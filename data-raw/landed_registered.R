library(dplyr)
landed <- tribble(
  ~user_id, ~timestamp,
  1, "2018-07-01",
  2, "2018-07-01",
  3, "2018-07-02",
  4, "2018-07-01",
  4, "2018-07-04",
  5, "2018-07-10",
  5, "2018-07-12",
  6, "2018-07-07",
  6, "2018-07-08",
  8, "2018-08-01",
  8, "2018-08-03"
) %>%
  mutate(timestamp = as.Date(timestamp))

registered <- tribble(
  ~user_id, ~timestamp,
  1, "2018-07-02",
  3, "2018-07-02",
  4, "2018-06-10",
  4, "2018-07-02",
  5, "2018-07-11",
  6, "2018-07-10",
  6, "2018-07-11",
  7, "2018-07-07",
  8, "2018-08-02",
  8, "2018-08-04"
) %>%
  mutate(timestamp = as.Date(timestamp))

usethis::use_data(landed, overwrite = TRUE)
usethis::use_data(registered, overwrite = TRUE)
