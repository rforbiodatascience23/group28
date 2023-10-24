#' Amino acid bar plot
#' @import ggplot2
#' @importFrom stringr str_split boundary str_count
#'
#' @param amino_acid_sequence amino acid sequence string
#'
#' @return Plot of amino acid counts
#' @export
#'
#' @examples
#' example_aa_seq <- "FVVSQAGL"
#' plot_amino_acids(example_aa_seq)
plot_amino_acids <- function(amino_acid_sequence){
  # Make list of amino acids
  amino_acid_list <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count amino acids and save to data frame
  counts <- sapply(amino_acid_list, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # Set dataframe column and row names
  colnames(counts) <- c("Counts")
  counts[["amino_acids"]] <- rownames(counts)

  # Make bar plot
  output_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = Counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(output_plot)
}
