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

strip.setBrightness(100)

// na začátku nastav každou LEDku jinou barvou
for (let i = 0; i < 8; i++) {
    strip.setPixelColor(i, barvy[i])
}
strip.show()

basic.forever(function () {
    strip.rotate(1)      // posune všechny barvy o jednu pozici dopředu
    strip.show()
    basic.pause(200)     // rychlost otáčení
})