if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/extra2.0.git /extra2.0
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /extra2.0
fi
cd /extra2.0
pip3 install -U -r requirements.txt
echo "Starting Master 🤟"
python3 bot.py
