# Install script for directory: /Users/kiran/.platformio/packages/framework-espidf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_ringbuf/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/efuse/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_timer/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_ipc/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/driver/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_pm/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/mbedtls/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/bootloader/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esptool_py/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/partition_table/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/app_update/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/bootloader_support/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/spi_flash/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/nvs_flash/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/pthread/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_gdbstub/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/espcoredump/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_phy/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_system/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/xtensa/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp32s3/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_common/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_rom/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/hal/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/vfs/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_eth/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/tcpip_adapter/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_netif/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_event/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/wpa_supplicant/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_wifi/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/ieee802154/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/console/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/openthread/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/lwip/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/log/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/heap/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/soc/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_hw_support/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/app_trace/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/freertos/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/newlib/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/cxx/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/__pio_env/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/asio/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/bt/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/cbor/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/unity/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/cmock/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/coap/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/nghttp/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp-tls/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_adc_cal/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_hid/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/tcp_transport/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_http_client/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_http_server/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_https_ota/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_https_server/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_lcd/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/protobuf-c/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/protocomm/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/mdns/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_local_ctrl/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/sdmmc/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_serial_slave_link/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/esp_websocket_client/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/expat/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/wear_levelling/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/fatfs/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/freemodbus/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/idf_test/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/jsmn/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/json/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/libsodium/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/mqtt/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/openssl/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/perfmon/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/spiffs/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/usb/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/tinyusb/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/ulp/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/wifi_provisioning/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/src/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/ArduinoJson/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/arduino/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/librnp/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/libriccore/cmake_install.cmake")
  include("/Users/kiran/Documents/Projects/ICLR/Ricardo-FlintandSteel/Firmware/.pio/build/esp32s3/esp-idf/librrc/cmake_install.cmake")

endif()

