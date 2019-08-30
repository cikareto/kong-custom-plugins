return {
  no_consumer = true,
  fields      = {
    requestHeader = {
      type     = "string",
      default  = "X-Request-Header"
    },
    responseHeader = {
      type     = "string",
      default  = "X-Request-Header"
    }
  }
}