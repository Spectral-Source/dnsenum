# DNS Enumeration Script

This Bash script, dnsenum, is a tool for performing DNS enumeration by resolving domain names from a wordlist file. It is designed to aid in the discovery of subdomains associated with a target domain and can be used for reconnaissance and security assessments.

## Features:
- **Custom Wordlist:** Specify a custom wordlist file to use for DNS enumeration, allowing flexibility in the selection of domain names to query.
- **Host Lookup:** Perform DNS host lookup for each domain name in the wordlist, retrieving corresponding IP addresses and domain information.
- **Usage Information:** Includes a usage guide with options to specify the target domain and wordlist file, along with a help option to display usage information.

## Usage:
```bash
./dnsenum.sh --host <domain> [--wordlist <wordlist_file>]
--host <domain>: Specify the target domain for DNS enumeration.
--wordlist <wordlist_file>: (Optional) Specify a custom wordlist file containing domain names to query. Default is list.txt.
--help: Display usage information
```
## Example:
**Custom Wordlist**
```bash
./dnsenum.sh --host example.com --wordlist subdomains.txt
```
 **Default Wordlist**
```bash 
./dnsenum.sh --host example.com 

