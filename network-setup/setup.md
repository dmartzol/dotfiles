# 1. Set router Motorola SBG6580 in bridge mode

See: https://arris.secure.force.com/consumers/articles/General_FAQs/SBG6580-v8-5-x-Bridge-Mode-Setup/?l=en_US&fs=RelatedArticle

Go to `192.168.0.1` Go to `Basic` and set `Gateway Mode` to `Bridged`. Click `Apply` and it will restart.

To disable Bidged mode go to `192.168.100.1` and turn `Gateway Mode` back to `routed`.

# 2. Connect edgerouter to computer for the first time

1. Disconnect ethernet from computer and router
2. (optional) reset edgerouter by pressing reset button for about 10 seconds
3. go to system preferences and network settings and configure:
   1. IPv4: Manually
   2. IP Address: 192.168.1.1
   3. Subnet Mask: 255.255.255.0
   4. Router: 192.168.1.1
4. Apply
5. Connect ethernet cable to router eth0
6. Connect ethernet cable to computer port
7. Visit 192.168.1.1 in your browser
8. Click on tab `System` on the bottom of the screen and check firmware version for updates(optional).
9. 