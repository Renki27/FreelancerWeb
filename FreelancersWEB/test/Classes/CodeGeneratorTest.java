/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import static org.junit.Assert.*;
import org.junit.Test;

/**
 *
 * @author ZERO
 */
public class CodeGeneratorTest {

    public CodeGeneratorTest() {
    }

    @Test
    public void generatoCodeTest() {
        CodeGenerator instance = new CodeGenerator();
        String resutl = instance.generateRandomChars();
        String expected = "D2ww2F";
        assertNotEquals(expected.length(), resutl.length());
    }

}
