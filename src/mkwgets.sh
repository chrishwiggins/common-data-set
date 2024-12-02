rm wgets.sh
cat ../aux/*.urls | awk '{print "wget --tries=3 --no-parent --convert-links --continue -e robots=off -U mozilla --wait=5 --random-wait --no-check-certificate -r --accept=html,htm --reject=gif,jpg,jpeg,png,bmp,css,js -P ../out \""$0"\""}' > wgets.sh
