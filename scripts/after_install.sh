apt-get update && apt-get install -y cron

cd   /home/ubuntu/hello-flask

echo ">>> pip install ----------------------"
pip install -r requirements.txt

crontab -l | { cat; echo "* * * * * /usr/bin/python3 /home/ubuntu/hello-flask/historyUpdate.py >> /var/log/cron.log 2>&1"; } | crontab -

echo ">>> remove template files ------------"
rm -rf appspec.yml requirements.txt


echo ">>> change owner to ubuntu -----------"
chown -R ubuntu /home/ubuntu/hello-flask


# echo ">>> run app --------------------------"
# python3 -u app.py > /dev/null 2> /dev/null < /dev/null &
