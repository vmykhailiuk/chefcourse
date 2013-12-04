name "node"
run_list(
  "recipe[webserver]"
)
default_attributes(
  "apache" => {
    "default_site_enabled" => true,
    "aliases" => ["url1.com","url2.com"]
  },
  "webserver" => {
    "loglevel" => "debug"
  }
)
