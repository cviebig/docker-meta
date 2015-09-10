#!/bin/bash
echo -n "Password: "
read -s pass
echo

user="cviebig"
repositories=( \
    "docker-arch-base" \
    "docker-arch-docker" \
    "docker-arch-jenkins" \
    "docker-arch-build" \
    "docker-arch-build-ocl" \
    "docker-arch-build-ocl-amd" \
    "docker-arch-build-ocl-catalyst" \
    "docker-arch-build-ocl-intel" \
    "docker-arch-build-ocl-nvidia" \
    "docker-config-ssh" \
    "docker-scratch" \
)

for repository in "${repositories[@]}"
do
    echo "Adding docker@$(hostname) to $repository"
    curl --user "${user}:${pass}" --data-urlencode "label=docker@$(hostname)" --data-urlencode "key=$(cat ../config-ssh/id_rsa.pub)" -s -o /dev/null -w "%{http_code}\\n" "https://bitbucket.org/api/1.0/repositories/${user}/${repository}/deploy-keys"
done
