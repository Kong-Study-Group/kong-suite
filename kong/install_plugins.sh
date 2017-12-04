#!/bin/bash

luarocks install kong-plugin-token-agent
luarocks install kong-plugin-pipeline
luarocks install kong-plugin-key-secret
luarocks install kong-plugin-extend-headers
luarocks install kong-plugin-debug

sed -i '/#custom_plugins =/i\custom_plugins = key-secret, pipeline, token-agent, extend-headers, debug' /etc/kong/kong.conf

exit 0
