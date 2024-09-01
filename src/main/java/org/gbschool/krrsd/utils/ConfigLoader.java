package org.gbschool.krrsd.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigLoader {
	private static Properties properties = new Properties();
	
	static {
		String environment = System.getProperty("env","development");
		String propertiesFile = String.format("application-%s.properties", environment);
		
		try (InputStream input = ConfigLoader.class.getClassLoader().getResourceAsStream(propertiesFile)) {
            if (input == null) {
                throw new RuntimeException("Sorry, unable to find " + propertiesFile);
            }
            properties.load(input);
        } catch (IOException e) {
            throw new RuntimeException("Failed to load configuration file: " + propertiesFile, e);
        }
	}
	
	public static String getProperty(String key) {
        return properties.getProperty(key);
    }
}
