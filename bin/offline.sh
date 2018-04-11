#!/usr/bin/env bash

set -e
set -o pipefail

OFFLINE=./build/macos/Debug/mbgl-offline

$OFFLINE --north 39.8851 --west 116.1524 --south 39.8382 --east 116.2191 --output offline.db --maxZoom 20 --minZoom 3 --style http://mapeditor.momenta.works:8000/api/styles/5979455ef6c8302ad80e1f17/5a69da24551f80f8ec536342/publishStyle

# Barcelona

#$OFFLINE --north 41.4664 --west 2.0407 --south 41.2724 --east 2.2680 --output barcelona.db
#$OFFLINE --north 41.4664 --west 2.0407 --south 41.2724 --east 2.2680 --output barcelona_sat.db --style mapbox://styles/mapbox/satellite-v8

# Greater London within the M25 at zoom levels 0–15
#$OFFLINE --north 51.6777 --west -0.5026 --south 51.3237 --east 0.2527 --maxZoom 15 --output london.db
#$OFFLINE --north 51.6777 --west -0.5026 --south 51.3237 --east 0.2527 --maxZoom 15 --output london_sat.db --style mapbox://styles/mapbox/satellite-v8

# The contiguous United States at zoom levels 0–9
#$OFFLINE --north 49.6107 --west -125.5078 --south 24.2870 --east -66.3574 --maxZoom 9 --output us.db
#$OFFLINE --north 49.6107 --west -125.5078 --south 24.2870 --east -66.3574 --maxZoom 9 --output us_sat.db --style mapbox://styles/mapbox/satellite-v8
