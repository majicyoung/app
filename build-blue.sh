
echo "------------------------------------"
echo "Build marven project"
echo "------------------------------------\n"
(cd dev/v8web; mvn clean compile install)


echo "------------------------------------"
echo "Copy jar to test server"
echo "------------------------------------\n"
scp dev/v8web/target/v8web-1.0.0-SNAPSHOT.jar debian_ssa:artifact/v8web-blue-1.0.0-SNAPSHOT.jar


echo "------------------------------------"
echo "Kill old server"
echo "------------------------------------\n"
ssh debian_ssa kill -9 \$"pid\$(ps aux | grep 'v8web-blue' | awk '{print \$2}' | head -1); echo \$pid"


echo "------------------------------------"
echo "Start server server"
echo "------------------------------------\n"
ssh debian_ssa "(cd artifact; nohup java -jar v8web-blue-1.0.0-SNAPSHOT.jar > v8web-blue.out 2>&1 &)"