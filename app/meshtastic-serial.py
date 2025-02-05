import random, time
from machine import Pin, freq, Timer
from lib.display import Display
from lib.userinput import UserInput
from lib.hydra.config import Config
from lib.hydra.beeper import Beeper
from font import vga1_8x16 as small_font
from font import vga2_16x32 as big_font
import neopixel


freq(240_000_000)
led = neopixel.NeoPixel(Pin(21), 1, bpp=3)

tft = Display(use_tiny_buf=True)

blight = tft.backlight
blight.freq(1000)
blight.duty_u16(40000)

kb = UserInput()
beep = Beeper()

config = Config()
ui_color = config.palette[8]
bg_color = config.palette[2]

def main():
    redraw = True
    hello = "hewwo"
    while True:
        if redraw:
            tft.fill(bg_color)

            tft.text(hello, 120- len(hello)*16//2, 70 - 16 - 10, ui_color, font=big_font)

            tft.show()
            redraw = False
main()
