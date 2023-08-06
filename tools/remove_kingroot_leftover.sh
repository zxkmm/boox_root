#!/system/bin/sh

if [ "$(id -u)" -ne 0 ]; then
  echo "This script requires root privileges. Please run as root."
  exit 1
fi

SUTEMP_PATH="/system/xbin/sutemp"
KUSUD_PATH="/system/xbin/ku.sud"

if [ -f "$SUTEMP_PATH" ]; then
  rm -f "$SUTEMP_PATH"
  echo "Deleted $SUTEMP_PATH"
else
  echo "$SUTEMP_PATH does not exist."
fi

if [ -f "$KUSUD_PATH" ]; then
  rm -f "$KUSUD_PATH"
  echo "Deleted $KUSUD_PATH"
else
  echo "$KUSUD_PATH does not exist."
fi

echo "Script execution completed. https://github.com/zxkmm/boox_root.git"
