/*

Popup_Links-Actionscript

*/

/*
Standart Actionscript-Klassen 
*/
import flash.events.MouseEvent;
import flash.events.Event;

var r: int; //Hilfsvariable r

/*
Movieclips stoppen
*/
popup_mc.stop();
SeitenAnsicht_mc.stop();
OberAnsicht_mc.stop();
SchirmAnsicht_mc.stop();

/*
EventListener
*/
popup_mc.addEventListener(MouseEvent.MOUSE_OVER, popupgorein);
popup_mc.addEventListener(MouseEvent.MOUSE_OUT, popupback);
SeitenAnsicht_mc.addEventListener(MouseEvent.MOUSE_OVER, MausueberSeitenAnsicht);
SeitenAnsicht_mc.addEventListener(MouseEvent.MOUSE_OUT, MauswegSeitenAnsicht);
SeitenAnsicht_mc.addEventListener(MouseEvent.CLICK, MausKlickSeitenAnsicht);
OberAnsicht_mc.addEventListener(MouseEvent.MOUSE_OVER, MausueberOberAnsicht);
OberAnsicht_mc.addEventListener(MouseEvent.MOUSE_OUT, MauswegOberAnsicht);
OberAnsicht_mc.addEventListener(MouseEvent.CLICK, MausKlickOberAnsicht);
SchirmAnsicht_mc.addEventListener(MouseEvent.MOUSE_OVER, MausueberSchirmAnsicht);
SchirmAnsicht_mc.addEventListener(MouseEvent.MOUSE_OUT, MauswegSchirmAnsicht);
SchirmAnsicht_mc.addEventListener(MouseEvent.CLICK, MausKlickSchirmAnsicht);
stage.addEventListener(MouseEvent.CLICK, popupback);


function MausueberSeitenAnsicht(aa: MouseEvent) {
	SeitenAnsicht_mc.alpha = 1;
}

function MauswegSeitenAnsicht(bb: MouseEvent) {
	SeitenAnsicht_mc.alpha = 0.7;
}

function MausKlickSeitenAnsicht(cc: MouseEvent) {
	ZwischenEbene_mc.visible = false;
	Koordinatenlinien2_mc.visible = false;
	Text2_txt.visible = false;
	Schirm2_mc.visible = false;
	Roehre2_mc.visible = false;
	Draehte2_mc.visible = false;
	GluewendelUNDWehneltzylinder2_mc.visible = false;
	VertikalZ_mc.visible = false;
	AblenkPlatteVertikal_Oben2_mc.visible = false;
	AblenkPlatteHorizontal1_mc.visible = false;
	kondensatorHorizontal_mc.visible = false;
	AblenkPlatteHorizontal2_mc.visible = false;
	AblenkPlatteVertikal_Unten2_mc.visible = false;
	AblenkPlatteVertikal_von_ObenMINUS_mc.visible = false;
	AblenkPlatteVertikal_von_ObenPLUS_mc.visible = false;
	AblenkPlatteVertikal_von_Oben_mc.visible = false;
	AblenkPlatteVertikal_Unten2MINUS_mc.visible = false;
	AblenkPlatteVertikal_Unten2PLUS_mc.visible = false;
	AblenkPlatteVertikal_Unten2_mc.visible = false;
	AblenkPlatteVertikal_Oben2MINUS_mc.visible = false;
	AblenkPlatteVertikal_Oben2PLUS_mc.visible = false;
	AblenkPlatteVertikal_Oben2_mc.visible = false;
	ZwischenEbene2_mc.visible = false;
	SchirmPunkt_mc.visible = false;
	schirm_linie_senkrecht_mc.visible = false;
	schirm_linie_waagerecht_mc.visible = false;
	schirm_mc.visible = false;
	Text3_txt.visible = false;
	koordinaten_pfeil_Y_mc.visible = false;
	koordinaten_Y_txt.visible = false;
	koordinaten_pfeil_Z_mc.visible = false;
	koordinaten_Z_txt.visible = false;
	y_Ablenkung_vom_schirm_txt.visible = false;
	z_Ablenkung_vom_schirm_txt.visible = false;
	punkt_speichern_btn.visible = false;
	clear_btn.visible = false;
	ablenkung_txt.text = "y = - - -";
	infofenster4_mc.x = 440;
	infofenster4_mc.y = 352;
	infopoint4_mc.x = 453;
	infopoint4_mc.y = 465;
	infopoint9_mc.visible = false;
	infopoint10_mc.visible = false;
	hor_txt.alpha = 0.3;
	k2_sliderUk_mc.enabled = false;
	k2_sliderUk_txt.alpha = 0.3;
	k2_sliderD_mc.enabled = false;
	k2_sliderD_txt.alpha = 0.3;
	k2_sliderL_mc.enabled = false;
	k2_sliderL_txt.alpha = 0.3;
	ver_txt.alpha = 1;
	k1_sliderUk_mc.enabled = true;
	k1_sliderUk_txt.alpha = 1;
	k1_sliderD_mc.enabled = true;
	k1_sliderD_txt.alpha = 1;
	k1_sliderL_mc.enabled = true;
	k1_sliderL_txt.alpha = 1;

	for (r = 0; r < j; r++) {
		punkt_kopiert[r].visible = false; //Schirmpunkte verbergen
	}
	bewegung();
}

function MausueberOberAnsicht(dd: MouseEvent) {
	OberAnsicht_mc.alpha = 1;
}

function MauswegOberAnsicht(ee: MouseEvent) {
	OberAnsicht_mc.alpha = 0.7;
}

function MausKlickOberAnsicht(ff: MouseEvent) {
	ZwischenEbene_mc.visible = true;
	Koordinatenlinien2_mc.visible = true;
	Text2_txt.visible = true;
	Schirm2_mc.visible = true;
	Roehre2_mc.visible = true;
	Draehte2_mc.visible = true;
	GluewendelUNDWehneltzylinder2_mc.visible = true;
	VertikalZ_mc.visible = true;
	AblenkPlatteVertikal_Oben2_mc.visible = true;
	AblenkPlatteHorizontal1_mc.visible = true;
	kondensatorHorizontal_mc.visible = true;
	AblenkPlatteHorizontal2_mc.visible = true;
	AblenkPlatteVertikal_Unten2_mc.visible = true;
	AblenkPlatteVertikal_von_Oben_mc.visible = true;
	ZwischenEbene2_mc.visible = false;
	SchirmPunkt_mc.visible = false;
	schirm_linie_senkrecht_mc.visible = false;
	schirm_linie_waagerecht_mc.visible = false;
	schirm_mc.visible = false;
	Text3_txt.visible = false;
	koordinaten_pfeil_Y_mc.visible = false;
	koordinaten_Y_txt.visible = false;
	koordinaten_pfeil_Z_mc.visible = false;
	koordinaten_Z_txt.visible = false;
	y_Ablenkung_vom_schirm_txt.visible = false;
	z_Ablenkung_vom_schirm_txt.visible = false;
	punkt_speichern_btn.visible = false;
	clear_btn.visible = false;
	hor_txt.alpha = 1;
	k2_sliderUk_mc.enabled = true;
	k2_sliderUk_txt.alpha = 1;
	k2_sliderD_mc.enabled = true;
	k2_sliderD_txt.alpha = 1;
	k2_sliderL_mc.enabled = true;
	k2_sliderL_txt.alpha = 1;
	ver_txt.alpha = 0.3;
	k1_sliderUk_mc.enabled = false;
	k1_sliderUk_txt.alpha = 0.3;
	k1_sliderD_mc.enabled = false;
	k1_sliderD_txt.alpha = 0.3;
	k1_sliderL_mc.enabled = false;
	k1_sliderL_txt.alpha = 0.3;
	if (infomodusAn == true) {
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
	}
	infofenster4_mc.x = 344;
	infofenster4_mc.y = 402;
	infopoint4_mc.x = 500;
	infopoint4_mc.y = 375;
	infopoint9_mc.visible = false;
	infopoint10_mc.visible = false;


	for (r = 0; r < j; r++) {
		punkt_kopiert[r].visible = false; //Schirmpunkte verbergen
	}


	if (k2_sliderUk_mc.value < 0) {
		AblenkPlatteHorizontal_von_SeiteMINUS_mc.visible = false;
		AblenkPlatteHorizontal_von_SeitePLUS_mc.visible = true;
		AblenkPlatteHorizontal_von_Seite_mc.visible = false;
		AblenkPlatteVertikal_Oben2MINUS_mc.visible = false;
		AblenkPlatteVertikal_Oben2PLUS_mc.visible = true;
		AblenkPlatteVertikal_Oben2_mc.visible = false;
		AblenkPlatteVertikal_Unten2MINUS_mc.visible = true;
		AblenkPlatteVertikal_Unten2PLUS_mc.visible = false;
		AblenkPlatteVertikal_Unten2_mc.visible = false;
	} else if (k2_sliderUk_mc.value == 0) {
		AblenkPlatteHorizontal_von_SeiteMINUS_mc.visible = false;
		AblenkPlatteHorizontal_von_SeitePLUS_mc.visible = false;
		AblenkPlatteHorizontal_von_Seite_mc.visible = true;
		AblenkPlatteVertikal_Oben2MINUS_mc.visible = false;
		AblenkPlatteVertikal_Oben2PLUS_mc.visible = false;
		AblenkPlatteVertikal_Oben2_mc.visible = true;
		AblenkPlatteVertikal_Unten2MINUS_mc.visible = false;
		AblenkPlatteVertikal_Unten2PLUS_mc.visible = false;
		AblenkPlatteVertikal_Unten2_mc.visible = true;
	} else if (k2_sliderUk_mc.value > 0) {
		AblenkPlatteHorizontal_von_SeiteMINUS_mc.visible = true;
		AblenkPlatteHorizontal_von_SeitePLUS_mc.visible = false;
		AblenkPlatteHorizontal_von_Seite_mc.visible = false;
		AblenkPlatteVertikal_Oben2MINUS_mc.visible = true;
		AblenkPlatteVertikal_Oben2PLUS_mc.visible = false;
		AblenkPlatteVertikal_Oben2_mc.visible = false;
		AblenkPlatteVertikal_Unten2MINUS_mc.visible = false;
		AblenkPlatteVertikal_Unten2PLUS_mc.visible = true;
		AblenkPlatteVertikal_Unten2_mc.visible = false;
	}
	if (k1_sliderUk_mc.value > 0) {
		AblenkPlatteVertikal_von_ObenMINUS_mc.visible = true;
		AblenkPlatteVertikal_von_ObenPLUS_mc.visible = false;
		AblenkPlatteVertikal_von_Oben_mc.visible = false;
	} else if (k1_sliderUk_mc.value == 0) {
		AblenkPlatteVertikal_von_ObenMINUS_mc.visible = false;
		AblenkPlatteVertikal_von_ObenPLUS_mc.visible = false;
		AblenkPlatteVertikal_von_Oben_mc.visible = true;
	} else if (k1_sliderUk_mc.value < 0) {
		AblenkPlatteVertikal_von_ObenMINUS_mc.visible = false;
		AblenkPlatteVertikal_von_ObenPLUS_mc.visible = true;
		AblenkPlatteVertikal_von_Oben_mc.visible = false;
	}
	bewegung(); //ablenkung_txt.text = "z = - - -";
}

function MausueberSchirmAnsicht(gg: MouseEvent) {
	SchirmAnsicht_mc.alpha = 1;
}

function MauswegSchirmAnsicht(hh: MouseEvent) {
	SchirmAnsicht_mc.alpha = 0.7;
}

function MausKlickSchirmAnsicht(ii: MouseEvent) {
	infopoint1_mc.visible = false;
	infopoint2_mc.visible = false;
	infopoint3_mc.visible = false;
	infopoint4_mc.visible = false;
	infopoint6_mc.visible = false;
	infopoint7_mc.visible = false;
	infopoint8_mc.visible = false;
	infopoint11_mc.visible = false;
	ZwischenEbene2_mc.visible = true;
	schirm_linie_senkrecht_mc.visible = true;
	schirm_linie_waagerecht_mc.visible = true;
	schirm_mc.visible = true;
	Text3_txt.visible = true;
	koordinaten_pfeil_Y_mc.visible = true;
	koordinaten_Y_txt.visible = true;
	koordinaten_pfeil_Z_mc.visible = true;
	koordinaten_Z_txt.visible = true;
	y_Ablenkung_vom_schirm_txt.visible = true;
	z_Ablenkung_vom_schirm_txt.visible = true;
	punkt_speichern_btn.visible = true;
	clear_btn.visible = true;
	hor_txt.alpha = 1;
	k2_sliderUk_mc.enabled = true;
	k2_sliderUk_txt.alpha = 1;
	k2_sliderD_mc.enabled = true;
	k2_sliderD_txt.alpha = 1;
	k2_sliderL_mc.enabled = true;
	k2_sliderL_txt.alpha = 1;
	ver_txt.alpha = 1;
	k1_sliderUk_mc.enabled = true;
	k1_sliderUk_txt.alpha = 1;
	k1_sliderD_mc.enabled = true;
	k1_sliderD_txt.alpha = 1;
	k1_sliderL_mc.enabled = true;
	k1_sliderL_txt.alpha = 1;
	if (infomodusAn == true) {
		infopoint9_mc.visible = true;
		infopoint10_mc.visible = true;
	}
	for (r = 0; r < j; r++) {
		punkt_kopiert[r].visible = true;
	}
	if (EinOderAus_boo == true) {
		SchirmPunkt_mc.visible = true;
	}
	bewegung();
	shape.graphics.clear();
}


function popupgorein(popupgo: MouseEvent) {
	if (popup_mc.currentFrame == 1) {
		popup_mc.play();
		SeitenAnsicht_mc.play();
		OberAnsicht_mc.play();
		SchirmAnsicht_mc.play();
	}
}

/*
Popup schließen
*/
function popupback(popupBack: MouseEvent) {
	if (popup_mc.hitTestPoint(mouseX, mouseY)) {} else if (SeitenAnsicht_mc.hitTestPoint(mouseX, mouseY)) {} else if (OberAnsicht_mc.hitTestPoint(mouseX, mouseY)) {} else if (SchirmAnsicht_mc.hitTestPoint(mouseX, mouseY)) {} else {
		SeitenAnsicht_mc.addEventListener(Event.ENTER_FRAME, goback);
	}
}

/*
Schließ-Effekt
*/
function goback(gobAck: Event) {
	if (popup_mc.currentFrame > 1) {
		popup_mc.prevFrame();
	}
	if (OberAnsicht_mc.currentFrame > 1) {
		OberAnsicht_mc.prevFrame();
	}
	if (SeitenAnsicht_mc.currentFrame > 1) {
		SeitenAnsicht_mc.prevFrame();
	}
	if (SchirmAnsicht_mc.currentFrame > 1) {
		SchirmAnsicht_mc.prevFrame();
	} else {
		SeitenAnsicht_mc.removeEventListener(Event.ENTER_FRAME, goback);
	}
}