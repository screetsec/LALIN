LazyMap - Auto NMAP Scanning Script
============================================

Automate NMAP scans and custom Nessus polices.

Developed by Daniel Compton

https://github.com/commonexploits/port-scan-automation.git

Released under AGPL see LICENSE for more information

Installing  
=======================
    git clone https://github.com/commonexploits/port-scan-automation.git


How To Use	
=======================
    ./lazymap.sh


Features	
=======================

* Discovers live devices
* Auto launches port scans on only the discoverd live devices
* Can run mulitple instances on multiple adaptors at once
* Creates client Ref directory for each scan
* Outputs all unique open ports in a Nessus ready format. Much faster to scan in Nessus.
* Runs as default a T4 speed scan. If you find this too slow, you can press CTRL C in the scan window and it will cleanup and relaunch that one scan with T5 speed option.
* Logs all start/stop times, live hosts, hosts down, unique ports.
* Auto creates a custom Nessus policy with only the discovered ports, must faster to scan. *

* Read the script header carefully, in order for the auto Nessus policy creater you must first save a default template to the same directory as the script. The script will detect the default template and create you a unique Nessus policy after each scan for just the unique ports. Then simply import the policy into Nessus and scan just the live devices that the  script found. This will save a massive amount of time scanning, plus will give you more accurate findings.

* By Default it will scan a full TCP, Quick UDP, Common ports and a Safe Script scan. You can turn these on and off in the header. 

Requirements   
=======================
* NMAP http://www.nmap.org

Tested on Backtrack 5 and Kali.


Screen Shot    
=======================
<img src="http://www.commonexploits.com/wp-content/uploads/2012/12/ping.png" alt="Screenshot" style="max-width:100%;">

<img src="http://www.commonexploits.com/wp-content/uploads/2012/12/scans.png" alt="Screenshot" style="max-width:100%;">

<img src="http://www.commonexploits.com/wp-content/uploads/2012/12/unique.png" alt="Screenshot" style="max-width:100%;">

Change Log
=======================
* Version 2.5 - Improved interface detection for new O/S versions. Replaced legacy Nmap commands

* Version 2.2 - Added auto exclude own source address from scans. Also ability to feed exclusion list of IPs or ranges

* Version 2.1 - Few minor bug fixes and resolved issue if input list contains numbers in the file name

* Version 2.0 - New look. Now works with Kali and Nessus 4 & 5 Policies. New percent progress for live host discovery.

* Version 1.8 - Official release.
