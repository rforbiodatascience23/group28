test_that("check the base content", {
  expect_true(grepl("A|T|C|G", make_random_seq(10)))
  expect_false(grepl("[^ATCG]", make_random_seq(10)))
})

test_that("length test", {
  expect_equal(1, nchar(make_random_seq(1)))
  expect_equal(10, nchar(make_random_seq(10)))
  expect_equal(100, nchar(make_random_seq(100)))
  expect_equal(13, nchar(make_random_seq(13)))
})
