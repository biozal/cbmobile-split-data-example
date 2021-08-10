# Example solution to the problem posted on [Stack Overflow](https://stackoverflow.com/questions/68708256/inserting-data-into-couchbase-lite-using-cblite-one-document-per-line-in-json-f/68715784).

## Requirements:
- bash 
- [jq](https://stedolan.github.io/jq/)
- [cblite](https://github.com/couchbaselabs/couchbase-mobile-tools/releases) for your platform (included is the Mac OS X version)
- terminal or console for your platform of choice

## Usage:
Open Terminal or Bash prompt.

```bash
bash ./parsedata.sh
```

## Information
This solution uses a bash shell script to do the following:

- get the count of how many items are in the document

- loop through the number of items I need to create documents for

- uses the open source jq command (https://github.com/stedolan/jq) to get the content and save it into a variable named json

- a unique key is pulled from the id field from the object

- call the cblite tool and have it create the document based on the id and json variables values

This example is provided "as-is" with no support.

## Other Notes

The jq command is extremely flexible and you can use it to not only parse information from a file but from an URL request.  This solution assumes you have bash and a command line terminal availabe.  Windows users could achieve similar results with either [git bash](https://git-scm.com/download/win) or re-writing the script using [Powershell](https://devblogs.microsoft.com/scripting/playing-with-json-and-powershell/).  

## Troubleshooting

This version is written using Mac OS X.  If you are using Windows or Linux you will need to replace the cblite version that is included with this repo with the Windows or Linux version.  Those can be found here:
https://github.com/couchbaselabs/couchbase-mobile-tools/releases

If the script says it doesn't have permissions to run the command you can make the script executable by running this command from the Terminal:

```bash
chmod 755 ./parsedata.sh
```

