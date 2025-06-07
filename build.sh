#!/bin/bash

# Build the image with Buildpacks
pack build tranchida/nuxttest:latest \
          --builder paketobuildpacks/builder-jammy-base \
          --env BP_LAUNCHPOINT=".output/server/index.mjs" \
          --path . 
        