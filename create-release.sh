#!/bin/bash
set -o allexport; source release.env; set +o allexport

echo -n "${APPLICATION_NAME} ${TAG} ${NICK_NAME}" > ./version.txt

echo "📦️ Creating release ${TAG}..."
git add .
git commit -m "📦 create release ${TAG}"
git tag ${TAG}
git push origin main ${TAG}
echo "📦️ Release ${TAG} created."