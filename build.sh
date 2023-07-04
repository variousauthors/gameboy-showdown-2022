mkdir -p build objects

rgbgfx -T -h -o assets/valley-graphics.2bpp assets/valley-graphics.png

rgbasm -i src -o objects/main.o src/main.asm
rgblink -n build/showdown.sym -m build/showdown.map -o build/showdown.gb objects/main.o
rgbfix -v -p 0 build/showdown.gb