#' Run Rmarkdown with parameter ask
#'
#' Process Rmarkdown file to output file with ask of parameters.
#'
#' @param rmd_name base name of Rmd file
#' @param output_name name of output file to be created in \code{resultpath} (without MIME ending)
#' @param ... named list of parameters to pass to rmarkdown file
#'
#' @author Brian S Yandell, \email{brian.yandell@@wisc.edu}
#' @keywords utilities
#'
#' @examples
#' dontrun(rmd_ask(rmd_name, output_name)
#'
#' @export
rmd_ask <- function(rmd_name, output_name, ...) {
  if(is.null(rmd_name))
    stop("must supply rmd_name")
  if(is.null(output_name))
    stop("must supply output_name")
  param_vals <- list(...)
  if(interactive())
    param_vals <- rmarkdown::knit_params_ask(rmd_name,
                                             params = param_vals)
  if(is.null(param_vals))
    stop(paste("render of", rmd_name, "cancelled"))
  
  set_output <- param_vals$set_output
  if(is.null(set_output))
    set_output <- "html"
  switch(set_output,
         pdf = {
           out_format <- "pdf_document"
           out_filename <- file.path(resultpath, paste0(output_name, ".pdf"))
         },
         word = {
           out_format <- "word_document"
           out_filename <- file.path(resultpath, paste0(output_name, ".docx"))
         },
         {
           out_format <- "html_document"
           out_filename <- file.path(resultpath, paste0(output_name, ".html"))
         })
  rmarkdown::render(rmd_name,
                    output_format=out_format,
                    output_file=out_filename,
                    params=param_vals)
}
