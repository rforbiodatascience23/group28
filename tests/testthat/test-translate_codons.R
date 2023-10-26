test_that("Codons translated to amino acids and are translated", {
  expect_equal(centraldogma28::translate_codons(c("AUG", "ACU", "GAG", "UCC", "AGU", "UCA","AAA")), "MTESSSK")
})

