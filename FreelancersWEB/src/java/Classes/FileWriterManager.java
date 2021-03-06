package Classes;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class FileWriterManager {

    private FileOutputStream fileOS;
    private ObjectOutputStream writer;

    public boolean loadFile(String filename) {
        try {
            fileOS = new FileOutputStream(filename, true);
//            writer = new ObjectOutputStream(new FileOutputStream(filename, true));
            return true;
        } catch (IOException ex) {
            System.err.println("Error creating file");
            System.err.println(ex);
            return false;
        }
    }

    public boolean loadFileReplace(String filename) {
        try {
            fileOS = new FileOutputStream(filename);
            return true;
        } catch (IOException ex) {
            System.err.println("Error creating file");
            System.err.println(ex);
            return false;
        }
    }
    public void writeFile(Account account) {

        try {
            writer = new ObjectOutputStream(fileOS);
            writer.writeObject(account);
        } catch (IOException | NullPointerException ex) {
            System.err.println("Error writing file");
            System.err.println(ex);
        }
    }

    public void closeFile() {
        try {
            writer.close();
        } catch (IOException ex) {
            System.err.println("Error closing file");
            System.err.println(ex);
        }
    }

//        private BufferedWriter escritor;
//
//    public boolean loadFile(String nombreArchivo) {
//        try {
//            escritor = new BufferedWriter(new FileWriter(nombreArchivo, true));
//            return true;
//        } catch (IOException ex) {
//            System.err.println("Error al crear el archivo");
//            System.err.println(ex);
//            return false;
//        }
//    }
//
//    public void writeFile(Account account) {
//        try {
//            escritor.write(account.toString() + "\n");
//        } catch (IOException ex) {
//            System.err.println("Error al escribir en el archivo");
//            System.err.println(ex);
//        } catch (NullPointerException ex) {
//            System.err.println("Error al escribir en el archivo");
//            System.err.println(ex);
//        }
//    }
//
//    public void closeFile() {
//        try {
//            escritor.close();
//        } catch (IOException ex) {
//            System.err.println("Error al cerrar el archivo");
//            System.err.println(ex);
//        }
//    }
}
