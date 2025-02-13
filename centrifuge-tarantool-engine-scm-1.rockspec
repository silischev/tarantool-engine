package = "centrifuge-tarantool-engine"
version = "scm-1"
source = {
   url = "https://github.com/centrifugal/tarantool-engine"
}
description = {
   summary = "Centrifugal Tarantool Engine",
   detailed = "This is a work in progress to integrate Centrifuge/Centrifugo stack with [Tarantool](https://www.tarantool.io/en/) database/platform. The integration should provide efficient PUB/SUB, ephemeral streams and channel presence functionality.",
   license = "MIT"
}

dependencies = {
   'tarantool',
   'cartridge == 2.6.0'
}

build = {
   type = "builtin",
   modules = {
      centrifuge = "centrifuge.lua",
      init = "init.lua",
      init_standalone = "init_standalone.lua",
   }
}
