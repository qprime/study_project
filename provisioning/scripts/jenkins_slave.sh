echo "###################################################################################"
echo "Starting the Jenkins slave agent."
echo "###################################################################################"
java -jar slave.jar -jnlpUrl http://USD000167:8080/computer/HMI_Unit_Test_Vagrant_Node/slave-agent.jnlp -secret 4c6406bc36fe28b5d4c3d10612d5a4c3b351f2635030a560f1f382f667d110fe &
