Electric Imp FT800 Library
==========================
![Electric Imp + FT800](https://pbs.twimg.com/media/BcJL-onCcAA4hoD.jpg)

The [Embedded Video Engine (EVE)](http://www.ftdichip.com/EVE.htm) chip is an excellent embedded display, touchscreen, and audio controller from FTDI.

This library is a partial [Elecric Imp](http://electricimp.com) port of the [sample app available in C]( http://www.ftdichip.com/Products/Modules/VM800C.html) from FTDI.  The code in device.nut assumes you're using part [#VM800C35A-D](http://apple.clickandbuild.com/cnb/shop/ftdichip?op=catalogue-products-null&prodCategoryID=200&title=VM800C+-+3.5) - the credit card module with 3.5" TFT + touchscreen display.  You can also order via DigiKey part number [768-1198-ND](http://www.digikey.com/product-search/en?keywords=768-1198-ND).  If you're looking for Electric Imp parts, DigiKey also has the [April board](http://www.digikey.com/product-search/en?keywords=1413-1004-ND) and the [Imp](http://www.digikey.com/product-search/en?keywords=1413-1002-ND).

## Getting Started
You can power the system using either the April board or the VM800C35A board.  If you use the April, you'll have to connect the 3v3 pin on the April to the 3v3 and 5v pins on the VM800C35A and set its jumper to DC-IN (see the [VM800C35A datasheet](http://www.ftdichip.com/Support/Documents/DataSheets/Modules/DS_VM800C.pdf) for details).  The easier way is to power the imp with the VM800C35A by setting its jumper to USB and connecting the 5v pin on the VM800C35A to the VIN pin on the April (the jumper on the April doesn't matter).  Don't forget to connect the ground pins!

Simply copy device.nut into your IDE's device pane.  At the moment there is no agent code necessary.  This demo board exposes an SPI interface and you'll find the pinout at the top of device.nut.  The PD pin is optional and must be wired high if not connected to the Imp.  If you're using a different demo board or screen, you'll need to adjust the values of the last section of constants labeled "Configurable screen settings."

## Examples
See the examples directory for examples of how to use this library.  To get your imagination rolling, here is a [video](http://www.youtube.com/watch?v=HQfbOWwua6g) of an ANSI art scroller.

## Contributing
I've clearly left a large part of the libary missing.  If you end up porting another chunk, I'd love to include your work.  Simply fork this repo and submit a pull request.  Thanks!

## License
MIT License - © Jason Snell 2014
