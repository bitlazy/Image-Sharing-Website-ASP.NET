<script type="text/javascript">
/*
Disable right click script II (on images)- By Dynamicdrive.com
For full source, Terms of service, and 100s DTHML scripts
Visit http://www.dynamicdrive.com
Modified here to disable IE image hover menu and
truly disable right click in FF by jscheuer1 in
http://www.dynamicdrive.com/forums
*/
var clickmessage="Right click disabled on images!"
function disableclick(e) {
if (document.all) {
if (event.button==2||event.button==3) {
if (event.srcElement.tagName=="IMG"){
alert(clickmessage);
return false;
}
}
}
else if (document.layers) {
if (e.which == 3) {
alert(clickmessage);
return false;
}
}
else if (document.getElementById)
if (e.which==3&&e.target.tagName=="IMG")
setTimeout("alert(clickmessage)",0)
}
function associateimages(){
for(i=0;i<document.images.length;i++)
document.images[i].onmousedown=disableclick;
}
if (document.all){
document.onmousedown=disableclick
for (var i_tem = 0; i_tem < document.images.length; i_tem++)
document.images[i_tem].galleryimg='no'
}
else if (document.getElementById)
document.onmouseup=disableclick
else if (document.layers)
associateimages()
</script>