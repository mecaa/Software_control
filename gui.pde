/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void btn_conectar_click1(GButton source, GEvent event) { //_CODE_:btn_conectar:315587:
  println("btn_conectar - GButton >> GEvent." + event + " @ " + millis());
    portName = Serial.list()[0];
  print(portName);  
  myPort = new Serial(this, portName, 115200);
   myPort.bufferUntil(lf); 
   println("wololo");
   if (portName.contains("COM"))
   
   {lblStatus.setText("Conectado");}
   else
   {lblStatus.setText("Desconectado");}
} //_CODE_:btn_conectar:315587:

public void btn_comenzar_click1(GButton source, GEvent event) { //_CODE_:btn_comenzar:489047:
  println("btn_comenzar - GButton >> GEvent." + event + " @ " + millis());
    comenzar = true;
  myPort.write(linea[i]);
  lblStatus.setText("Trabajando...");
} //_CODE_:btn_comenzar:489047:

public void lista_archivos_click1(GDropList source, GEvent event) { //_CODE_:lista_archivos:871744:
  println("lista_archivos - GDropList >> GEvent." + event + " @ " + millis());
 filename =  lista_archivos.getSelectedText();
 linea = loadStrings(filename);
 txt_file.setText(linea);
} //_CODE_:lista_archivos:871744:

public void txt_consola_change1(GTextArea source, GEvent event) { //_CODE_:txt_consola:504365:
  println("txt_consola - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:txt_consola:504365:

public void txt_file_change1(GTextArea source, GEvent event) { //_CODE_:txt_file:386984:
  println("txt_file - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:txt_file:386984:

public void consola_txt_change1(GTextField source, GEvent event) { //_CODE_:consola_txt:658517:
  println("consola_txt - GTextField >> GEvent." + event + " @ " + millis());
    txt_send_consola = consola_txt.getText();
  print(txt_send_consola);
} //_CODE_:consola_txt:658517:

public void btnEnviar_click1(GButton source, GEvent event) { //_CODE_:btnEnviar:428230:
  println("btnEnviar - GButton >> GEvent." + event + " @ " + millis());
    myPort.write(txt_send_consola);
   txt_send_consola = "";
 consola_txt.setText("");
} //_CODE_:btnEnviar:428230:

public void btnXXneg_click1(GButton source, GEvent event) { //_CODE_:btnXXneg:501679:
  println("btnXXneg - GButton >> GEvent." + event + " @ " + millis());
      val_x=val_x-10;
  myPort.write("G01X"+(val_x));
} //_CODE_:btnXXneg:501679:

public void btn_YY_click1(GButton source, GEvent event) { //_CODE_:btn_YY:534266:
  println("btn_YY - GButton >> GEvent." + event + " @ " + millis());
        val_y=val_y+10;
  myPort.write("G01Y"+(val_y));
} //_CODE_:btn_YY:534266:

public void btn_YYneg_click1(GButton source, GEvent event) { //_CODE_:btn_YYneg:997225:
  println("btn_YYneg - GButton >> GEvent." + event + " @ " + millis());
        val_y=val_y-10;
  myPort.write("G01Y"+(val_y));
} //_CODE_:btn_YYneg:997225:

public void btn_XX_click1(GButton source, GEvent event) { //_CODE_:btn_XX:769453:
  println("btn_XX - GButton >> GEvent." + event + " @ " + millis());
  val_x=val_x+10;
  myPort.write("G01X"+(val_x));
} //_CODE_:btn_XX:769453:

public void btn_Y_click1(GButton source, GEvent event) { //_CODE_:btn_Y:868466:
  println("btn_Y - GButton >> GEvent." + event + " @ " + millis());
  val_y=val_y+1;
  myPort.write("G01Y"+(val_y));
} //_CODE_:btn_Y:868466:

public void btn_Yneg_click1(GButton source, GEvent event) { //_CODE_:btn_Yneg:342243:
  println("btn_Yneg - GButton >> GEvent." + event + " @ " + millis());
    val_y=val_y-1;
  myPort.write("G01Y"+(val_y));
} //_CODE_:btn_Yneg:342243:

public void btn_Xneg_click1(GButton source, GEvent event) { //_CODE_:btn_Xneg:955353:
  println("btn_Xneg - GButton >> GEvent." + event + " @ " + millis());
   val_x=val_x-1;
  myPort.write("G01X"+(val_x));
} //_CODE_:btn_Xneg:955353:

public void btn_X_click1(GButton source, GEvent event) { //_CODE_:btn_X:637309:
  println("btn_X - GButton >> GEvent." + event + " @ " + millis());
    val_x=val_x+1;
  myPort.write("G01X"+(val_x));
} //_CODE_:btn_X:637309:

public void btn_HOME_click1(GButton source, GEvent event) { //_CODE_:btn_HOME:796390:
  println("btn_HOME - GButton >> GEvent." + event + " @ " + millis());
     myPort.write("G01Z1 ");
  myPort.write("G01X0Y0Z1");
  val_x =0;
  val_y = 0;
  val_z=1;
} //_CODE_:btn_HOME:796390:

public void btnZ_click1(GButton source, GEvent event) { //_CODE_:btnZ:465491:
  println("btnZ - GButton >> GEvent." + event + " @ " + millis());
  val_z=val_z+1;
  myPort.write("G01Z"+(val_z));
} //_CODE_:btnZ:465491:

public void btnZneg_click1(GButton source, GEvent event) { //_CODE_:btnZneg:961184:
  println("btnZneg - GButton >> GEvent." + event + " @ " + millis());
    val_z=val_z-1;
  myPort.write("G01Z"+(val_z));
} //_CODE_:btnZneg:961184:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("MECAA- Host Control");
  btn_conectar = new GButton(this, 10, 10, 80, 30);
  btn_conectar.setText("Conectar");
  btn_conectar.setTextBold();
  btn_conectar.addEventHandler(this, "btn_conectar_click1");
  btn_comenzar = new GButton(this, 10, 50, 80, 30);
  btn_comenzar.setText("Comenzar");
  btn_comenzar.setTextBold();
  btn_comenzar.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  btn_comenzar.addEventHandler(this, "btn_comenzar_click1");
  lista_archivos = new GDropList(this, 10, 130, 180, 120, 3);
  lista_archivos.setItems(loadStrings("list_871744"), 0);
  lista_archivos.addEventHandler(this, "lista_archivos_click1");
  txt_consola = new GTextArea(this, 200, 10, 250, 90, G4P.SCROLLBARS_VERTICAL_ONLY);
  txt_consola.setOpaque(true);
  txt_consola.addEventHandler(this, "txt_consola_change1");
  txt_file = new GTextArea(this, 460, 10, 150, 170, G4P.SCROLLBARS_BOTH);
  txt_file.setOpaque(true);
  txt_file.addEventHandler(this, "txt_file_change1");
  consola_txt = new GTextField(this, 200, 110, 160, 30, G4P.SCROLLBARS_NONE);
  consola_txt.setOpaque(true);
  consola_txt.addEventHandler(this, "consola_txt_change1");
  btnEnviar = new GButton(this, 370, 110, 80, 30);
  btnEnviar.setText("Enviar");
  btnEnviar.addEventHandler(this, "btnEnviar_click1");
  btnXXneg = new GButton(this, 60, 290, 80, 30);
  btnXXneg.setText("X--");
  btnXXneg.addEventHandler(this, "btnXXneg_click1");
  btn_YY = new GButton(this, 270, 190, 80, 30);
  btn_YY.setText("Y++");
  btn_YY.addEventHandler(this, "btn_YY_click1");
  btn_YYneg = new GButton(this, 270, 376, 80, 30);
  btn_YYneg.setText("Y--");
  btn_YYneg.addEventHandler(this, "btn_YYneg_click1");
  btn_XX = new GButton(this, 470, 290, 80, 30);
  btn_XX.setText("X++");
  btn_XX.addEventHandler(this, "btn_XX_click1");
  btn_Y = new GButton(this, 270, 240, 80, 30);
  btn_Y.setText("Y+");
  btn_Y.addEventHandler(this, "btn_Y_click1");
  btn_Yneg = new GButton(this, 270, 330, 80, 30);
  btn_Yneg.setText("Y-");
  btn_Yneg.addEventHandler(this, "btn_Yneg_click1");
  btn_Xneg = new GButton(this, 160, 290, 80, 30);
  btn_Xneg.setText("X-");
  btn_Xneg.addEventHandler(this, "btn_Xneg_click1");
  btn_X = new GButton(this, 370, 290, 80, 30);
  btn_X.setText("X+");
  btn_X.addEventHandler(this, "btn_X_click1");
  btn_HOME = new GButton(this, 270, 290, 80, 30);
  btn_HOME.setText("HOMEXYZ");
  btn_HOME.setTextBold();
  btn_HOME.addEventHandler(this, "btn_HOME_click1");
  label1 = new GLabel(this, 4, 420, 630, 49);
  label1.setText("Máquina Educativa CNC Abierta Argentina- Host Program. Ozono, Agotegaray, Prado. 2015. http://es.mecaa.wikia.com UNGS");
  label1.setOpaque(false);
  lblStatus = new GLabel(this, 100, 90, 80, 20);
  lblStatus.setText("Status");
  lblStatus.setTextBold();
  lblStatus.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  lblStatus.setOpaque(false);
  label3 = new GLabel(this, 10, 90, 80, 20);
  label3.setText("Status:");
  label3.setOpaque(false);
  btnZ = new GButton(this, 470, 200, 80, 30);
  btnZ.setText("Z+");
  btnZ.addEventHandler(this, "btnZ_click1");
  btnZneg = new GButton(this, 470, 240, 80, 30);
  btnZneg.setText("Z-");
  btnZneg.addEventHandler(this, "btnZneg_click1");
}

// Variable declarations 
// autogenerated do not edit
GButton btn_conectar; 
GButton btn_comenzar; 
GDropList lista_archivos; 
GTextArea txt_consola; 
GTextArea txt_file; 
GTextField consola_txt; 
GButton btnEnviar; 
GButton btnXXneg; 
GButton btn_YY; 
GButton btn_YYneg; 
GButton btn_XX; 
GButton btn_Y; 
GButton btn_Yneg; 
GButton btn_Xneg; 
GButton btn_X; 
GButton btn_HOME; 
GLabel label1; 
GLabel lblStatus; 
GLabel label3; 
GButton btnZ; 
GButton btnZneg; 
