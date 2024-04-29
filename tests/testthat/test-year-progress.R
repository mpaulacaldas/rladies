test_that("multiplication works", {
  expect_message(
    year_progress(as.Date("2024-12-31")),
    "100% of the year is done!"
    )
})
