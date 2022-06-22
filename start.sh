if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ritheshrkrm17/Luci-Test-Bot.git /LuciferMoringstar-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Luci-Test-Bot
fi
cd /LuciferMoringstar-Robot
pip3 install -U -r requirements.txt
echo "Starting LuciferMoringstar RoBot...."
python3 main.py
