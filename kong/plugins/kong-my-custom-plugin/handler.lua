local BasePlugin = require "kong.plugins.base_plugin"

local CustomHandler = BasePlugin:extend()

CustomHandler.PRIORITY = 2000
CustomHandler.VERSION = "1.0.0"

function CustomHandler:new()
  CustomHandler.super.new(self, "kong-my-custom-plugin")

  self.request_header = ""
end

function CustomHandler:access(conf)
  CustomHandler.super.access(self)

  self.request_header = kong.request.get_header(conf.requestHeader)
end

function CustomHandler:header_filter(conf)
  CustomHandler.super.header_filter(self)

  if self.request_header ~= "" then
    kong.response.set_header(conf.responseHeader, self.request_header)
  else
    kong.response.set_status(555)
  end
end

return CustomHandler