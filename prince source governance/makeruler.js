
function mycounterstyle(n)
{
	var div = document.createElement("div");
	div.setAttribute('style', 'font-color:red');
	div.innerHTML = n;
	document.body.style.backgroundImage="url('zoomin.png')";
	document.body.style.backgroundImage = 'url(v50-'+n+'.svg)';
    return div.innerHTML;
}

function chbgi(n)
{
	x = "data:image/svg+xml,<svg viewBox='0 0 40 40' height='25' width='25' xmlns='http://www.w3.org/2000/svg'>" + 
	    "<text x='10' y='10' fill='red'>1</text><path fill='rgb(91, 183, 91)' d='M2.379, 14.729L5.208,11.899L12.958,19.648L25.877,6.733L28.707,9.561L12.958,25.308Z'/></svg>";
	document.body.style.backgroundImage=
    "url(data:image/svg+xml,<svg viewBox='0 0 40 40' height='25' width='25' xmlns='http://www.w3.org/2000/svg'><text x='10' y='10' fill='red'>1</text><path fill='rgb(91, 183, 91)' d='M2.379, 14.729L5.208,11.899L12.958,19.648L25.877,6.733L28.707,9.561L12.958,25.308Z'/></svg>)";
	document.body.style.backgroundImage="url('zoomin.png')";
}

function removeHiddenNodesByClass(className){
    var parent = document.getElementByClass(className).parentNode;
    parent.removeChild();
}


Prince.addScriptFunc("mycounterstyle", mycounterstyle);
Prince.addScriptFunc("chbgi", chbgi);
/*Prince.addScriptFunc("removeHiddenNodesByClass", removeHiddenNodesByClass)*/