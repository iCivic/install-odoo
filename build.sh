#!/bin/bash -x

git clone -b v1.0.0.0 https://penzhaohui:change_2020@github.com/listart/iDu.git
rm -rf odoo-10.0
mkdir odoo-10.0
cp -r iDu/odoo-10.0/ odoo-10.0
cp -r iDu/extra-addons/idu_wechat_alarm odoo-10.0/addons
cp -r iDu/3rd-addons/auth_oauth_check_client_id odoo-10.0/addons
cp -r iDu/3rd-addons/auth_oauth_ip odoo-10.0/addons
cp -r iDu/3rd-addons/backend_theme_v10 odoo-10.0/addons 
cp -r iDu/3rd-addons/base_user_role odoo-10.0/addons
cp -r iDu/3rd-addons/oauth_provider odoo-10.0/addons
cp -r iDu/3rd-addons/web_mobile odoo-10.0/addons
cp -r iDu/3rd-addons/web_notify odoo-10.0/addons
cp -r iDu/3rd-addons/web_responsive odoo-10.0/addons

docker build -t idu/alarm:1.0 .