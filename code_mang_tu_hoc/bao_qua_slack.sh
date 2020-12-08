# https://www.cloudsavvyit.com/289/how-to-send-a-message-to-slack-from-a-bash-script/
#!/bin/bash
alert_via_slack(){
	url="https://hooks.slack.com/services/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"
curl -X POST -H 'Content-type: application/json' --data '{"text":"httpd is stop"}' ${url}
}

alert_via_slack