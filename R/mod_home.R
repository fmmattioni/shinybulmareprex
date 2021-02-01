#' home UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_home_ui <- function(id){
  ns <- NS(id)
  tagList(
    shinybulma::bulmaSteps(
      shinybulma::bulmaStepItem(
        color = "success",
        completed = FALSE,
        active = TRUE,
        shinybulma::bulmaStepDetail(
          color = NULL,
          completed = FALSE,
          title = "Step 1",
          marker = 1,
          "This is the first step of the process"
        )
      ),
      shinybulma::bulmaStepItem(
        color = NULL,
        completed = FALSE,
        active = FALSE,
        shinybulma::bulmaStepDetail(
          color = NULL,
          completed = FALSE,
          title = "Step 2",
          marker = NULL,
          "This is the second step of the process"
        )
      ),
      shinybulma::bulmaStepItem(
        color = NULL,
        completed = FALSE,
        active = FALSE,
        shinybulma::bulmaStepDetail(
          color = NULL,
          completed = FALSE,
          title = "Step 3",
          marker = NULL,
          "This is the third step of the process"
        )
      )
    )
  )
}
    
#' home Server Function
#'
#' @noRd 
mod_home_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_home_ui("home_ui_1")
    
## To be copied in the server
# callModule(mod_home_server, "home_ui_1")
 
