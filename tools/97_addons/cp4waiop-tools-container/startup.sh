echo "*****************************************************************************************************************************"
echo "*****************************************************************************************************************************"
echo "      __________  __ ___       _____    ________            "
echo "     / ____/ __ \/ // / |     / /   |  /  _/ __ \____  _____"
echo "    / /   / /_/ / // /| | /| / / /| |  / // / / / __ \/ ___/"
echo "   / /___/ ____/__  __/ |/ |/ / ___ |_/ // /_/ / /_/ (__  ) "
echo "   \____/_/      /_/  |__/|__/_/  |_/___/\____/ .___/____/  "
echo "                                             /_/            "
echo ""
echo "*****************************************************************************************************************************"
echo " 🐥 CloudPak for Watson AIOPs - Tool Container"
echo "*****************************************************************************************************************************"
echo "  "
echo ""
echo ""


echo "   ------------------------------------------------------------------------------------------------------------------------------"
echo "   🌏  Get Installer files from $INSTALL_REPO"
git clone $INSTALL_REPO| sed 's/^/      /'
cd awx-waiops

echo "   ------------------------------------------------------------------------------------------------------------------------------"
echo "   🔎  Available Playbooks"
ls -al ansible| sed 's/^/         /'

echo "   ------------------------------------------------------------------------------------------------------------------------------"
echo "   🔎  Available Tools"
ls -al tools| sed 's/^/         /'


echo "*****************************************************************************************************************************"
echo " ✅ DONE"
echo "*****************************************************************************************************************************"

while true
do
    sleep 60000                           
done
