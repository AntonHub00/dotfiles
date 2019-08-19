#!/usr/bin/env python3

import subprocess
import time

def read_status():
    """
    This function reads the output of your command, finds the line with
    'percentage' (line 17, where first line = 0) and reads the figure
    """
    command = "upower -i $(upower -e | grep BAT) | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//"
    get_batterydata = subprocess.Popen(["/bin/bash", "-c", command], stdout=subprocess.PIPE)
    return get_batterydata.communicate()[0].decode("utf-8").replace("\n", "")


def take_action():
    """
    When the charge is below 15%, I assume the action does
    not have to be repeated every 10 seconds. As it is, it only runs
    1 time if charge exceeds the values. Then only if it exceeds the
    limit again.
    """
    notification_sent = False
    while True:
        charge = int(read_status())
        if charge <= 15:
            if not notification_sent:
                subprocess.Popen(["/bin/bash", "-c", f"notify-send 'Battery at {charge}%!!!'"])
                notification_sent = True
        else:
            notification_sent = False
        time.sleep(180)


take_action()
