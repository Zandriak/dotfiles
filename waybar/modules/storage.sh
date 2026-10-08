#!/bin/sh
# ~/.config/waybar/modules/storage.sh

mount="${1:-/}"
warning=20     # class "warning" when free% < 20
critical=10    # class "critical" when free% < 10

df -h -P -l "$mount" | awk -v warning="$warning" -v critical="$critical" '
  NR == 1 { next }                       # skip header
  NR == 2 {                              # first data line = fs for "$mount"
    fs = $1; size = $2; used = $3; avail = $4; pct = $5; mnt = $6
    sub(/%$/, "", pct)

    class = ""
    if ((100 - pct) < critical)      class = "critical"
    else if ((100 - pct) < warning)  class = "warning"

    # NOTE: "\\n" here emits a JSON-escaped newline (backslash-n), not a raw control char
    tooltip = "Filesystem: " fs  "\\nSize: "    size \
              "\\nUsed: "    used "\\nAvail: "  avail \
              "\\nUse%: "    pct  "%\\nMounted on: " mnt

    printf "{\"text\":\"%s\", \"percentage\":%s, \"class\":\"%s\", \"tooltip\":\"%s\"}\n", \
           avail, pct, class, tooltip
    found = 1
    exit
  }
  END {
    if (!found)
      print "{\"text\":\"n/a\", \"percentage\":0, \"class\":\"\", \"tooltip\":\"df returned no data\"}"
  }
'

