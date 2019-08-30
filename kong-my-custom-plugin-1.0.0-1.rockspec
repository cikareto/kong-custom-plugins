package = "kong-my-custom-plugin"
version = "1.0.0-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.custom-plugin.handler"] = "kong/plugins/custom-plugin/handler.lua",
      ["kong.plugins.custom-plugin.schema"] = "kong/plugins/custom-plugin/schema.lua"
   }
}
