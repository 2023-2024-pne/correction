#!/bin/bash
FILE="../2023-2024-pne/github-accounts/github-accounts.md"
for user in $(cat "${FILE}" | grep -v 'Yes ' | grep -v 'No ' |grep -v '| Name' | grep -v '\-' | grep '|' | awk -F "|" '{print $3}' | tr -d ' ');
do
	git clone https://github.com/"${user}"/pne-studentslab "${user}"
done
