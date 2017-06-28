/*

Schirmansicht-Actionscript

*/

import flash.events.MouseEvent; //MouseEvent-Klasse

/*
Variable und Instanzen
*/
var j: int = 0;
var punkt_kopiert: Array = new Array;

/*
EventListener
*/
punkt_speichern_btn.addEventListener(MouseEvent.CLICK, punktspeichern);
clear_btn.addEventListener(MouseEvent.CLICK, punktlö schen);

/*
Punkt speichern
*/
function punktspeichern(mm: MouseEvent) {
	punkt_kopiert[j] = new SchirmPunkt2_mc(); //neue instanz von (eigene) SchirmPunkt2_mc()-Klasse
	punkt_kopiert[j].x = SchirmPunkt_mc.x;
	punkt_kopiert[j].y = SchirmPunkt_mc.y;
	addChild(punkt_kopiert[j]); //Instanz zeichnen
	j++;
}

/*
Punkte löschen
*/
function punktlö schen(nn: MouseEvent) {
	for (r = 0; r < j; r++) {
		removeChild(punkt_kopiert[r]);Ù
	}
	j = 0;
}