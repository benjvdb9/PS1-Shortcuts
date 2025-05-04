from sys import stdout
from keyboard import read_event
from msvcrt import kbhit, getch 
from pygetwindow import getActiveWindow


def flush_input():
    while kbhit():
        getch()

if __name__ == "__main__":
    count = 0
    window_title = getActiveWindow().title

    stdout.write("\033[?25l")
    stdout.write("\rCount: 0")
    stdout.flush()
    while True:
        stdout.write("\rCount: %d" % count)
        stdout.flush()

        etype = "down"
        while etype != "up":
            event = read_event(suppress=False)
            etype = event.event_type
        
        keypress = event.name

        active_window = getActiveWindow()
        if active_window and active_window.title == window_title:    
            if keypress == "r":
                count = 0
                stdout.write("\r" + " " * (len("Count: %d" % count) + 1))
                stdout.flush()
            elif keypress == "q":
                print("\nExiting...")
                flush_input()
                break
            elif keypress == "space":
                count += 1