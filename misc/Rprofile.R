# Activate the why-donors-donate project when opening RStudio Server
setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && is.null(rstudioapi::getActiveProject()))
    rstudioapi::openProject("actual-project")
}, action = "append")
