# Setup
to set up your environment run

`source setup-env.bash`

it's important you use `source` so that your venv is setup


# Flashing
to flash, boot the esp32 into bootloader mode by applying power while pressing G0. Then run:

`./flash_cardputer.bash <PORT>`

where `<PORT>` is the serial port that the cardputer is attached to.

# Installing the App
copy `app/meshtastic-serial.py` to your `apps` folder on your sd card, then insert the SD card into your cardputer. You'll then likely need to reload your apps.
