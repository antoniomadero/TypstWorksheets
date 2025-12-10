let barvaIndex = 0
let pozice = 0
let strip = neopixel.create(DigitalPin.P0, 8, NeoPixelMode.RGB)
let barvy = [
neopixel.colors(NeoPixelColors.Red),
neopixel.colors(NeoPixelColors.Orange),
neopixel.colors(NeoPixelColors.Yellow),
neopixel.colors(NeoPixelColors.Green),
neopixel.colors(NeoPixelColors.Blue),
neopixel.colors(NeoPixelColors.Indigo),
neopixel.colors(NeoPixelColors.Violet),
neopixel.colors(NeoPixelColors.Purple),
neopixel.colors(NeoPixelColors.White),
neopixel.colors(NeoPixelColors.Black)
]
strip.setBrightness(100)
strip.clear()
strip.show()
basic.forever(function () {
    strip.clear()
    // zapni aktuální LEDku aktuální barvou
    strip.setPixelColor(pozice, barvy[barvaIndex])
    strip.show()
    // posuň pozici i barvu
    pozice += 1
    if (pozice >= 8) {
        pozice = 0
    }
    barvaIndex += 1
    if (barvaIndex >= barvy.length) {
        barvaIndex = 0
    }
    basic.pause(150)
})
