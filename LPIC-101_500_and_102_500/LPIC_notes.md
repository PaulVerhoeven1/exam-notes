| **Package**              |                                                              |
| ------------------------ | ------------------------------------------------------------ |
| **DPKG**                 | Debian based machines (Debian, Ubuntu)                       |
| Dpkg -i dropbox.deb      | Installes package                                            |
| Dpkg -L dropbox          | Finding files that are installed by a package                |
| Dpkg -s nano             | Show if a package has been installed and some information about the package |
| Dpkg-reconfigure dropbox | Reconfigure a package based on the configfile                |
| Dpkg —remove dropbox     | Remove package without config file                           |
| Dpkg —purge dropbox      | Remove package including config file                         |
|                          |                                                              |
| **APT**                  |                                                              |
| /etc/apt/sources.list    | File where the repositories are stored in                    |
| Apt-get install emacs    | Installes package and if a package already exists it will upgrade it |
| Depconf-show             | Show package configuration                                   |
| Aptitude                 | Terminal interface for managing all the packages on the system (Debian / ubuntu only!!) |
|                          |                                                              |
| **RPM**                  | Red Hat based machines (CentOS, Red Hat, YellowDog, Suse, Fedora) |
| Rpm -i dropbox.dpkg      | Installes package                                            |
| Rpm -qi dropbox.dpkg     | Information about package                                    |
| Rpm -q —list dropbox     | Finding files that are installed by a package                |
| Rpm -qR dropbox          | Query al the requirements that the package needs             |
| Rpm -qI dropbox          | Verify that a package has been installed                     |
| Rpm -qa                  | Show all installed rpm packages                              |
|                          |                                                              |
| **YUM**                  |                                                              |
| /etc/yum.repos.d         | Repo’s folder                                                |
| /etc/yum.conf            | Yum config file                                              |
| Yum update               | Update repo db                                               |
| Yum search httpd         | Search for a package                                         |
| Yum install httpd        | Installes package                                            |
| Yum check-update httpd   | Checks for update of a package                               |
| Yum uppgrade             | Upgrade all packages                                         |
| Yum remove httpd         | remove package                                               |
| Yum list httpd           | Show information about installed package                     |
| Yum deplist httpd        | Show all the dependecys of a package                         |
| Yum clean                | Clear yum cache                                              |



| **Archiving**                        | **Description**                          |
| ------------------------------------ | ---------------------------------------- |
| Creating a iso from a file or CD-ROM | sudo dd if=/dev/cdrom of=/tmp/cdimg1.iso |
|                                      |                                          |
|                                      |                                          |
|                                      |                                          |

**Grub**

| **Grub**                               |                                                              |
| -------------------------------------- | ------------------------------------------------------------ |
| Boot legacy                            | Location: /boot/grub/menu.lst                                |
| Grub2                                  | Location: /boot/grub2/grub.cfg (BIOS) Location: /boot/efi/EFI/distro-name/grub.cfg (UEFI) |
|                                        |                                                              |
| /etc/default/grub                      | Changing settings for grub                                   |
| Grub2-mkconfig -o /boot/grub2/grub.cfg | Making a config for grub2                                    |



**Booting**

Post -> Bootloader -> Kernel (in memory, mounts root partition and runs initialisation program) -> initialization process starts the necessary background programs required for the system to operate 

Bootloader is installed on the MBR (Master boot record) 

Install GRUB on MBR:

- grub-install 

Show kernel ring buffer content:

\- dmesg 



Memory:

Show active partition where the swapfile is stored:

- Swapon -s

Get information about the usage of virtual memory:

\- vmstat

Root 

Grant user as sudo user -> visudo 

]

| **Folders** |                                                              |
| ----------- | ------------------------------------------------------------ |
| /etc/       | Config files                                                 |
| /var/       | Files that frequent change                                   |
| /dev/       | Device file location                                         |
| /proc/      | Provides all the info about the processes (Virtual)          |
| /sys        | Stores all the modifications to devices (Virtual)            |
| /lib/       | Stores al the binaries files                                 |
| /usr/       | all system-wide, read-only files installed by (or provided by) the OS |



| **Command**                                            |                                                              |
| ------------------------------------------------------ | ------------------------------------------------------------ |
| w                                                      | Show who is logged in to the machine and what they are doing |
| wc                                                     | Counting rows, words, bytes                                  |
| Split -l 2                                             | Split files with 2 rows each                                 |
| Head                                                   | Showing the first 10 lines of a file (-n 2 for last 2 lines etc) |
| Tail                                                   | Showing the last 10 lines of a file (-n 2 for last 2 lines etc) |
| Diff                                                   | Show differences                                             |
| Sort                                                   | Sorting the output                                           |
| Nl                                                     | Numbering the lines in the output                            |
| ping [google.com](http://google.com) \| tee output.txt | Write the STDOUT to a file and also shows the STDOUT         |
| Cut                                                    |                                                              |
| Set                                                    | Print all the environment variables                          |
| Uniq                                                   | Finding uniq file lines                                      |
| jobs                                                   | Show all background tasks running in the current shell       |





Process:

| **Processes (top)**                                         |                                                              |
| ----------------------------------------------------------- | ------------------------------------------------------------ |
| Top                                                         | Load Average: 1 - 5 - 15 (minutes)                           |
| Shift M                                                     | Sort on Memory utilisation                                   |
| Shift P                                                     | Sort on CPU utilisation                                      |
| R (Renice value, Change priority of the process (-20 to 19) | Values -20 to 19                                             |
| K (15: Quit), 9 Force Quit                                  | Kill process                                                 |
|                                                             |                                                              |
| Nice -n 10 bash test.sh                                     | Running the script in the bash terminal with nice level 10   |
| Renice 15 -p 1949                                           | Changing the nice value of the process 1949 (can find it through ps command) |
| Kill \<pid id\>                                             | Kill a process (default: 15 TERM)                            |
| Kill -s Kill \<pid id\>                                     | Kills a process                                              |
| Kill -9 \<pid id\>                                          | Force quit a process                                         |



| **Find files**         |                                      |
| ---------------------- | ------------------------------------ |
| Locate                 |                                      |
| Locate \<search item\> |                                      |
| Updatedb               | Updates the locate database          |
| Find /etc -name “motd” | Finding files with the motd included |



| **Pipe** |                                                  |
| -------- | ------------------------------------------------ |
| >        | Overwrite file                                   |
| >>       | Appending to a file                              |
| 2>       | Redirect all errors to a file (overwrite)        |
| 2>>      | Redirect all errors to a file (appending)        |
| &>       | Redirect output and errors to a file (overwrite) |
| &>>      | Redirect output and errors to a file (apending)  |



| **Grep**                                 |                                                              |
| ---------------------------------------- | ------------------------------------------------------------ |
| Grep \<pattern\> \<filename\>            | Search for a keyword in a file                               |
| Grep -lr cron /etc                       | Search for patterns in all the files in a folder (including all subdirectories because of -r) |
| **Egrep (Extended Regular Expressions)** |                                                              |
| Egrep -I ‘hello.*world’ \<filename\>     | -I : ignore case sensitive ‘hello.*world’: hello and world in it |
| Egrep -I ‘hello\|world’ \<filename\>     | -I : ignore case sensitive ‘hello.*world’: hello or world in it |
| Egrep -v ‘hello\|world’ \<filename\>     | -v: everything that does not contain hello or world in it    |
| **Fgrep (Fixed, same as Grep -f)**       |                                                              |
|                                          |                                                              |
|                                          |                                                              |



| **Regular Expressions**  |                                                              |
| ------------------------ | ------------------------------------------------------------ |
| \<keyword\>$ bijv: test$ | Matches and of the the string                                |
| ^\<keyword\> bijv: ^test | Matches start of string and represents characters not in the string. |
| [a-z ]                   | Matches on the string                                        |
|                          |                                                              |



| **Hardware**               |                                                              |
| -------------------------- | ------------------------------------------------------------ |
| lsdev                      | Showing all the devices installed on the system              |
| lsblk                      | Showing al the block devices                                 |
| lspci                      | Showing al the pci cards                                     |
| lsusb                      | Showing al the usb devices                                   |
| **Modules**                |                                                              |
| lsmod                      | Showing al the modules that are installed                    |
| modinfo \<module name\>    | Showing info about a module                                  |
| insmod \<module name.ko\>  | Install a module (can find it in /lib/modules)               |
| modprobe \<module name\>   | Install a module (can find it in /lib/modules) + all the dependencies |
| modpobe -r \<module name\> | Removes the module                                           |



| **Sed (change words)**                         |                                                              |
| ---------------------------------------------- | ------------------------------------------------------------ |
| Sed ’s/parttime/fulltime/‘ team                | Change every word from parttime to fulltime (s stands for substitution ofwel vervangen) (display it, not changing the original file) |
| Sed ‘/fulltime/w fulltime.txt’ team            | Write every line that has the word fulltime in it to a new file fulltime.txt (display it, not changing the original file) |
| Sed ‘0,/parttime/s/parttime/promotion’ team    | Change the first parttime with to promotion (display it, not changing the original file) |
| Sed -i ‘0,/parttime/s/parttime/promotion’ team | Change the first parttime with to promotion (change it, changing the original file) |
|                                                |                                                              |

| **Storage**                        |                                                              |
| ---------------------------------- | ------------------------------------------------------------ |
| Df -h                              | Show info about the file system (total space and available space) |
| Df -hT                             | Show info about the file system (total space and available space) and the filesystem type |
| Du                                 | Showing disk usage by directory                              |
| Iostat                             | Show disk statystics by partition                            |
| Lsblk                              | Show current partitions sizes and mounting points            |
| fdisk -l                           | Show all physical disk (MBR partition scheme (BIOS))         |
| fdisk -d                           | Delete a partition (MBR partition scheme (BIOS))             |
| gdisk -l                           | Show all physical disk (GPT partition scheme (UEFI))         |
| gdisk -d                           | Delete a partition (GPT partition scheme (UEFI))             |
|                                    |                                                              |
| **LVM**                            |                                                              |
| Pvcreate                           | Physical volume create                                       |
| Vgcreate                           | Volumegroupe create                                          |
| Lvcreate                           | Logical volume create                                        |
| lvmdiskcreate                      | Show all the physical disks in the machine                   |
|                                    |                                                              |
| **Mount**                          |                                                              |
| Mount -t ext4 /dev/sdb1 /media/usb | Mounting device /dev/sdb1 to /media/usb                      |
| /etc/fstab                         | For automatic mounting drives when the system boots          |
| /etc/mtab                          | Showing all the current mounted volumes                      |
|                                    |                                                              |



|                      |                                                              |
| -------------------- | ------------------------------------------------------------ |
|                      |                                                              |
|                      |                                                              |
| **UEFI**             |                                                              |
| Efi System Partition | Partition where UEFI stores the boot loader                  |
| /boot/efi            |                                                              |
| bcfg                 | Interactive shell within UEFI for changing the boot configuration |



| **EXT**                                         |                                                              |
| ----------------------------------------------- | ------------------------------------------------------------ |
| Ext2                                            |                                                              |
| Ext3 (standard)                                 | Has journaling                                               |
| Ext4                                            | Has journaling + bigger drive supports (up to 32TB drives)   |
|                                                 |                                                              |
| **MKFS**                                        |                                                              |
| Mkfs -t ext3 /dev/xvdf                          | Make filesystem                                              |
| Mkfs -t ext3 /dev/xvdf -m 25 -c                 | -m: reserved space for a crash (default is 5%) -c: check if the blocks are good on the drive |
|                                                 |                                                              |
| **SWAP**                                        |                                                              |
| dd if=/dev/zero of=/swap.swp bs=1024 count=800k | Creating a swap file                                         |
| Mkswap swap.swp                                 | Make swapfile                                                |
| Swapon swap.swp                                 | Enable swapfile                                              |
| Edit fstab file! /etf/fstab                     |                                                              |
| Swapoff -a                                      | Disables all swapfiles (based on fstab file)                 |



| **Terminal command line shortcuts** |                                             |
| ----------------------------------- | ------------------------------------------- |
| cntrl x + backspace                 | Delete everything what is before the cursor |
| cntrl a                             | Move back to the beginning of the line      |
| cntrl e                             | Move to the end of the line                 |
|                                     |                                             |



| **TAR**                |                                                              |
| ---------------------- | ------------------------------------------------------------ |
| -t                     | Shows the full archive                                       |
|                        |                                                              |
| **ZIP**                |                                                              |
| Zip test.zip file1.txt | Zipping a file                                               |
| **Gzip**               | Open source zip file format                                  |
| Tar -czvf              | -c = create -z = gzip -v = verbose (display each file name) -f = file |
| Tar -xzvf              | -x = extract -z = gzip -v = verbose (display each file name) -f = file |
| **Bzip2**              | Higher compression then Gzip                                 |
| Tar -cjvf              | -c = create -j = bzip2 -v = verbose (display each file name) -f = file |
| Tar -xjvf              | -x = extract -j = bzip2 -v = verbose (display each file name) -f = file |
| **Xz**                 | Highest compression but slower                               |
| tar -cJvf              | -c = create -J = XZ -v = verbose (display each file name) -f = file |
| Tar -xJvf              | -x = extract -J = XZ -v = verbose (display each file name) -f = file |

| **Hardlink / Symbolic link**     |                                     |
| -------------------------------- | ----------------------------------- |
| Ln [filename] [hardlink]         | Creating a hardlink                 |
| Ln -s [filename] [symbolic link] | Creating a softlink / symbolic link |
|                                  |                                     |
|                                  |                                     |



| **Services**                             |                                                             |
| ---------------------------------------- | ----------------------------------------------------------- |
| SysV                                     | /etc/init.d                                                 |
| /etc/inittab                             | SysV uses this configfile                                   |
|                                          |                                                             |
| Systemd                                  | /usr/lib/systemd/                                           |
| /usr/lib/systemd/system/                 | Systemd uses this folder                                    |
| /usr/lib/systemd/system/default.target e |                                                             |
| Systemctl get-default                    | Show what your default target is                            |
| stat /proc/1/exe                         | Check if you are running SysV or Systems                    |
| systemctl list-unit-files                | Showing witch services are started when the system boots    |
| systemctl \| grep running                | Showing witch services are currently running on the machine |

| **Tune2fs**              |                                                              |
| ------------------------ | ------------------------------------------------------------ |
| tune2fs -i 200 /dev/sda1 | Changing the interval in when the filesystem needs to be checked (ext2, ext3 and ext4) if you apply a 0 there will be no checks |

| **Pgrep**            | Ps + grep command                                            |
| -------------------- | ------------------------------------------------------------ |
| Pgrep -u root        | Showing all the process that are runned by root              |
| Pgrep -U \<user id\> | Showing all the process that are runned by a specific user, to show which UID a user has: id <name user> |
|                      |                                                              |
|                      |                                                              |

| /lib/systemd/system              | Folder where systemd stores the unit configurations  |
| -------------------------------- | ---------------------------------------------------- |
| .service .mount .device. .socket | Unit files fore systemd                              |
| Systemctl deamon-reload          | Reload the systemctl deamon if there are any changes |
| /sys/bus/usb/devices             | Folder where usb information has been stored         |
| /etc/udev/rules.d                | Location where udev rules are stored                 |
| Fsck                             | Check filesystem if there are no bad sectors etc.    |
| /etc/init.d                      | Scripts for starting and stopping services for SysV  |
| Systemd-delta                    | Show overwritten config files                        |

| **Upstart**    |                                         |
| -------------- | --------------------------------------- |
| Initctl reload | Reloading the configfiles for upstart   |
| Initctl list   | Showing all the running upstart scripts |
|                |                                         |

| /proc/mdstat | Information about RAID configs |
| ------------ | ------------------------------ |
|              |                                |



**LPIC 102-500**

| [**X.Org**](http://X.Org) **/ X11 (window manager)** | Client / server model                                     |
| ---------------------------------------------------- | --------------------------------------------------------- |
| X11 = communication protocol                         |                                                           |
| [x.org](http://x.org) display server                 |                                                           |
| /etc/X11/xorg.conf                                   | Config file for X11                                       |
| /etc/X11/xorg.conf.d                                 | Config directory for X11                                  |
| xhost +                                              | Disable Access control                                    |
| xhost -                                              | Enable Access Control                                     |
| Xhost +10.10.10.190                                  | Adding a client to the access control list                |
| Export DISPLAY=“10.10.10.12:0.0”                     | Exporting the display to the client 10.10.10.12           |
| Xwininfo                                             | Getting information about a window that is currently open |
| xdpyinfo                                             | Showing information about the display                     |
| **Wayland (window manager)**                         |                                                           |
| Replacement for for [x.org](http://x.org)            |                                                           |
|                                                      |                                                           |
|                                                      |                                                           |
|                                                      |                                                           |



| XDMCP (X Display Manager Control Protocol) | Manage graphical login process                     |
| ------------------------------------------ | -------------------------------------------------- |
| KDM                                        | KDE Desktop manager (Display Manager)              |
| GDM                                        | GNOME Desktop manager (Display Manager)            |
| LightDM                                    | Light display manager                              |
|                                            |                                                    |
| brltty                                     | Braile deamon for displaying Braille to the screen |
|                                            |                                                    |



| **Remote Desktop Software** |                                                              |
| --------------------------- | ------------------------------------------------------------ |
| VNC                         | Virtual Network Computing Not secure Only mouse movements en keystrokes    Uses RFB protocol (Remote Framebuffer) |
| Vncviewer                   | Connecting to a server and getting a remote connection       |
|                             |                                                              |
| Xrdp                        | Uses RDP (Remote Desktop Protocol) encrypted (TLS) /etc/xrdp/xrdp.ini |
| NX                          | Builded on the X window system                               |
| Spice                       | Open source Virtual machines                                 |

 

| **Localization** | Adapting to a place (locale)                                 |
| ---------------- | ------------------------------------------------------------ |
| ASCII            | 7 Bits (English Language)                                    |
| ISO-8859         | Group of standards 8 Bt character set                        |
| UNICODE          | 3 byte code (every character in the world) First 128 are the same as ASCII First 256 are based on 8859-1 standard |
| UTF              | 1-byte (UTF-8) 2-byte (UTF-16) A subform of unicode          |
| iconv            | Converts character setter                                    |



| **Locale**                          |                                       |
| ----------------------------------- | ------------------------------------- |
| Locale                              | Show locale settings (character sets) |
| Export LV_MONETARY=en_GB.UTF-8      | Changing individual settings          |
| Localctl                            | Viewing locale settings               |
| Localctl set-locale LANG=en_GB.utf8 |                                       |



| **Date / time**                                          |                                                             |
| -------------------------------------------------------- | ----------------------------------------------------------- |
| Date                                                     | Showing the current date / time                             |
| Sudo mv /etc/localtime /etc/localtime.bak                | Removing the original timezone                              |
| Sudo ln -s /usr/share/zoneinfo/US/Pacific /etc/localtime | Creating a symlink to the current time                      |
|                                                          |                                                             |
| hwclock                                                  | Changing the hardware clock in the BIOS                     |
| Hwclock —hctosys                                         | Synch hardware clock from the system clock                  |
| Hwclock —systohc                                         | Synch system clock from the hardware clock                  |
| Date +”%A, %B %d %Y”                                     | Changing the date /time to Day, Month, numeric day and year |
| Timedatectl                                              | Showing all the information including hardware clock (RTC)  |
| Timedatectl set-time “2018-08-02 06:15:00”               | Setting the time                                            |
| Tzconfig (old) -> dpkg-reconfigure tzdata (in ubuntu)    | Change Timezone (gui based)                                 |



| **CUPS**              | **Common Unix Printing System (port 631, port for IPP)**     |
| --------------------- | ------------------------------------------------------------ |
| lpc                   | Start : start printing Stop: stop printing Enable: enable the print queue Disable: disable the print queue Up: enable + start Down: Disable + stop Abort: stop spooling and disables printing |
| Lpq                   | Printing the print queue                                     |
| Lpq -P \<my printer\> | Showing the queue of a particular printer                    |
| Lpr                   | Submit a new print job                                       |
| Lprm                  | Remove a print job from the queue (for root everything, for a user all its own jobs) |
| Cancel                | Cancel a print request                                       |





| **User creation/ Group creation etc.** |                                                              |
| -------------------------------------- | ------------------------------------------------------------ |
| /etc/login.defs                        | Changing global variables such as password age etc.          |
| /etc/skel                              | When a user is created files from this folder will be copied to the user folder |
| /etc/passwd                            | Stores general user info: **Username**: It is used when user logs in. It should be between 1 and 32 characters in length. **Password**: An x character indicates that encrypted password is stored in /etc/shadow file. Please note that you need to use the passwd command to computes the hash of a password typed at the CLI or to store/update the hash of the password in /etc/shadow file. **User ID (UID)**: Each user must be assigned a user ID (UID). UID 0 (zero) is reserved for root and UIDs 1-99 are reserved for other predefined accounts. Further UID 100-999 are reserved by system for administrative and system accounts/groups. **Group ID (GID)**: The primary group ID (stored in /etc/group file) **User ID Info**: The comment field. It allow you to add extra information about the users such as user’s full name, phone number etc. This field use by finger command. **Home directory**: The absolute path to the directory the user will be in when they log in. If this directory does not exists then users directory becomes / **Command/shell**: The absolute path of a command or shell (/bin/bash). Typically, this is a shell. Please note that it does not have to be a shell. For example, sysadmin can use the nologin shell, which acts as a replacement shell for the user accounts. If shell set to **/sbin/nologin** and the user tries to log in to the Linux system directly, the /sbin/nologin shell closes the connection. |
| /etc/shadow                            | **Username** : It is your login name. **Password** : It is your encrypted password.  **Last password change (lastchanged)** : Days since Jan 1, 1970 that password was last changed **Minimum** : The minimum number of days required between password changes i.e. the number of days left before the user is allowed to change his/her password **Maximum** : The maximum number of days the password is valid (after that user is forced to change his/her password) **Warn** : The number of days before password is to expire that user is warned that his/her password must be changed **Inactive** : The number of days after password expires that account is disabled **Expire** : days since Jan 1, 1970 that account is disabled i.e. an absolute date specifying when the login may no longer be used. |
| /etc/group                             | Group name Encrypted password for the group, if “x” -> /etc/gshadow has the password Group id Comma separated list of al the users |
| /etc/gshadow                           | Group name Encrypted password for the group Group administrator Comma separated list of al the users |
| Useradd -D                             | Show the default parameters that are used when useradd command has been used |
| **Getent**                             | Searching for a term in a administrative database            |
| Getent passwd root                     | Showing info about a user in the passwd file                 |
| Getent shadow root                     | Showing info about a user in the show file                   |
|                                        |                                                              |
| Passwd \<username\>                    | Creating a password for a user                               |
| Passwd -d \<username\>                 | Deleting a user password                                     |
| Passwd -l \<username\>                 | Lock a user                                                  |
| Passwd -e \<username\>                 | Change password as expired                                   |
| Passwd -S \<username\>                 | Showing the status of the password                           |
|                                        |                                                              |
| Chage -l \<username\>                  | Showing a account’’s password status, human readable (better then passwd -S) |
| Chage \<username\>                     | Changing account password settings                           |
|                                        |                                                              |
| Usermod -L \<username\>                | Lock a user                                                  |
| Usermod -U \<username\>                | Unlock a user                                                |
| Usermod -d \<username\>                | Change the default home directory (with -m : move the current directory of that user) |
|                                        |                                                              |
| Userdel -r                             | Deleting a user including all the files (homefolder)         |
| **Groups**                             |                                                              |
| Groups \<username\>                    | Showing where a user is member off                           |
| Groupadd \<group name\>                | Adding a group                                               |
| /etc/gshadow                           | File where group passwords are stored                        |
|                                        |                                                              |
| Groupmod \<group name\>                | Modify a group                                               |
| Groupdel \<group name\>                | Deleting a group                                             |
| Newgrp                                 | Changing form a group in the current shell                   |
| Gpasswd                                | Change a group password                                      |
| chfn                                   | Change personal information (5th field /etc/passwd)          |
|                                        |                                                              |



| **Mail**                                       |                                                              |
| ---------------------------------------------- | ------------------------------------------------------------ |
| MTA (mail transfer agent)                      | Sending and receiving mail from or to outside                |
| MDA (mail delivery agent)                      | Delivers the mail to the users mailbox                       |
| MUA (mail user agent)                          | Interface for the user to display the mailbox                |
|                                                |                                                              |
| **MTA**                                        |                                                              |
| sendmail                                       | Oldest MTA, not great security                               |
| Postfix                                        | Newer and better security                                    |
| Exim                                           |                                                              |
| **MDA**                                        |                                                              |
| Mail                                           | The default MDA in linux (/bin/mail or /usr/bin/mail) Mail is stored in /var/spool/mail |
| Procmail                                       | A MDA                                                        |
| Maildrop                                       | A MDA                                                        |
| Cyrus                                          | A MDA                                                        |
| Mail -s “This is a message” <mail or username> | Sending a mail with a subject name                           |
| Enter + Ctrl + D                               | Closing a message (EOT comes in the screen)                  |
| Mail                                           | Reading mail in linux                                        |
| mailq                                          | Showing the mail queue                                       |
| Sendmail -bp                                   | Showing the mail queue                                       |
|                                                |                                                              |
| /etc/aliases                                   | Location where you can add a alias of user                   |
| newalias                                       | Command to update the /etc/aliases.db                        |
| .forward                                       | Place this file in the $HOME directory of the user where the username has been specified that needs to get the forwarding emails (644 rights) (there can be multiple addresses in this file) |



| **Syslog / Logging**                                         | **Port 514**                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Rsyslogd                                                     | /etc/rsyslogd.conf and /etc/rsyslog.d directory              |
| Rsyslog                                                      | Facility -> level -> action ofwel facility.level action   **Facility:** Type of application / service **Level:** Debug, informational etc. |
| *. * @192.168.10.254:514                                     | Append this to /etc/rsyslog.conf to enable remote logging    |
| Logrotate                                                    | Archiving logs based ont the /etc/logrotate.conf             |
| Systems-cat                                                  | Creating manual log entries in the syslog (alternative for logger) |
| logger                                                       | Creating manual log entries in the syslog                    |
| DINWECAP (7: debug, 6: infom, 5: notice 4: warning, 3: error, 2: critical, 1: alert, 0: panic) | Syslog levels                                                |
| Journalctl                                                   | /var/log/journal stores the files                            |
| Journalctl -f                                                | The same as tail -f                                          |
| Journalctl -u <system d process>                             | Show logging a systemd process                               |
| Journalctl -r                                                | Show all the newest messages (on the top) r stands for reverse |
| Journalctl -e                                                | Show the end of the journal                                  |
|                                                              | ![image-20210123124240928](../../images/LPIC_notes/image-20210123124240928.png) |
|                                                              | ![image-20210123124255862](../../images/LPIC_notes/image-20210123124255862.png) |



| **NTP**                                    | **Ntpd and Chrony**                                          |
| ------------------------------------------ | ------------------------------------------------------------ |
| ntpstat                                    | Viewing the software time synchronisation                    |
| Ntpq -p                                    | Showing from which servers the ntp server is pulling its information from |
| Ntpdq                                      | To get information about ntpd                                |
| /etc/ntp.conf **NOT NTPD.conf !!**         | Config file for ntpd                                         |
| **Chrony**                                 | Chrony is better and newer then ntpd                         |
| chronyc sources -v                         | Showing from which servers the ntp server is pulling its information from |
| chronyc sourcestats                        | Viewing timeservers                                          |
| chronyc tracking                           | Viewing software clock                                       |
| /etc/chrony.conf                           | Config file for crony                                        |
| Allow <network> in /etc/chrony/chrony.conf | Allow NTP client access from local network.                  |
| iburst                                     | Change the time for chrony to update it’s clock              |
| Drift                                      | The frequency offset between the system clock at its nominal frequency and the frequency required to remain in sync with UTC |
|                                            |                                                              |

| **Networking**                                               |                                                              |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| nmtui                                                        |                                                              |
| nmcli con add type ethernet con-name eth1 inflame enp0s3 ipv 10.0.2.10/24 gw4 192.168.1.254 | Setting you IP address with the nmcli command                |
| nmcli device wifi connect \<SSID> password \<password>       | Connecting to a wireless network with NMCLI                  |
| Nmcli con up \<connection name>                              | Enable a new connection with NMCLI                           |
| nmcli radio                                                  | Show if there is a Wifi module active                        |
| nmcli device wifi list                                       | Show all the available networks                              |
| Ip Route                                                     | Show default routes on your local host                       |
| ethtool \<interface>                                         | Display ethernet settings                                    |
| Ifconfig (legacy)                                            | Display ip address of set ip address                         |
| iwconfig \<wlan device> essid “wlan name” key s:password     | Setting SSID for wireless interface                          |
| iwlist \<wlan device> scan                                   | Scanning for all the wlan SSID’s                             |
| Ip address                                                   | Showing all the ip adresses for the interfaces               |
| netplan                                                      | Configure networking for Ubuntu                              |
| /etc/sysconfig/network-scripts                               | Config location for Red Hat systems                          |
| Route add default gw 192.168.0.254                           | Set a default gateway on a host                              |
| Ip neighbour show / arp -a                                   | Show the ARP table                                           |
| /etc/resolv.conf                                             | Dns resolver   search localdomain (for fqdn) nameserver 192.168.82.2 (dns server) |
| /etc/nsswitch.conf                                           | Config file that has been used to get the correct order in witch a dns server needs to search |

| **DHCP** |             |
| -------- | ----------- |
| Dhcpd    | Dhcp client |
| Dhclient | Dhcp client |
| Pump     | Dhcp client |

| **Bonding NIC’s**                         | For load balancing, aggregation or active/pasive    |
| ----------------------------------------- | --------------------------------------------------- |
| modprobe bonding                          | Creating a bon0 interface                           |
| Ip link add bon0 type bond mode <mode nr> | Creating a bond (there are different kind of modes) |
| Sudo ip link set eth0 master bond0        | Adding interface to a bond                          |
| Sudo ip link set eth1 master bond0        | Adding interface to a bond                          |



| **Troubleshooting**                          |                                                              |
| -------------------------------------------- | ------------------------------------------------------------ |
| Ping 1.1.1.1                                 |                                                              |
| Ping6 fe80::c418:2ed0:aead:cbce%**enp0s3**   | When sending out packages of a link local address you must specify the outgoing interface! |
| Tracepath 1.1.1.1                            | Tracing routes                                               |
| Host [www.google.com](http://www.google.com) | Testing a DNS name (output: ip adresses that are asociated with that IP address) |
| Dig \<domain name>                           | Getting all the DNS adresses                                 |
| Dig -t mx \<domain name\>                    | Search for the type MX in the domain name                    |
| Nslookup <domain name\>                      |                                                              |
| Getent hosts                                 | Looking up all the hosts in the /etc/hosts file              |
| Netstat                                      | Showing all the current open network connections             |
| Netstat -t                                   | TCP connections                                              |
| Netstat -u                                   | UDP connections                                              |
| Netstat -l                                   | Showing which application are listening on which port        |
| Netstat -s                                   | Showing statistics for different kind of messages            |
| Ss -anpt                                     | Showing which system process are using which network sockets (currently) |
| Nc                                           | Netcat utility (reading and writing to or from a network port) |
| Route del default or ip route del default    | Removing the default route (gateway)                         |



| **W and Who** |                                                              |
| ------------- | ------------------------------------------------------------ |
| W             | Better then who (updated version) where you can see who is logged in |
| Who           | See who is logged in                                         |
| Last          | Showing who is last logged in                                |
| ulimit        | Limit the user resources they can use                        |
| Softlimit     |                                                              |
| Hardlimit     |                                                              |

| **Cronjob**                                                | **Runs a command regularly and repeatedly at a given time**  |
| ---------------------------------------------------------- | ------------------------------------------------------------ |
| Crontab -l                                                 | Show all the cronjobs from the current user                  |
| Crontab -e                                                 |                                                              |
| Minute - hour - day of the month - month - day of the week |                                                              |
| /etc/cron.allow                                            | If the /etc/cron.allow file exists, then you must be listed (one user per line) therein in order to be allowed to use this command. |
| /etc/cron.deny                                             | If the /etc/cron.allow file does not exist but the /etc/cron.deny file does exist, then you must not be listed in the /etc/cron.deny file in order to use this command. |
|                                                            | If both files exist then /etc/cron.allow takes precedence. Which means that /etc/cron.deny is not considered and your user must be listed in /etc/cron.allow in order to be able to use the crontab. |
| /var/spool/cron                                            | User specific cron jobs are stored here                      |
|                                                            | Minutes 0-59 Hours 0-23 Days of month 0-31 Months 1-12 Days of week 0-7 command with options and parameters |

| **At**             | **Runs commands once at a given time**          |
| ------------------ | ----------------------------------------------- |
| Atq or at -l       | Showing al the job at jobs                      |
| Atrm <job number>  | Delete a at job                                 |
| At -d <job number> | Delete a at job                                 |
| Cntrl-D            | Enter at the end of the list of the At commands |
| /etc/at.allow      | Allow users to use At                           |
| /etc/at.deny       | Deny users to use at                            |





| **TCP wrapper**  | TCP wrappers reference the hosts.allow and hosts.deny to grant a ip to the server |
| ---------------- | ------------------------------------------------------------ |
| /etc/hosts.allow |                                                              |
| /etc/hosts.deny  |                                                              |
|                  | TCP wrapper take affect immediate, you don’t have to restart any service! |



| **Seq**   |                                  |
| --------- | -------------------------------- |
| seq 1 2 9 | Printing 1 to 9 with a step of 2 |
| Seq 3 8   | Printing 3 to 8                  |
| Seq 8     | Printing 1 to 8                  |



| **Shell Configfiles**                                        |                                                              |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| /etc/profile                                                 | System wide config files Will be read first in the loggin proces   Initial environment variables Initial PATH statement |
| ~/.bash_profile                                              | additional PATH statements (e. g. HOME directory) default editor user specific environment variables |
| ~/.bash_login                                                |                                                              |
| ~/.profile                                                   | Environment variables Environment variables                  |
|                                                              |                                                              |
| /etc/bash.bashrc                                             | System wide config files   Will be read after starting a shell System wide settings Aliases Functions |
| ~/.bashrc                                                    | Bash aliases Favorite editor Setting the bash prompt         |
| ~/.bash_profile (first read after /etc/profile) - ~/.bash_login - ~/.profile - ~/.bashrc - ~/.bash_logout | User specific config files                                   |
|                                                              |                                                              |
| chsh -s /bin/false \<username>                               | Change shell to /bin/false for a user so that a user can not login! |



| **Concatentate commands** |                                                              |
| ------------------------- | ------------------------------------------------------------ |
| ;                         | Both wil run (doesn’t matter if one command will fail)       |
| &&                        | Second command wil only run if the first one will succeed    |
| \|\|                      | The first command will be run, the second one only if the first command failed. |
|                           |                                                              |



| **Bin and sbin** |                                                              |
| ---------------- | ------------------------------------------------------------ |
| /usr/bin         | scripts which should be accessible system wide               |
| /usr/sbin        | script with administrative functions which should not be accessible for normal users |
|                  |                                                              |



| **Superdeamons** |                                                              |
| ---------------- | ------------------------------------------------------------ |
| Intetd           |                                                              |
| Xinetd           | *(x)inetd* listens on configured ports. Should a connection be established, xinetd will start the corresponding service and hands over control to it. |
|                  |                                                              |



**BASH scripting** 

| **Executing scripts** |                                                              |
| --------------------- | ------------------------------------------------------------ |
| Source myscript.sh    | Runs the script in the current shell (environment variable will be available in the shell) |
| ./myscripts.sh        | Runs the script in a different shell, after the script is done the environment variables aren’t available anymore |
| $0                    | Name of the script itself when executed in a script          |
| $1, $2 etc.           | Arguments that you can pass into a script                    |
| $?                    | Display the error level                                      |
| $#                    | the number of parameters with which the script has been called |
| $$                    | The PID number of the current running shell                  |

| **Relational Operators** |                      |
| ------------------------ | -------------------- |
| -f                       | If a file exist      |
| -d                       | If a directory exist |
|                          |                      |
|                          |                      |



| **SSH**                                     |                                                           |
| ------------------------------------------- | --------------------------------------------------------- |
| Ssh -I \<identity file\>                    |                                                           |
| Ssh -X \<ip address\>                       | Connecting to a remote ssh server with GUI / Terminal Gun |
| ssh-add -l                                  | List all the keys from the agent                          |
| Ssh-add -D                                  | Delete all the keys from the SSH Agent                    |
| Scp test.txt 192.168.0.1:/etc/home/test.txt | Copying a file from localhost to a remote server          |
|                                             |                                                           |
| Ssh-keygen                                  |                                                           |
|                                             |                                                           |
| ~/.ssh/authorized_keys                      | Location where it stores it authorised keys               |
|                                             |                                                           |

| **Lsof**            | List open files                     |
| ------------------- | ----------------------------------- |
| lsof                | List all the opened files           |
| lsof -u \<username> | List all the opened files by a user |

