Electric Imp FT800 Library
==========================
The [Embedded Video Engine (EVE)](http://www.ftdichip.com/EVE.htm) chip is an excellent embedded display, touchscreen, and audio controller from FTDI.

This library is a partial [Elecric Imp](http://electricimp.com) port of the [sample app available in C]( http://www.ftdichip.com/Products/Modules/VM800C.html) from FTDI.  The code in device.nut assumes you're using part [#VM800C35A-D](http://apple.clickandbuild.com/cnb/shop/ftdichip?op=catalogue-products-null&prodCategoryID=200&title=VM800C+-+3.5) - the credit card module with 3.5" TFT + touchscreen display.  

## Getting Started
Simply copy device.nut into your IDE's device pane.  At the moment there is no agent code necessary.  This demo board exposes an SPI interface and you'll find the pinout at the top of device.nut.  The PD pin is optional and must be wired high if not connected to the Imp.  If you're using a different demo board or screen, you'll need to adjust the values of the last section of constants labeled "Configurable screen settings."

## Contributing
I've clearly left a large part of the libary missing.  If you end up porting another chunk, I'd love to include your work.  Simply fork this repo and submit a push request.  Thanks!

## License
MIT License - © Jason Snell 2014
