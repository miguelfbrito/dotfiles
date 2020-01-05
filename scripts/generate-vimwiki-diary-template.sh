#!/usr/bin/python

import sys
import datetime

template = """# {date}

## Daily Checklist

1.
2.

## Goals

## Notes

## Fun

## Work log

| Start | End | Time | #Todo | Prod | Happ |
|-------|-----|------|-------|------|------|
|       |     |      |       |      |      |
|       |     |      |       |      |      |

Total: 

## End of day review
"""

date = (datetime.date.today() if len(sys.argv) < 2
        # Expecting filename in YYYY-MM-DD.foo format
        else sys.argv[1].rsplit(".", 1)[0])
print(template.format(date=date))
