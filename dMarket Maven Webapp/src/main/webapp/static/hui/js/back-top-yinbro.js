// 1) 做一个88*31的LOGO。
if (document.images)
	var staticlogo = new Image(88, 31)
	// 2) 设置LOGO的路径。
staticlogo.src = "image/ico.png"
// 3) 以下是LOGO代表的连接。
var logolink = "###"
// 4) 设置ALT属性。
var alttext = "返回顶部"
// 5) 设置下列属性为 1或者0(1是IE特有的，使LOGO隐现）
var fadeintoview = 1
/* 6) 最后设置LOGO显示的时间，例如12 秒，数值为0表示一直显示
 */
var visibleduration = 0
/////////////////////////以下不要改变/////////////////////////
function regenerate() {
	window.location.reload()
}
function regenerate2() {
	if (document.layers)
		setTimeout("window.onresize=regenerate", 400)
}
var fadeset = ''
if (fadeintoview)
	fadeset = "filter:alpha(opacity=0)"
if (document.all)
	document.write('<span id="logo"" style="' + fadeset
			+ ';position:absolute;top:100;width:' + staticlogo.width
			+ ';height:' + staticlogo.height + '"></span>')
function bringintoview() {
	if (logo.filters.alpha.opacity <= 95)
		logo.filters.alpha.opacity += 5
	else {
		clearInterval(viewit)
		if (visibleduration != 0)
			setTimeout("logo.style.visibility='hidden'", visibleduration * 1000)
	}
}
function createlogo() {
	staticimage = new Layer(100)
	staticimage.left = -300
	staticimage.top = 120
	staticimage.document.write('<a href="' + logolink + '"><img src="'
			+ staticlogo.src + '" border=0 alt="' + alttext + '"></a>')
	staticimage.document.close()
	staticimage.visibility = "show"
	regenerate2()
	staticitns()
}
if (document.layers)
	window.onload = createlogo;
if (document.all) {
	w = 2
	h = 2
	logo.style.left = w
	logo.style.top = h
}
function logoit() {
	var w2 = document.body.scrollLeft + w
	var h2 = document.body.scrollTop + h
	logo.style.left = w2
	logo.style.top = h2
}
function logoit2() {
	staticimage.left = pageXOffset + 2
	staticimage.top = pageYOffset + 2
}
function insertimage() {
	logo.innerHTML = '<a href="' + logolink + '"><img src="' + staticlogo.src
			+ '" border=0 alt="' + alttext + '"></a>'
	if (fadeintoview)
		viewit = setInterval("bringintoview()", 100)
	else {
		if (visibleduration != 0)
			setTimeout("logo.style.visibility='hidden'", visibleduration * 1000)
	}
}
if (document.all) {
	window.onscroll = logoit
	window.onresize = new Function("window.location.reload()")
	window.onload = insertimage
}
function staticitns() {
	setInterval("logoit2()", 90)
	if (visibleduration != 0)
		setTimeout("staticimage.visibility='hide'", visibleduration * 1000)
}
