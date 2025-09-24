package com.example;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class HelloWorldTest {

    @Test
    public void testGreeting() {
        HelloWorld hello = new HelloWorld();
        assertEquals("Hello, Gradle World!", hello.getGreeting());
    }
}
