#!/system/bin/sh

if [ "$(id -u)" -ne 0 ]; then
  echo "This script requires root privileges. Please run as root."
  exit 1
fi

static_names_match=(
  "/system/xbin/sutemp"
  "/system/xbin/ku.sud"
  "/system/app/superuser.apk"
  "/data/data/com.kingroot.RushRoot"
  "/data/data/com.kingroot.kinguser"
  "/system/bin/sutemp"
)

for file_path in "${static_names_match[@]}"; do
  if [ -e "$file_path" ]; then
    if [ -d "$file_path" ]; then
      rm -rf "$file_path"
      echo "Deleted directory: $file_path"
    else
      rm -f "$file_path"
      echo "Deleted file: $file_path"
    fi
  else
    echo "$file_path does not exist."
  fi
done

names_match=(
  "/data/app/com.kingroot.RushRoot-*.apk"
  "/data/app-lib/com.kingroot.RushRoot-*"
)

for pattern in "${names_match[@]}"; do
  for file_path in $pattern; do
    if [ -e "$file_path" ]; then
      rm -f "$file_path"
      echo "Deleted: $file_path"
    else
      echo "$file_path does not exist or is not a file."
    fi
  done
done

echo "Script execution completed. https://github.com/zxkmm/boox_root"
