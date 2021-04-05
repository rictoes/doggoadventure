# 1 "main.c"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "main.c"



# 1 "mygbalib.h" 1
# 1 "sprites.h" 1
# 1 "gba.h" 1







typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef signed char s8;
typedef signed short s16;
typedef signed int s32;

typedef unsigned char byte;
typedef unsigned short hword;
typedef unsigned int word;
# 211 "gba.h"
enum
{
    VBLANK_HANDLER,
    HBLANK_HANDLER,
    VCOUNT_HANDLER,
    TIMER0_HANDLER,
    TIMER1_HANDLER,
    TIMER2_HANDLER,
    TIMER3_HANDLER,
    SERIAL_COM_HANDLER,
    DMA0_HANDLER,
    DMA1_HANDLER,
    DMA2_HANDLER,
    DMA3_HANDLER,
    KEYS_HANDLER,
    CART_HANDLER,
    MAX_INTERRUPT_HANDLERS,
};
# 267 "gba.h"
typedef void (*fp)(void);
# 2 "sprites.h" 2




int palette[] = {
((0) + (0<<5) + (0<<10)),
((31) + (31<<5) + (31<<10)),
((31) + (31<<5) + (0<<10)),
((31) + (0<<5) + (0<<10)),
((1) + (1<<5) + (1<<10))
};




u16 sprites[] = {

0,1,0,0,0,0,1,0,
0,1,1,0,0,1,1,0,
0,1,1,1,1,1,1,0,
1,1,1,1,1,1,1,1,
1,4,1,4,4,1,4,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
0,1,1,1,1,1,1,0,


0,1,0,0,0,0,1,0,
0,1,1,0,0,1,1,0,
0,1,1,1,1,1,1,0,
1,1,1,1,1,1,1,1,
1,4,1,4,4,1,4,1,
1,1,1,1,1,1,1,1,
1,1,1,3,3,1,1,1,
0,1,1,3,3,1,1,0,


0,1,0,0,0,0,1,0,
0,1,1,0,0,1,1,0,
0,1,1,1,1,1,1,0,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
0,1,1,1,1,1,1,0,


0,1,0,0,0,0,1,0,
0,1,1,0,0,1,1,0,
0,1,1,1,1,1,1,0,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
0,1,1,1,1,1,1,0,


0,1,0,0,0,0,0,0,
0,1,1,0,0,0,0,0,
1,1,1,1,1,0,0,0,
1,1,4,1,1,1,4,4,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,0,
0,1,1,1,0,0,0,0,


0,1,0,0,0,0,0,0,
0,1,1,0,0,0,0,0,
1,1,1,1,1,0,0,0,
1,1,4,1,1,1,4,4,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,3,3,
1,1,1,1,1,1,3,3,
0,1,1,1,0,0,0,0,


0,0,0,0,0,0,1,0,
0,0,0,0,0,1,1,0,
0,0,0,1,1,1,1,1,
4,4,1,1,1,4,1,1,
1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,
0,1,1,1,1,1,1,1,
0,0,0,0,1,1,1,0,


0,0,0,0,0,0,1,0,
0,0,0,0,0,1,1,0,
0,0,0,1,1,1,1,1,
4,4,1,1,1,4,1,1,
1,1,1,1,1,1,1,1,
3,3,1,1,1,1,1,1,
3,3,1,1,1,1,1,1,
0,0,0,0,1,1,1,0,


0,0,0,0,0,0,0,0,
0,0,0,0,0,1,0,0,
0,0,0,0,0,1,1,0,
0,0,0,0,1,0,0,0,
0,0,0,1,0,0,0,0,
0,1,1,0,0,0,0,0,
0,0,1,0,0,0,0,0,
0,0,0,0,0,0,0,0
};
# 2 "mygbalib.h" 2
# 1 "background.h" 1



int bg_palette[] = {
((0) + (20<<5) + (0<<10)),
((15) + (9<<5) + (3<<10)),
((25) + (15<<5) + (4<<10)),
((1) + (1<<5) + (1<<10)),
((0) + (16<<5) + (4<<10))
};



u8 tile_map_0[] = {
4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,3,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,3,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,2,0,0,
2,0,0,3,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,2,0,0,
2,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,3,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,2,0,0,
2,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,3,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,3,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,3,0,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,2,0,0,
6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};


u8 tile_map_1[] = {
4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,5,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,2,0,0,0,0,0,0,0,0,2,0,0,
2,0,4,1,1,1,1,1,1,5,0,4,1,1,1,1,1,1,5,3,2,0,0,0,0,0,0,0,0,2,0,0,
2,0,2,0,0,3,0,0,0,2,3,2,0,0,0,0,0,0,2,0,2,0,0,3,0,0,0,0,0,2,0,0,
2,0,6,1,1,1,1,1,1,7,0,6,1,1,1,1,1,1,7,0,2,0,3,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,0,2,0,0,0,0,3,0,0,0,2,0,0,
2,0,4,1,1,1,1,1,1,5,0,4,1,1,1,1,1,1,5,0,2,0,0,0,0,0,0,0,0,2,0,0,
2,0,2,0,0,3,0,3,0,2,0,2,0,0,0,0,0,3,2,0,2,0,0,0,0,0,0,0,3,2,0,0,
2,0,6,1,1,1,1,1,1,7,0,6,1,1,1,1,1,1,7,0,2,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,2,0,3,0,0,0,0,0,0,2,0,0,
8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,3,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,2,0,0,
2,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,3,0,0,0,0,0,0,0,0,0,2,0,0,
2,0,0,0,0,3,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,3,0,0,0,0,0,2,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,2,0,0,
6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};

u16 bg_tiles[] = {
# 73 "background.h"
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,


0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
2,2,2,2,2,2,2,2,
1,1,1,1,1,1,1,1,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,0,0,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,4,0,0,0,0,
4,0,0,4,0,0,4,0,
0,4,0,4,0,4,0,0,
0,4,0,4,0,4,0,0,
0,0,0,0,0,0,0,0,


0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,2,2,2,2,2,
0,0,0,2,2,1,1,1,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
2,2,2,2,2,0,0,0,
1,1,1,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,2,2,2,
0,0,0,1,1,1,1,1,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,0,0,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
2,2,2,2,2,0,0,0,
1,1,1,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,0,0,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,2,2,2,
0,0,0,2,2,1,1,1,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
2,2,2,2,2,0,0,0,
1,1,1,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
2,2,2,2,2,2,2,2,
1,1,1,1,1,1,1,1,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,1,1,0,0,0,
0,0,0,0,0,0,0,0,


0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
2,2,2,2,2,2,2,2,
1,1,1,2,2,1,1,1,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
2,2,2,2,2,2,2,2,
1,1,1,2,2,1,1,1,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,
0,0,0,2,2,0,0,0,


1,1,1,1,1,1,1,1,
1,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,1,
1,1,1,1,1,1,1,1
};
# 3 "mygbalib.h" 2

extern int doggo_dir;



void checkbutton(void)
{

    u16 buttons = (0x3FF & (~*(volatile u16*)0x4000130));

    if ((buttons & 0x001) == 0x001)
    {
        *(u16*)0x4000000 = 0x40 | 0x1000 | 0x01 | 0x100;
    }
    if ((buttons & 0x002) == 0x002)
    {
        *(u16*)0x4000000 = 0x40 | 0x1000 | 0x01 | 0x200;
    }
    if ((buttons & 0x004) == 0x004)
    {

    }
    if ((buttons & 0x008) == 0x008)
    {

    }
    if ((buttons & 0x010) == 0x010)
    {
                  doggo_dir = 2;
    }
    if ((buttons & 0x020) == 0x020)
    {
                  doggo_dir = 3;
    }
    if ((buttons & 0x040) == 0x040)
    {
                  doggo_dir = 1;
    }
    if ((buttons & 0x080) == 0x080)
    {
                  doggo_dir = 0;
    }
}
# 61 "mygbalib.h"
void drawSprite(int numb, int N, int x, int y)
{

    *(unsigned short *)(0x7000000 + 8*N) = y | 0x2000;
    *(unsigned short *)(0x7000002 + 8*N) = x;
    *(unsigned short *)(0x7000004 + 8*N) = numb*2;
}

void fillPalette(void)
{
    int i;


    for (i = 0; i < 5; i++)
        ((unsigned short *) 0x5000200)[i] = palette[i];
}


void fillSprites(void)
{
    int i;


    for (i = 0; i < 128*16*16; i++)
        ((unsigned short *) 0x6010000)[i] = (sprites[i*2+1] << 8) + sprites[i*2];


    for(i = 0; i < 128; i++)
        drawSprite(0, i, 240,160);
}

void fillBGPalette(void)
{
    int i;


    for (i = 0; i < 5; i++)
        ((unsigned short *) 0x5000000)[i] = bg_palette[i];
}

void fillBG(void)
{
    int i;


    for (i = 0; i < 128*16*16; i++)
        ((unsigned short *) 0x6000000)[i] = (bg_tiles[i*2+1] << 8) + bg_tiles[i*2];
}

void fillTileMap(void)
{
    int i;


    for (i = 0; i < 32*32; i++)
         {
        ((unsigned short *) 0x6008000)[i] = tile_map_0[i];
                  ((unsigned short *) 0x600a000)[i] = tile_map_1[i];
         }
}
# 5 "main.c" 2
# 1 "doggo.h" 1
# 1 "pathmap.h" 1

u8 pathmap[10][28] = {
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0},
{1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
{1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
{1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0},
{1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
{1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
{1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
};
# 2 "doggo.h" 2

extern int doggo_face;
extern int doggo_dir;
extern int doggo_x;
extern int doggo_y;
extern int doggo_x_target;
extern int doggo_y_target;
extern int doggo_speed;
int counter = 0;


void drawDoggo_pathmap(void)
{


        int pathmap_x;
        int pathmap_y;

        switch(doggo_dir){
        case 0:
        pathmap_x = doggo_x/8;
        pathmap_y = doggo_y/8;
        if(pathmap[pathmap_y+1][pathmap_x] == 1)
                doggo_y++;
        break;

        case 1:
        pathmap_x = doggo_x/8;
        pathmap_y = (doggo_y+7)/8;
        if(pathmap[pathmap_y-1][pathmap_x] == 1)
                doggo_y--;
        break;

        case 2:
        pathmap_x = doggo_x/8;
        pathmap_y = doggo_y/8;
        if(pathmap[pathmap_y][pathmap_x+1] == 1)
                doggo_x++;
        break;

        case 3:
        pathmap_x = (doggo_x+7)/8;
        pathmap_y = doggo_y/8;
        if(pathmap[pathmap_y][pathmap_x-1] == 1)
                doggo_x--;
        break;
        }


        if(counter == 0)
        {
                if(doggo_face == 0) doggo_face++;
                else doggo_face--;
        }
        counter++;
        counter = counter%5;
        drawSprite(doggo_face + doggo_dir*2, 0, doggo_x+8, doggo_y+8);
}

void drawDoggo(void)
{
        if(counter == 0)
        {
                if(doggo_face == 0) doggo_face++;
                else doggo_face--;
        }

        counter++;
        counter = counter%5;
# 83 "doggo.h"
        if(doggo_x < 0) doggo_x += 217;
        doggo_x = doggo_x % 217;
        if(doggo_y < 0) doggo_y += 113;
        doggo_y = doggo_y % 113;

        drawSprite(doggo_face + doggo_dir*2, 0, doggo_x+8, doggo_y+8);
}
# 6 "main.c" 2






int doggo_face = 0;
int doggo_dir = 0;
int doggo_x = 0;
int doggo_y = 0;
int doggo_speed = 1;

void Handler(void)
{
   *(u16*)0x4000208 = 0x00;

   if ((*(u16*)0x4000202 & 0x8) == 0x8)
   {

                checkbutton();
                drawDoggo_pathmap();

   }

   *(u16*)0x4000202 = *(u16*)0x4000202;

   *(u16*)0x4000208 = 0x01;
}

int main(void)
{

   *(u16*)0x4000000 = 0x40 | 0x1000 | 0x01 | 0x100;

        *(u16*)0x4000008 |= 0 |
          (0 << 2) |
          (0 << 6) |
          (1 << 7) |
          (16 << 8) |
          (0 << 13) |
          (0 << 14);

        *(u16*)0x400000A |= 1 |
          (0 << 2) |
          (0 << 6) |
          (1 << 7) |
          (20 << 8) |
          (0 << 13) |
          (0 << 14);


   fillPalette();
        fillSprites();
        fillBGPalette();
        fillBG();
        fillTileMap();


   (*(unsigned int*)0x3007FFC) = (int)&Handler;
   *(u16*)0x4000200 = 0x8;
   *(u16*)0x4000208 = 0x1;


        while(1)
        {
        *(u16*)0x4000100 = 63500;
        *(u16*)0x4000102 |= 0x0002 | 0x0080 | 0x0040;
        }
        return 0;
}
