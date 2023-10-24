test_that("Codons substrings from sequence string", {
  expect_equal(centraldogma28::get_codons("ACUGAGUCCAGUUCAAAA"), c("ACU", "GAG", "UCC", "AGU", "UCA","AAA"))
})
