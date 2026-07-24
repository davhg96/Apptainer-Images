export GITHUB_PAT=g##YOur PAT
# Ensure devtools can authenticate with GitHub by setting up git credentials
echo "https://#GITUSER#:$GITHUB_PAT@github.com" > ~/.git-credentials\
git config --global credential.helper 'store --file ~/.git-credentials'


if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
 