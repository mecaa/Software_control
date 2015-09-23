import processing.serial.*;

// Need G4P library
import g4p_controls.*;  ///Es necesario bajar la librería G4P de www.lagers.org.uk/g4p/
import java.util.Date;


Serial myPort;  // Create object from Serial class
  

String linea[]; // Todas las líneas del archivo cargado.
String val;       // Data received from the serial port
String filename; //Nombre del archivo seleccionado.
String txt_send_consola;
String txt_mostrar_consola;
int orden;
int lf = 10;      // ASCII linefeed 
int i = 0;
int val_x;
int val_y;
int val_z;
String[] names; //listado de archivos
String portName;
boolean comenzar;

public void setup(){
  comenzar = false;
  File file = new File(sketchPath);
  names= file.list();

  size(640, 480, JAVA2D);
  createGUI();
  customGUI();
  
    val =  "ok";
 filename = "";
 lista_archivos.setItems(names,0);

 
 // String portName = Serial.list()[0];
//  myPort = new Serial(this, portName, 115200);
  // myPort.bufferUntil(lf); 
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
  
}



void serialEvent(Serial p) { 
  val =p.readString(); 

   println(val);
  txt_mostrar_consola = val+txt_mostrar_consola;
    txt_consola.setText(txt_mostrar_consola); 
    if (val.contains("ok") && comenzar == true && i<=linea.length)
  {
  i++;
   println(linea[i]);
      delay(300);

  myPort.write(linea[i]);
  val = "";
}
else
{
  i = 0;
comenzar = false;
lblStatus.setText("Inactivo");
}
}
