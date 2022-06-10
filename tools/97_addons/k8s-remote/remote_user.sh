#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#       __________  __ ___       _____    ________            
#      / ____/ __ \/ // / |     / /   |  /  _/ __ \____  _____
#     / /   / /_/ / // /| | /| / / /| |  / // / / / __ \/ ___/
#    / /___/ ____/__  __/ |/ |/ / ___ |_/ // /_/ / /_/ (__  ) 
#    \____/_/      /_/  |__/|__/_/  |_/___/\____/ .___/____/  
#                                              /_/            
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------------------------------------"
#  CP4WAIOPS v3.4.0 - Get Logins and URLs
#
#
#  ©2022 nikh@ch.ibm.com
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"


echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo ""
echo ""
echo ""
echo "   __________  __ ___       _____    ________            "
echo "  / ____/ __ \/ // / |     / /   |  /  _/ __ \____  _____"
echo " / /   / /_/ / // /| | /| / / /| |  / // / / / __ \/ ___/"
echo "/ /___/ ____/__  __/ |/ |/ / ___ |_/ // /_/ / /_/ (__  ) "
echo "\____/_/      /_/  |__/|__/_/  |_/___/\____/ .___/____/  "
echo "                                   /_/            "
echo ""
echo ""
echo ""
echo "  "
echo "  🚀 CloudPak for Watson AIOps v3.4.0 - Logins and URLs "
echo "  "
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo "  "
echo "  "


oc create serviceaccount -n default topology-user
oc create clusterrolebinding topology-user-binding1 --clusterrole=cluster-admin --serviceaccount=default:topology-user


echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo "🚀 Openshift Connection Details"
echo "***************************************************************************************************************************************************"
echo "***************************************************************************************************************************************************"
echo ""
echo "  📥 Openshift Console"
echo ""
echo "            🌏 URL:      https://$(oc get route -n openshift-console console -o jsonpath={.spec.host})"
echo " "
echo " "
echo " "
echo "  📥 Openshift Command Line"
echo ""
DEMO_TOKEN=$(oc -n default get secret $(oc get secret -n default |grep -m1 topology-user-token|awk '{print$1}') -o jsonpath='{.data.token}'|base64 --decode)
DEMO_URL=$(oc status|grep -m1 "In project"|awk '{print$6}')
echo "            🌏 URL:     $DEMO_URL"
echo "            🔐 Token:   $DEMO_TOKEN"
echo ""
echo ""
echo "            🧑 Login:   oc login --token=$DEMO_TOKEN --server=$DEMO_URL"
echo ""
echo ""
echo ""

