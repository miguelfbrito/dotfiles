#!/usr/bin/python

import sys
import datetime

template = """# {date}

## Daily Checklist
- [ ] LeetCode April Challenge

## Goals
- [ ] 4h
    - [ ] Pomodoro 1 (50:10)
    - [ ] Pomodoro 2 (50:10)
    - [ ] Pomodoro 3 (50:10)
    - [ ] Pomodoro 4 (50:10)
    - [ ] Pomodoro 5 (50:10)

"""

date = (datetime.date.today() if len(sys.argv) < 2
        # Expecting filename in YYYY-MM-DD.foo format
        else sys.argv[1].rsplit(".", 1)[0])
print(template.format(date=date))
