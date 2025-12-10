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
neopixel.colors(NeoPixelColors.Purple)
]
// start
strip.setBrightness(80)
basic.forever(function () {
    // nastaví všechny LEDky najednou na aktuální barvu v pořadí
    strip.showColor(barvy[pozice])
    strip.show()
    // posuň na další barvu
    pozice += 1
    if (pozice >= barvy.length) {
        // vrať se na začátek
        pozice = 0
    }
    // 0,5 sekundy jedna barva
    basic.pause(500)
})
