# Hass.io_config
Configuration files for controlling home devices control with Hass.io on Raspberry Pi 3 Model B

## Home Devices:
- H1. Sony TV - IR remote
- H2. Set-box (for Taiwan cable TV - TBC) - IR remote
- H3. Set-box (for Taiwan CHT MOD) - IR remote
- H4. Sony BD player - IR remote
- H5. Sony AV system - IR remote
- H6. Hitachi Air Conditioner - IR remote
- H7. Light switch x 3 (Main light, dinning light and door light) - RF 433MHz
- H8. Philips Hue lamp x 1 - Zigbee (lamp<->hub), Ethernet (hub <-> home network)
- H9. Power switch TPlink HS100 - Wifi
- H10. Chromecast x2 - WiFi
- H11. Google Home - WiFi
- H12. USB modem (USR5637 for caller id) - USB 
- H13. Speakerphone (Jabra 510) - USB

## Control devices:
- C1. Raspberry Pi 3 Model B (Hass.io hosted)
- C2. Broadlin RM Pro - IR/RF controller
- C3. Logitech Harmony - IR controller

## Network devices:
- N1. Asus router RT-AC68U (Ethernet and WiFi)

## Connection diagram:

C1 --WiFi-- N1 

            |--WiFi--> C2(or C3) --> H1 ~ H7

            |--WiFi--> H9 ~ H11
            
            |--Ethernet--> H8

C1 --USB--> H12 (phone line)  and H13

## Main features:

1. Voice control home devices via
   - M1. Google Home (voice input) -> IFTTT (pre-define voice commands) -> REST API
   - M2. Google Home (voice input) -> Dialogflow (ASR&Intent parsing) -> REST API
   - M3. Google Home (voice input) -> IFTTT (passing voice content) -> Snips (ASR&Intent parsing) -> Intent_script
   - M4. Speakerphone (Jabra 510 connected to C1 USB port) -> Snips (ASR&Intent parsing) -> Intent_script (need to config snips addon)

    With Snips, additional feature and requirements for M3 & M4:
      - use customized snips addon (ref to https://github.com/cruxlin/Hass.io_addons)
      - use external MQTT server enabled by customized MQTT addon (ref to https://github.com/cruxlin/Hass.io_addons)
      - be able to switch channel of set-box (cable TV or MOD) by speaking channel name or channel number
      - speak natural language to control home devices and lights
  
2. Voice reminder (in Chinese) automation via Google Home

3. Notification of caller id via Google Home in Chinese and persistantent notification on WebUI

4. Record incoming call number and time in a log file

5. Play songs of remote media server to Google Home randomly (activated by M1 voice control method)

## ToDo ...



