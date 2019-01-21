package scan_Checklist;

import java.sql.SQLException;

import jssc.SerialPort;
import jssc.SerialPortException;

public class Managment_ScanThumb {
	public String scan_data() throws InterruptedException, SerialPortException, ClassNotFoundException, SQLException {
		String str = null;
		String dta = null;
		StringBuilder ba = new StringBuilder();
		SerialPort serialPort = new SerialPort("COM5");
		try {
			serialPort.openPort();
			serialPort.setParams(SerialPort.BAUDRATE_9600, SerialPort.DATABITS_8, SerialPort.STOPBITS_1,
					SerialPort.PARITY_NONE);
			for (int i = 1; i <= 1; i++) {
				Thread.sleep(3000);
				serialPort.writeString("22\n");
				Thread.sleep(10000);
				str = serialPort.readString();
			}
			Thread.sleep(2000);
			serialPort.writeString("200\n");
			dta = Member_M.membr(str);
			Thread.sleep(1000);
			serialPort.closePort();
		} catch (SerialPortException ex) {
			// serialPort.writeString("200");
			System.out.println(ex);
		}

		return dta;
	}

	public static void main(String[] args)
			throws InterruptedException, SerialPortException, ClassNotFoundException, SQLException {
		new Managment_ScanThumb().scan_data();

	}

}