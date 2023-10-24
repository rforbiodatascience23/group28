#' get_codons
#'
#' @param input_sequence Input RNA sequence
#' @param start Starting index
#'
#' @return codons as 3 character substrings of the input sequence
#' @export
#'
#' @examples
#' example_sequence <- "ACUGAGUCCAGUUCAAAA"
#' get_codons(example_sequence)
#'
#' get_codons(example_sequence, start = 4)
get_codons <- function(input_sequence, start = 1){
  nucleotide_number <- nchar(input_sequence)
  codons <- substring(input_sequence,
                      first = seq(from = start, to = nucleotide_number-3+1, by = 3),
                      last = seq(from = 3+start-1, to = nucleotide_number, by = 3))
  return(codons)
}
