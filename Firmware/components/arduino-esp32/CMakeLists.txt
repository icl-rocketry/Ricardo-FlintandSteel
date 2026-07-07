# Shim component: satisfies libraries (e.g. Adafruit_BusIO) that REQUIRE
# "arduino-esp32" by name, without needing to patch their CMakeLists.
idf_component_register(REQUIRES arduino)