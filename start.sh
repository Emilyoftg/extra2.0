if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/extra.git /extra
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /extra
fi
cd /Ajax
pip3 install -U -r requirements.txt
echo "Starting Master 🤟"
python3 bot.py
