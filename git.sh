git init
ssh -T git@github.com
git remote add origin git@github.com:Yuhi-Sato/isucon13-5.git
cat << EOF > .gitignore
php
nodejs
python
ruby
perl
rust
/tool-config/alp/notify-slack.toml
/tool-config/slow-query/notify-slack.toml
EOF
git add .
git commit -m 'first commit'
git branch -M main
git push origin main
