/*

Info-Actionscript

*/

import flash.events.MouseEvent; //MouseEvent-Klasse

var infomodusAn: Boolean = false; //Zustand der Infofunktion

/*
EventListener
*/
infomod_btn.addEventListener(MouseEvent.CLICK, infomodein);
infopoint1_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn1);
infopoint2_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn2);
infopoint3_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn3);
infopoint4_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn4);
infopoint6_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn5);
infopoint7_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn6);
infopoint8_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn7);
infopoint9_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn9);
infopoint10_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn10);
infopoint11_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn11);
infopoint12_mc.addEventListener(MouseEvent.MOUSE_OVER, infoIn12);
infopoint1_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut1);
infopoint2_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut2);
infopoint3_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut3);
infopoint4_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut4);
infopoint6_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut5);
infopoint7_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut6);
infopoint8_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut7);
infopoint9_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut9);
infopoint10_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut10);
infopoint11_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut11);
infopoint12_mc.addEventListener(MouseEvent.MOUSE_OUT, infoOut12);

/*
Infomodus einschalten
*/
function infomodein(n: MouseEvent) {
	if (Text3_txt.visible == false) {
		if (infopoint8_mc.visible == false) {
			infomodusAn = true;
			if (teilchenAuswahl_cb.value == "ElektronenData") {
				infopoint1_mc.visible = true;
			}
			if (teilchenAuswahl_cb.value == "ProtonenData") {
				infopoint11_mc.visible = true;
			}
			if (teilchenAuswahl_cb.value == "alphaTeilchenData") {
				infopoint12_mc.visible = true;
			}
			infopoint2_mc.visible = true;
			infopoint3_mc.visible = true;
			infopoint4_mc.visible = true;
			infopoint6_mc.visible = true;
			infopoint7_mc.visible = true;
			infopoint8_mc.visible = true;
		} else {
			infomodusAn = false;
			infopoint1_mc.visible = false;
			infopoint2_mc.visible = false;
			infopoint3_mc.visible = false;
			infopoint4_mc.visible = false;
			infopoint6_mc.visible = false;
			infopoint7_mc.visible = false;
			infopoint8_mc.visible = false;
			infopoint11_mc.visible = false;
			infopoint12_mc.visible = false;
		}
	} else {
		if (infopoint9_mc.visible == false) {
			infopoint9_mc.visible = true;
			infopoint10_mc.visible = true;
		} else {
			infopoint9_mc.visible = false;
			infopoint10_mc.visible = false;
		}
	}
}

/*
Infos anzeigen bzw. verbergen
*/
function infoIn1(o: MouseEvent) {
	infofenster1_mc.visible = true;
}

function infoOut1(p: MouseEvent) {
	infofenster1_mc.visible = false;
}

function infoIn2(q: MouseEvent) {
	infofenster2_mc.visible = true;
}

function infoOut2(rr: MouseEvent) {
	infofenster2_mc.visible = false;
}

function infoIn3(s: MouseEvent) {
	infofenster3_mc.visible = true;
}

function infoOut3(t: MouseEvent) {
	infofenster3_mc.visible = false;
}

function infoIn4(u: MouseEvent) {
	infofenster4_mc.visible = true;
}

function infoOut4(v: MouseEvent) {
	infofenster4_mc.visible = false;
}

function infoIn5(w: MouseEvent) {
	infofenster5_mc.visible = true;
}

function infoOut5(xx: MouseEvent) {
	infofenster5_mc.visible = false;
}

function infoIn6(yy: MouseEvent) {
	infofenster6_mc.visible = true;
}

function infoOut6(zz: MouseEvent) {
	infofenster6_mc.visible = false;
}

function infoIn7(aa: MouseEvent) {
	infofenster7_mc.visible = true;
}

function infoOut7(bb: MouseEvent) {
	infofenster7_mc.visible = false;
}

function infoIn9(cc: MouseEvent) {
	infofenster9_mc.visible = true;
}

function infoOut9(dd: MouseEvent) {
	infofenster9_mc.visible = false;
}

function infoIn10(dd: MouseEvent) {
	infofenster10_mc.visible = true;
}

function infoOut10(ee: MouseEvent) {
	infofenster10_mc.visible = false;
}

function infoIn11(ff: MouseEvent) {
	infofenster11_mc.visible = true;
}

function infoOut11(gg: MouseEvent) {
	infofenster11_mc.visible = false;
}

function infoIn12(hh: MouseEvent) {
	infofenster12_mc.visible = true;
}

function infoOut12(ii: MouseEvent) {
	infofenster12_mc.visible = false;
}