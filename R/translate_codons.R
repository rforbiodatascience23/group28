#' translate codons
#'
#' @param codon_input
#'
#' @return concatenated codon object translated to amino acids in string format
#' @export
#'
#' @examples
#' example_vector <- c("AUG", "ACU", "GAG", "UCC", "AGU", "UCA", "AAA")
#' translate_codons(example_vector)
translate_codons <- function(codon_input){
  codon_output <- paste0(codons[codon_input], collapse = "")
  return(codon_output)
}
