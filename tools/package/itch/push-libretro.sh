#!/bin/bash

butler login
butler push package phix/virtualxt:libretro-${GITHUB_REF_NAME} --userversion ${VXT_VERSION}-${GITHUB_RUN_ID}
