package com.fairagora.verifik8.v8web.config.helper;

import static java.lang.Boolean.TRUE;
import static java.lang.Boolean.FALSE;

public class BooleanHelper {

	/**
	 * Returns a {@code String} object representing this Boolean's
	 * value.  If this object represents the value {@code true},
	 * a string equal to {@code "1"} is returned. Otherwise, a
	 * string equal to {@code "0"} is returned.
	 *
	 * @return  a string representation of this object.
	 */
	public static String toString(boolean value) {
		return value ? "1" : "0";
	}

	/**
	 * Returns a {@code Boolean} with a value represented by the
	 * specified string.  The {@code Boolean} returned represents a
	 * true value if the string argument is not {@code null}
	 * and is equal, ignoring case, to the string {@code "1"}.
	 *
	 * @param   s   a string.
	 * @return  the {@code Boolean} value represented by the string.
	 */
	public static Boolean valueOf(String s) {
		return parseBoolean(s) ? TRUE : FALSE;
	}

	/**
	 * Parses the string argument as a boolean.  The {@code boolean}
	 * returned represents the value {@code true} if the string argument
	 * is not {@code null} and is equal, ignoring case, to the string
	 * {@code "true"}. <p>
	 * Example: {@code Boolean.parseBoolean("1")} returns {@code true}.<br>
	 * Example: {@code Boolean.parseBoolean("yes")} returns {@code false}.
	 *
	 * @param      s   the {@code String} containing the boolean
	 *                 representation to be parsed
	 * @return     the boolean represented by the string argument
	 * @since 1.5
	 */
	public static boolean parseBoolean(String s) {
		return ((s != null) && s.equalsIgnoreCase("1"));
	}
}
