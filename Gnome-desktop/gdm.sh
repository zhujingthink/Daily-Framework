#!/bin/bash
#wiki:https://wiki.archlinux.org/index.php/GDM
dir=`pwd`
function extractgst(){
	gst=/usr/share/gnome-shell/gnome-shell-theme.gresource
	workdir=${HOME}/shell-theme

	for r in `gresource list $gst`; do
		r=${r#\/org\/gnome\/shell/}
		if [ ! -d $workdir/${r%/*} ]; then
		  mkdir -p $workdir/${r%/*}
		fi
	done

	for r in `gresource list $gst`; do
	        gresource extract $gst $r >$workdir/${r#\/org\/gnome\/shell/}
	done
}
extractgst


function gresource(){
cat >> ~/shell-theme/theme/gnome-shell-theme.gresource.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<gresources>
  <gresource prefix="/org/gnome/shell/theme">
    <file>calendar-arrow-left.svg</file>
    <file>calendar-arrow-right.svg</file>
    <file>calendar-today.svg</file>
    <file>checkbox-focused.svg</file>
    <file>checkbox-off-focused.svg</file>
    <file>checkbox-off.svg</file>
    <file>checkbox.svg</file>
    <file>close-window-active.svg</file>
    <file>close-window-hover.svg</file>
    <file>close-window.svg</file>
    <file>close.svg</file>		
    <file>corner-ripple-ltr.png</file>
    <file>corner-ripple-rtl.png</file>
    <file>dash-placeholder.svg</file>
    <file>filter-selected-ltr.svg</file>
    <file>filter-selected-rtl.svg</file>		
    <file>gnome-shell-high-contrast.css</file>
    <file>gnome-shell.css</file>
    <file>icons/message-indicator-symbolic.svg</file>
    <file>logged-in-indicator.svg</file>
    <file>no-events.svg</file>
    <file>no-notifications.svg</file>
    <file>bg.jpg</file>
    <file>pad-osd.css</file>
    <file>page-indicator-active.svg</file>		
    <file>page-indicator-checked.svg</file>
    <file>page-indicator-hover.svg</file>
    <file>page-indicator-inactive.svg</file>
    <file>process-working.svg</file>
    <file>running-indicator.svg</file>
    <file>source-button-border.svg</file>
    <file>summary-counter.svg</file>
    <file>toggle-off-hc.svg</file>
    <file>toggle-off-intl.svg</file>
    <file>toggle-off-us.svg</file>		
    <file>toggle-on-hc.svg</file>		
    <file>toggle-on-intl.svg</file>
    <file>toggle-on-us.svg</file>		
    <file>ws-switch-arrow-down.png</file>
    <file>ws-switch-arrow-up.png</file>
  </gresource>
</gresources>
EOF
}
gresource

mv ~/bg.jpg ~/shell-theme/theme/bg.jpg
sed -i 's/background: #2e3436 url/background: #2e3436 url(bg.jpg);' ~/shell-theme/theme/gnome-shell.css
cd ~/shell-theme/theme/
glib-compile-resources gnome-shell-theme.gresource.xml
sudo cp -r gnome-shell-theme.gresource /usr/share/gnome-shell/
cd $dir
rm -rf ~/shell-theme/

echo "替换完毕，重启即可看到。。。。。。。。。。。。。。"