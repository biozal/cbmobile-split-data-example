# Example solution to the problem posted on [Stack Overflow](https://stackoverflow.com/questions/68708256/inserting-data-into-couchbase-lite-using-cblite-one-document-per-line-in-json-f/68715784).

This solution uses a bash shell script to do the following:

- get the count of how many items are in the document

- loop through the number of items I need to create documents for

- uses the open source jq command (https://github.com/stedolan/jq) to get the content and save it into a variable named json

- a unique key is pulled from the id field from the object

- call the cblite tool and have it create the document based on the id and json variables values

This example is provided "as-is" with no support.
