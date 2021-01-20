**Grep commands**

- **match on the beginning of the line:**

- - grep ^hore food.txt

- **match on the end of the line:**

- - grep horen.$ food.txt

**Find all files that are not owned by a user**

find $PWD -name 'name[0-9][0-9]' \! -user student \! -group student



**Find all open ports**

netstat -nlutp

**Find all open files by a proces**

lsof -p 1315

**Find all open files by user**

lsof -u linda 

**RAID config:**

- mdadm --detail —scan

**Virsh auto-start machine:**

virsh autostart <domainname> 

**Add setgid bit to a file**

 chmod g+s 

**Add setups bit to a file**

chmod u+s 

**Add sticky bit to a file**

Chmod +t 

**Change attribute of a file** 

Make it immutable

Chattr +I file 

**Show attributes of a file**

Lsattr file

**Pipes:**

1 >>  = standard output

2 >> = standard error 



