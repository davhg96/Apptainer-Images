export GITHUB_PAT= ### INSERT YOUR GITHUB PAT HERE ##
# Ensure devtools can authenticate with GitHub by setting up git credentials
git config --global credential.helper store
echo "https://$GITHUB_PAT:@github.com" > ~/.git-credentials 
