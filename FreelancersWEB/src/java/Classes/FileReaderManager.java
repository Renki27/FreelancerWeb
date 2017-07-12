package Classes;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;

public class FileReaderManager {

    private ObjectInputStream reader;
    private ArrayList<Account> accountList = new ArrayList();

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

    public Account readFile() throws IOException {
        Account account = null;
        try {
            account = (Account) reader.readObject();
        } catch (ClassNotFoundException ex) {
            System.err.println("Object not found");
            System.err.println(ex);
        } catch (EOFException ex) {
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
