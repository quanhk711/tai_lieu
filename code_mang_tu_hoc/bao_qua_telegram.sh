#1204268670:AAFKDTY6bdEu-hQ1r8M0xpODZsynBQSEL9k
#https://api.telegram.org/bot1204268670:AAFKDTY6bdEu-hQ1r8M0xpODZsynBQSEL9k/getMe 

#{"ok":true,"result":{"id":1204268670,"is_bot":true,"first_name":"Alert","username":"aler_sysadmin_bot","can_join_groups":true,"can_read_all_group_messages":false,"supports_inline_queries":false}}
#!/bin/bash
alert_via_telegram(){
ChatID="1075696025"
Token="1204268670:AAFKDTY6bdEu-hQ1r8M0xpODZsynBQSEL9k"
TimeLim=240
Msg="Hello world"
curl -s — max-time $TimeLim -d "chat_id=${ChatID}&disable_web_page_preview=1&text=${Msg}" "https://api.telegram.org/bot${Token}/sendMessage" > /dev/null
}






