#include "usb_hub_port1_power_ctr.h"

int main()
{
  int i;
  for(i=0;i<4;i++){
    usb_hub_port1_power_ctr(0) ; //off
    usleep(2000000); // 2.0 sec  sleep
    usb_hub_port1_power_ctr(1) ; //on
    usleep(3000000); // 3.0 sec  sleep
  }
  return 0;
}
