#!/bin/python3
import os
import sys


if __name__ == "__main__":
    file_tag: str = "synaps_gcs"
    if len(sys.argv) == 2:
        file_tag = sys.argv[1]

    all_entries = os.listdir("./logs")

    all_entries.sort(reverse=True)

    for entry in all_entries:
        if file_tag in entry:
            print("./logs/" + entry)
            sys.exit()
