package scan_Checklist;
import java.util.logging.Level;
import java.util.logging.Logger;
import jssc.SerialPort;
import jssc.SerialPortException;

public class Finger_Sen {
	public static void main(String[] args) {
		String str;
		SerialPort serialPort = new SerialPort("COM5");

		try {
			serialPort.openPort();
			serialPort.setParams(SerialPort.BAUDRATE_9600, SerialPort.DATABITS_8, SerialPort.STOPBITS_1,
					SerialPort.PARITY_NONE);

			Thread.sleep(1000);
			for(int k=1;k<=1;k++)
			{Thread.sleep(5000);
	
			serialPort.writeString("22\n");
			Thread.sleep(10000);
			str = serialPort.readString();
			Thread.sleep(1000);
			System.out.println(str);
			
			serialPort.writeString("200\n");
			Thread.sleep(300);
			str = serialPort.readString();
			System.out.println(str);
			
			}
			
			
			serialPort.closePort();

		} catch (SerialPortException ex) {
			System.out.println(ex);
		} catch (InterruptedException ex) {
			System.out.println(ex);
		}
	}
}