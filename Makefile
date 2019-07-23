CC=g++
CFLAGS=-lGL -lX11 -lglfw -ldl -Idir -I./include -Wall -L/usr/local/lib/ -lassimp

all: triangle.cpp glad.c stb_image.cpp
	$(CC) -o triangle triangle.cpp glad.c stb_image.cpp $(CFLAGS)

load_model: load_model.cpp glad.c stb_image.cpp
	$(CC) -o load_model load_model.cpp glad.c stb_image.cpp $(CFLAGS)

