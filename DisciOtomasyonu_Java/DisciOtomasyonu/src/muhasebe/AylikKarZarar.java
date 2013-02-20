/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * AylikKarZarar.java
 *
 * Created on 17.Ara.2011, 14:26:31
 */
package muhasebe;

import com.mysql.jdbc.ResultSetMetaData;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ercan
 */
public class AylikKarZarar extends javax.swing.JFrame {

    boolean giderSecildi = true;
    boolean gelirSecildi = false;
    int toplamBorc=0;
    int toplamodenen = 0;
    int toplamGelir = 0;

    /** Creates new form AylikKarZarar */
    public AylikKarZarar() {
        try {
            initComponents();
            this.setIconImage(new ImageIcon("disci.jpg").getImage());
            this.setSize(680, 520);
            this.setLocation(400, 300);
            java.sql.Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = (Statement) conn.createStatement();
            DateFormat ay_yil_F = new SimpleDateFormat("MM/yyyy");
            String ay_yil = ay_yil_F.format(new Date()).toString();
            ResultSet donenDeger = null;
            ResultSet donenDeger2 = null;
            ResultSet donenDeger3 = null;
            donenDeger = komut.executeQuery("select ODENEN from cari where  AY_YIL='" + ay_yil + "'");
            while (donenDeger.next()) {
                toplamodenen += donenDeger.getInt("ODENEN");
            }
            donenDeger.close();
            donenDeger2 = komut.executeQuery("select ALINAN from carigelir where  AY_YIL='" + ay_yil + "'");
            while (donenDeger2.next()) {
                toplamGelir += donenDeger2.getInt("ALINAN");
            }
            donenDeger2.close();
             donenDeger3 = komut.executeQuery("select TOPLAM_BORC,KIME from cari  where  AY_YIL='" + ay_yil + "'"+"group by KIME");
            while (donenDeger3.next()) {
                toplamBorc += donenDeger3.getInt("TOPLAM_BORC");
            }
            donenDeger3.close();
            odenenTop.setText(String.valueOf(toplamodenen));
            KartoplamGelir.setText(String.valueOf(toplamGelir));
            KarToplamBorc.setText(String.valueOf(toplamBorc));
            KarKalanBorc.setText(String.valueOf(toplamBorc-toplamodenen));
            hesapla();
        } catch (SQLException ex) {
            Logger.getLogger(AylikKarZarar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AylikKarZarar.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void hesapla() {

        try {


            java.sql.Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = (Statement) conn.createStatement();
            DateFormat ay_yil_F = new SimpleDateFormat("MM/yyyy");
            String ay_yil = ay_yil_F.format(new Date()).toString();
            ResultSet donenDeger = null;

            if (giderSecildi && gelirSecildi == false) {
                donenDeger = komut.executeQuery("select TARIH,TOPLAM_BORC,KIME,ACIKLAMA,ODENEN,KALAN from cari where  AY_YIL='" + ay_yil + "'");

                //SELECT SUM (no1+no2) FROM tablo_adi
                //odenenS=odenen.getInt(2);

            } else if (gelirSecildi && giderSecildi == false) {
                donenDeger = komut.executeQuery("select  TARIH,KIMDEN,ACIKLAMA,ALINAN from carigelir where  AY_YIL='" + ay_yil + "'");

            }
            ResultSetMetaData meta = (ResultSetMetaData) donenDeger.getMetaData();
            int column = meta.getColumnCount();
            Vector baslik = new Vector();
            for (int i = 1; i <= column; i++) {
                baslik.addElement(meta.getColumnName(i));

            }

            Vector kayit = new Vector();
            while (donenDeger.next()) {
//                if (giderSecildi) {
//                    toplamodenen += donenDeger.getInt("ODENEN");
//                }
//                if (gelirSecildi) {
//                    toplamGelir += donenDeger.getInt("ALINAN");
//                }
                Vector satirkayit = new Vector();
                for (int i = 1; i <= column; i++) {
                    satirkayit.addElement(donenDeger.getString(i));
                }
                kayit.addElement(satirkayit);

            }


            DefaultTableModel dtm = new DefaultTableModel(kayit, baslik);
            jTable2.setModel(dtm);

        } catch (SQLException ex) {
            Logger.getLogger(AylikKarZarar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AylikKarZarar.class.getName()).log(Level.SEVERE, null, ex);
        }





    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jCheckBox2 = new javax.swing.JCheckBox();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        KarToplamBorc = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        odenenTop = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        KartoplamGelir = new javax.swing.JTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        KarKalanBorc = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        giderSecili = new javax.swing.JCheckBox();
        gelirSecili = new javax.swing.JCheckBox();

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jCheckBox2.setText("jCheckBox2");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        jLabel1.setText((new Date().getMonth()+1)+".Ay Cari Görünüm");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(230, 10, 277, 24);

        jLabel2.setText("Toplam Borç ");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(51, 65, 110, 14);

        KarToplamBorc.setEditable(false);
        getContentPane().add(KarToplamBorc);
        KarToplamBorc.setBounds(198, 65, 100, 30);

        jLabel3.setText("Toplam Ödenen");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(51, 102, 135, 14);

        odenenTop.setEditable(false);
        getContentPane().add(odenenTop);
        odenenTop.setBounds(198, 102, 100, 30);

        jLabel4.setText("Kalan Borç");
        getContentPane().add(jLabel4);
        jLabel4.setBounds(51, 178, 110, 14);

        jLabel6.setText("AYLIK");
        getContentPane().add(jLabel6);
        jLabel6.setBounds(256, 42, 50, 14);

        jLabel7.setText("Toplam Gelir");
        getContentPane().add(jLabel7);
        jLabel7.setBounds(51, 141, 120, 14);

        KartoplamGelir.setEditable(false);
        getContentPane().add(KartoplamGelir);
        KartoplamGelir.setBounds(198, 139, 100, 30);

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(jTable2);

        getContentPane().add(jScrollPane2);
        jScrollPane2.setBounds(50, 280, 480, 150);

        KarKalanBorc.setEditable(false);
        getContentPane().add(KarKalanBorc);
        KarKalanBorc.setBounds(198, 176, 100, 30);

        jLabel8.setText("Aylık Gelir Gider Dökümü");
        getContentPane().add(jLabel8);
        jLabel8.setBounds(210, 249, 160, 20);

        jButton1.setText("Geri");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(510, 440, 60, 23);

        giderSecili.setSelected(true);
        giderSecili.setText("Gider");
        giderSecili.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                giderSeciliMouseClicked(evt);
            }
        });
        getContentPane().add(giderSecili);
        giderSecili.setBounds(351, 220, 110, 23);

        gelirSecili.setText("Gelir");
        gelirSecili.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                gelirSeciliMouseClicked(evt);
            }
        });
        getContentPane().add(gelirSecili);
        gelirSecili.setBounds(470, 220, 90, 23);

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
    this.setVisible(false);
    new MuhasebeAnaForm().setVisible(true);
}//GEN-LAST:event_jButton1ActionPerformed

private void giderSeciliMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_giderSeciliMouseClicked
    // TODO add your handling code here:

    gelirSecili.setSelected(false);
    giderSecildi = true;
    gelirSecildi = false;
    hesapla();
}//GEN-LAST:event_giderSeciliMouseClicked

private void gelirSeciliMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_gelirSeciliMouseClicked
    // TODO add your handling code here:
    giderSecili.setSelected(false);
    giderSecildi = false;
    gelirSecildi = true;
    hesapla();
}//GEN-LAST:event_gelirSeciliMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AylikKarZarar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AylikKarZarar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AylikKarZarar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AylikKarZarar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new AylikKarZarar().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField KarKalanBorc;
    private javax.swing.JTextField KarToplamBorc;
    private javax.swing.JTextField KartoplamGelir;
    private javax.swing.JCheckBox gelirSecili;
    private javax.swing.JCheckBox giderSecili;
    private javax.swing.JButton jButton1;
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JTextField odenenTop;
    // End of variables declaration//GEN-END:variables
}
