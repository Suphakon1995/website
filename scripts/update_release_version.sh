#!/usr/bin/env bash
# This script updates the version of the release in the release file
# Usage: ./update_release_version.sh <new_version>


# Switch to a new branch.
git checkout -b "${branch}"
trap 'git checkout "${current_branch}"' EXIT

# Update the release version in the release file.
sed -i 's/git_version_tag:\sv\([0-9]\+\.\)\{2\}[0-9]\+/git_version_tag: '"${new_version}"'/' "${index_file}"

# Commit the changes, push and create a PR.
git add "${index_file}"
git -c user.name="${git_author}" -c user.email="${git_email}" commit --file=- <<EOL
[${release_minor}] Update installation version to latest tag (${new_version})

cc. @etcd-io/maintainers-website

Signed-off-by: ${git_author} <${git_email}>
EOL
git push "${git_remote}" "${branch}"

if [ -n "${CREATE_PULL_REQUEST}" ]; then
  gh pr create --fill --body "Automated update for ${release_minor}: ${new_version}"
fi
