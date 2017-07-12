package Classes;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

public class FileReaderManager {

    private ObjectInputStream reader;
    private FileInputStream fIS;

    public boolean openFile(String filename) {
        try {
            fIS = new FileInputStream(filename);
            return true;
        } catch (IOException ex) {
            System.err.println("Error loading file");
            System.err.println(ex);
            return false;
        }
    }

    public Account readFile() {
        Account account = null;
        try {
            reader = new ObjectInputStream(fIS);
            account = (Account) reader.readObject();
        } catch (Exception ex) {
            System.err.println(ex);
        }
        return account;
    }

    public void closeFile() {
        try {
            reader.close();
        } catch (IOException ex) {
            System.err.println("Error closing file");
            System.err.println(ex);
        }
    }

}
