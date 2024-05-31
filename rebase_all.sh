#!/bin/bash
FILE="../github-accounts/github-accounts.md"
for user in $(cat "${FILE}" | grep -v 'Yes ' | grep -v 'No ' |grep -v '| Name' | grep -v '\-' | grep '|' | awk -F "|" '{print $3}' | tr -d ' ');
do
	pushd "${user}" && (git stash; git pull --rebase; git stash pop) ||:
	popd
done
