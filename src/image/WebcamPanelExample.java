package image;

import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javafx.application.*;

import javax.imageio.ImageIO;
import javax.swing.JButton;
import javax.swing.JFrame;

import com.button_db.Store_photo_detail;
import com.github.sarxos.webcam.Webcam;
import com.github.sarxos.webcam.WebcamPanel;
import com.github.sarxos.webcam.WebcamResolution;

import javafx.stage.Stage;

public class WebcamPanelExample extends Application implements ActionListener {
	private static final ActionEvent ActionEvent = null;
	String icon = "D:\\Software\\SystemApp\\MS Office 2010\\";
	JButton click, cancel;
	JFrame window;
	Webcam webcam;
	String c_time_date, file_name_type, btn_id;
	long millis;
	java.util.Date date;

	public WebcamPanelExample(String btn_id) {
		long millis = System.currentTimeMillis();
		java.util.Date date = new java.util.Date(millis);
		c_time_date = date.toString();
		file_name_type = c_time_date.replaceAll("[^a-zA-Z0-9]+", "_");
		this.btn_id = btn_id;
		click = new JButton("Save");
		cancel = new JButton("Cancel");
		click.setBounds(10, 10, 400, 80);
		cancel.setBounds(150, 210, 400, 80);

		click.addActionListener(this);
		cancel.addActionListener(this);
		webcam = Webcam.getDefault();
		webcam.setViewSize(WebcamResolution.VGA.getSize());

		WebcamPanel panel = new WebcamPanel(webcam);
		panel.add(click);
		panel.add(cancel);
		// panel.setMirrored(true);

		window = new JFrame("Digi_Camera");
		window.toFront();
		window.add(panel);

		window.setResizable(true);

		window.pack();

		Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
		int x = (int) ((dimension.getWidth() + panel.getWidth()) / 2);
		int y = (int) ((dimension.getHeight() + panel.getHeight()) / 2);
		window.setSize(x, y);
		window.setVisible(true);
		// center the jframe on screen
		window.setLocationRelativeTo(null);

	}

	public static void main(String a[]) {
		launch(a);
		System.out.println("on main method");
		// new WebcamPanelExample(btn_id);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if (e.getSource() == click) {
			long millis = System.currentTimeMillis();
			java.util.Date date = new java.util.Date(millis);
			c_time_date = date.toString();
			file_name_type = c_time_date.replaceAll("[^a-zA-Z0-9]+", "_");
			webcam.open();
			BufferedImage image = webcam.getImage();
			try {
				ImageIO.write(image, "PNG", new File("D:\\Other\\Wallpaper\\" + file_name_type + ".png"));
				imageStore(btn_id, file_name_type);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			webcam.close();
		} else if (e.getSource() == cancel) {
			BufferedImage image = webcam.getImage();
			try {
				ImageIO.write(image, "PNG", new File(icon + file_name_type + ".png"));
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			webcam.close();
			// window.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		} else {
			webcam.close();
		}
	}

	public void imageStore(String btnid, String file_name) {

		new Store_photo_detail().insert_btnvalue(btnid, file_name);
		System.out.println(btnid + "" + file_name);

	}

	@Override
	public void start(Stage primaryStage) throws Exception {
		window = new JFrame("Digi_Camera");
		window.pack();
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// make the frame half the height and width

		window.setVisible(true);

	}
}