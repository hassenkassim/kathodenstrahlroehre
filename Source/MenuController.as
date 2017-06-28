/*

Menü-Actionscript

*/

import flash.events.MouseEvent; //Import von MouseEvent-Klasse

/*
EventListener
*/
Anleitung_btn.addEventListener(MouseEvent.CLICK, anleitungauf);
kathode_btn.addEventListener(MouseEvent.CLICK, kathodeauf);
Simulation_btn.addEventListener(MouseEvent.CLICK, simulationauf);
X_btn.addEventListener(MouseEvent.CLICK, fensterzu);
Hintergrund_Anleitung_mc.addEventListener(MouseEvent.CLICK, fensterzu);


function anleitungauf(a: MouseEvent) {
	shape.graphics.clear();
	Anleitung_txt.visible = true;
	anleitungtext_txt.visible = true;
	HintergrundWeiß _Anleitung_mc.visible = true;
	Hintergrund_Anleitung_mc.visible = true;
	Hintergrund_Anleitung_mc.play();
	X_btn.visible = true;
	if (infomodusAn == true) {
		infopoint1_mc.visible = false;
		infopoint2_mc.visible = false;
		infopoint3_mc.visible = false;
		infopoint4_mc.visible = false;
		infopoint6_mc.visible = false;
		infopoint7_mc.visible = false;
		infopoint8_mc.visible = false;
	}
}

function kathodeauf(b: MouseEvent) {
	shape.graphics.clear();
	Kathodenstrahlroere_txt.visible = true;
	Kathodetext_txt.visible = true;
	HintergrundWeiß _Anleitung_mc.visible = true;
	Hintergrund_Anleitung_mc.visible = true;
	Hintergrund_Anleitung_mc.play();
	X_btn.visible = true;
	if (infomodusAn == true) {
		infopoint1_mc.visible = false;
		infopoint2_mc.visible = false;
		infopoint3_mc.visible = false;
		infopoint4_mc.visible = false;
		infopoint6_mc.visible = false;
		infopoint7_mc.visible = false;
		infopoint8_mc.visible = false;
	}
}

function simulationauf(c: MouseEvent) {
	shape.graphics.clear();
	Simulation_txt.visible = true;
	Simulationtext_txt.visible = true;
	HintergrundWeiß _Anleitung_mc.visible = true;
	Hintergrund_Anleitung_mc.visible = true;
	Hintergrund_Anleitung_mc.play();
	X_btn.visible = true;
	if (infomodusAn == true) {
		infopoint1_mc.visible = false;
		infopoint2_mc.visible = false;
		infopoint3_mc.visible = false;
		infopoint4_mc.visible = false;
		infopoint6_mc.visible = false;
		infopoint7_mc.visible = false;
		infopoint8_mc.visible = false;
	}
}

function fensterzu(d: MouseEvent) {
	Anleitung_txt.visible = false;
	Kathodenstrahlroere_txt.visible = false;
	Simulation_txt.visible = false;
	anleitungtext_txt.visible = false;
	Simulationtext_txt.visible = false;
	Kathodetext_txt.visible = false;
	HintergrundWeiß _Anleitung_mc.visible = false;
	Hintergrund_Anleitung_mc.visible = false;

	X_btn.visible = false;
	if (infomodusAn == true) {
		infopoint1_mc.visible = true;
		infopoint2_mc.visible = true;
		infopoint3_mc.visible = true;
		infopoint4_mc.visible = true;
		infopoint6_mc.visible = true;
		infopoint7_mc.visible = true;
		infopoint8_mc.visible = true;
	}
	bewegung();
}