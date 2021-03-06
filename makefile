CC		= g++
INCDIR		= /opt/local/include
CFLAGS		= -Wall \
		-I/$(INCDIR) \
		-I. 
#\
#-std=c++0x 
# CFLAGS		= -std=c++0x -Wall \
# 		-I/$(INCDIR) \
# 		-I.

LIBS		= -lm -lusb

#SRCS		= bind_test.cpp 

OBJS		= $(SRCS:.c=.o)
PROGRAM		= usb_hub_port1_power_ctr_test.exe

all:		$(PROGRAM)

usb_hub_port1_power_ctr_test.exe: usb_hub_port1_power_ctr_test.c usb_hub_port1_power_ctr.h usb_hub_port1_power_ctr.c
	gcc usb_hub_port1_power_ctr_test.c usb_hub_port1_power_ctr.c -o usb_hub_port1_power_ctr_test.exe -lm -lusb

%.exe: %.cpp
	$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@ $<

%.exe: %.c
	gcc $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@ $<


#$(PROGRAM):	$(OBJS) $(HDRS) 
#		$(CC) $(CFLAGS) $(OBJS) $(LDFLAGS) $(LIBS) -o $(PROGRAM)
clean:;		rm -f *.o *~ $(PROGRAM)
