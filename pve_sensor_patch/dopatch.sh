proxmoxlib_js="/usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js"
Nodes_pm="/usr/share/perl5/PVE/API2/Nodes.pm"
pvemanagerlib_js="/usr/share/pve-manager/js/pvemanagerlib.js"
cp ${proxmoxlib_js} ${proxmoxlib_js}bak
cp ${Nodes_pm} ${Nodes_pm}bak
cp ${pvemanagerlib_js} ${pvemanagerlib_js}bak

patch ${proxmoxlib_js} < ./proxmoxlib_js.patch
patch ${Nodes_pm} < ./Nodes_pm.patch
patch ${pvemanagerlib_js} < ./pvemanagerlib_js.patch
# 重载 PVE 界面
systemctl restart pveproxy
