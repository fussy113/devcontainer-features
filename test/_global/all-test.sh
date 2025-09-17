#!/bin/bash

set -e

source dev-container-features-test-lib

echo -e "The result of the 'sample' command will be:\n"
sample
echo -e "\n"

check "check I am greeting with 'Greetings'" bash -c "sample | grep 'Hello!'"

reportResults
