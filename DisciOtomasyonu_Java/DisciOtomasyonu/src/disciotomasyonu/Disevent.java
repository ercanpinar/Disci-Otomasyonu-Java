/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package disciotomasyonu;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;

/**
 *
 * @author mustafa
 */
class Disevent implements ActionListener {

    public Disevent() {

    }

    public void actionPerformed(ActionEvent e) {
JButton test=(JButton) e.getSource();
        Tedavi.disno=Integer.parseInt(test.getText());
    }

}
