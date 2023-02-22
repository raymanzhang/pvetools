proxmoxlib_js="/usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js"
Nodes_pm="/usr/share/perl5/PVE/API2/Nodes.pm"
pvemanagerlib_js="/usr/share/pve-manager/js/pvemanagerlib.js"
diff -u ${proxmoxlib_js}bak ${proxmoxlib_js} > proxmoxlib_js.patch
diff -u ${Nodes_pm}bak ${Nodes_pm} > Nodes_pm.patch
diff -u ${pvemanagerlib_js}bak ${pvemanagerlib_js} > pvemanagerlib_js.patch
