package Classes;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

public class FileReaderManager {

    private ObjectInputStream reader;

    public boolean openFile(String filename) {
        try {
            reader = new ObjectInputStream(new FileInputStream(filename));
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
            account = (Account) reader.readObject();
        } catch (ClassNotFoundException ex) {
            System.err.println("Object not found");
            System.err.println(ex);
        } catch (IOException ex) {
            System.err.println("End of the file");
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
