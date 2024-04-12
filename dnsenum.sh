#!/bin/bash

# Default wordlist file
DEFAULT_WORDLIST="list.txt"

usage() {
    echo "Usage: $(basename "$0") [--host <domain>] [--wordlist <wordlist_file>] [--help]"
    echo "  --host <domain>: Specify the domain to perform host lookup"
    echo "  --wordlist <wordlist_file>: Specify a custom wordlist file (default: $DEFAULT_WORDLIST)"
    echo "  --help: Display this help message"
    exit 1
}

wordlist="$DEFAULT_WORDLIST"

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --host) host="$2"; shift ;;
        --wordlist) wordlist="$2"; shift ;;
        --help) usage ;;
        *) usage ;;
    esac
    shift
done

if [ -z "$host" ]; then
    echo "Error: Please specify a domain with --host."
    usage
fi

if [ ! -f "$wordlist" ]; then
    echo "Error: Wordlist file '$wordlist' not found."
    exit 1
fi

while IFS= read -r ip; do
    host "$ip.$host"
done < "$wordlist"

# Run the host -t ns command
host -t ns "$host"
