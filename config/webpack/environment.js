const { environment } = require("@rails/webpacker")

const webpack = require("webpack")
environment.plugins.prepend("Provide",
  new webpack.ProvidePlugin({
    $: "jquery/src/jquery",
    jQery: "jquery/srv/jquery"
  })
)

module.exports = environment
