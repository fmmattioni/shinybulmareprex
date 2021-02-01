#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    bs4Dash::bs4DashPage(
      header = bs4Dash::dashboardHeader(),
      sidebar = bs4Dash::dashboardSidebar(),
      body = bs4Dash::dashboardBody(
        mod_home_ui("home_ui_1")
      )
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'bs4Dash.shinybulma'
    ),
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
    shinybulma:::add_bulma_deps(tagList(), theme = "default")
  )
}

