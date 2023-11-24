

#!/bin/bash

cd /home/ubuntu/hello-flask

echo ">>> run app --------------------------"
cron
# python3 -u app.py > /dev/null 2> /home/ubuntu/flask.log < /dev/null &
python3 -u app.py > /home/ubuntu/flask.log 2> /home/ubuntu/flask.log < /dev/null &
