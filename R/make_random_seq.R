#' Make random sequence
#'
#' @param size this is the length of your random sequence
#'
#' @return return a specified size of random DNA sequence
#' @export
#'
#' @examples make_random_seq(10)
make_random_seq <- function(size){
  temp_seq <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  output <- paste0(temp_seq, collapse = "")
  return(output)
}
