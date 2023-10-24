#' Transcription
#'
#' @param template_seq the function substitute T to U
#'
#' @return transcript of the template
#' @export
#'
trans_cription <- function(template_seq){
  trans_cript <- gsub("T", "U", template_seq)
  return(trans_cript)
}
