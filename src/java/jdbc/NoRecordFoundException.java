package jdbc;

public class NoRecordFoundException extends Exception {
	public String getMessage() {
		return "The record you searched cannot be found...Sorry for the inconvenience";
	}
}
