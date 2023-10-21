#!/usr/bin/env bash
echo "🚀 Initializing the environment"

echo "🔍 Checking if Homebrew is installed"

which -s brew
if [[ $? != 0 ]] ; then
  echo "🔧 Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ all good for Homebrew"
fi

echo "🔍 Checking if Docker is installed"

which -s docker
if [[ $? != 0 ]] ; then
  echo "🔧 Installing Docker"
  brew install docker
  sudo usermod -aG docker $USER
else
  echo "✅ all good for Docker"
fi

echo "🚀 Starting portainer container" 
docker run -d -p 9443:9443 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer-data:/data portainer/portainer-ce:latest

echo "✅ All good, portainer is available at https://localhost:9443"
