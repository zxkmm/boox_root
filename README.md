# boox_root

## Usage
1. install all apps
2. root with patched version of kingroot provided in this repo
3. replace `/system/bin/su` with the su file provided in this repo, set permission 0755
    if you havn't see su file in /system/bin, in kingroot's root manager, click de-root, and start over step 2
4. open supersu and click update su file in popout window
5. click uninstall other supersu app if popout window exist
6. uninstall all installed apps excepy supersu
7. delete following file or dir, or use the shell script if you know how:
```
    "/system/xbin/sutemp"
    "/system/xbin/ku.sud"
    "/system/app/superuser.apk"
    "/data/data/com.kingroot.RushRoot"
    "/data/data/com.kingroot.kinguser"
    "/system/bin/sutemp"
    "/data/app/com.kingroot.RushRoot-*.apk"
    "/data/app-lib/com.kingroot.RushRoot-*"
    ```   
   
       

8. open supersu to double check, allow all the things it required
9. reboot
10. open supersu, if nothing error pop out, it took over your su manager successfully.
11. done


## Disclaimer

This project is intended to provide a verified way, but its use may result in device damage or instability. The use of this project is entirely at the user's own risk.

Before using this project, please take note of the following:

1. This project may require specific technical knowledge and operational skills. If you are unsure of your capabilities, please refrain from using this project.

2. This project may involve modifications to system files or system-level operations, which could lead to device issues or malfunctions. Before using this project, it is strongly recommended to back up important data.

4. When using this project, please adhere to applicable laws, regulations, and manufacturer guidelines. Unauthorized actions may violate legal regulations or the manufacturer's warranty policy.

5. This repo contains binary files, use them on your own risk.

By using this repo, you acknowledge that you understand and accept the aforementioned disclaimer, and you are willing to assume all risks and consequences associated with the use of this project.

If you disagree or do not understand the above disclaimer, please refrain from using this project.
