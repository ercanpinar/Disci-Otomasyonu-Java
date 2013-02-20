/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * Doktor.java
 *
 * Created on 17.Ara.2011, 13:31:46
 */
package disciotomasyonu;

import com.mysql.jdbc.ResultSetMetaData;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author mustafa
 */
public class Tedavi extends javax.swing.JFrame{

    /** Creates new form Doktor */
    int doktorid;
    List hasta;
    
    static int disno;
    public Tedavi(int id) {
        super("Tedavi");
        doktorid=id;
       // this.setIconImage(Toolkit.getDefaultToolkit().getImage("disci.jpg"));
        this.setIconImage(new ImageIcon("disci.jpg").getImage());
        initComponents();
        HastaAdi();
        listmodel();
        this.setBounds(0, 0, 1280, 760);
        jButton1.addActionListener(new Disevent());
        jButton2.addActionListener(new Disevent());
        jButton3.addActionListener(new Disevent());
        jButton4.addActionListener(new Disevent());
        jButton5.addActionListener(new Disevent());
        jButton6.addActionListener(new Disevent());
        jButton7.addActionListener(new Disevent());
        jButton8.addActionListener(new Disevent());
        jButton9.addActionListener(new Disevent());
        jButton10.addActionListener(new Disevent());
        jButton11.addActionListener(new Disevent());
        jButton12.addActionListener(new Disevent());
        jButton13.addActionListener(new Disevent());
        jButton14.addActionListener(new Disevent());
        jButton15.addActionListener(new Disevent());
        jButton16.addActionListener(new Disevent());
        jButton17.addActionListener(new Disevent());
        jButton18.addActionListener(new Disevent());
        jButton19.addActionListener(new Disevent());
        jButton20.addActionListener(new Disevent());
        jButton21.addActionListener(new Disevent());
        jButton22.addActionListener(new Disevent());
        jButton23.addActionListener(new Disevent());
        jButton24.addActionListener(new Disevent());
        jButton25.addActionListener(new Disevent());
        jButton26.addActionListener(new Disevent());
        jButton27.addActionListener(new Disevent());
        jButton28.addActionListener(new Disevent());
        jButton29.addActionListener(new Disevent());
        jButton30.addActionListener(new Disevent());
        jButton31.addActionListener(new Disevent());
        jButton32.addActionListener(new Disevent());
        //----------------------------------------------
        jButton1.setBorderPainted(false);
        jButton2.setBorderPainted(false);
        jButton3.setBorderPainted(false);
        jButton4.setBorderPainted(false);
        jButton5.setBorderPainted(false);
        jButton6.setBorderPainted(false);
        jButton7.setBorderPainted(false);
        jButton8.setBorderPainted(false);
        jButton9.setBorderPainted(false);
        jButton10.setBorderPainted(false);
        jButton11.setBorderPainted(false);
        jButton12.setBorderPainted(false);
        jButton13.setBorderPainted(false);
        jButton14.setBorderPainted(false);
        jButton15.setBorderPainted(false);
        jButton16.setBorderPainted(false);
        jButton17.setBorderPainted(false);
        jButton18.setBorderPainted(false);
        jButton19.setBorderPainted(false);
        jButton20.setBorderPainted(false);
        jButton21.setBorderPainted(false);
        jButton22.setBorderPainted(false);
        jButton23.setBorderPainted(false);
        jButton24.setBorderPainted(false);
        jButton25.setBorderPainted(false);
        jButton26.setBorderPainted(false);
        jButton27.setBorderPainted(false);
        jButton28.setBorderPainted(false);
        jButton29.setBorderPainted(false);
        jButton30.setBorderPainted(false);
        jButton31.setBorderPainted(false);
        jButton32.setBorderPainted(false);
        //------------------------------------------------------------//
        jButton1.setContentAreaFilled(false);
        jButton2.setContentAreaFilled(false);
        jButton3.setContentAreaFilled(false);
        jButton4.setContentAreaFilled(false);
        jButton5.setContentAreaFilled(false);
        jButton6.setContentAreaFilled(false);
        jButton7.setContentAreaFilled(false);
        jButton8.setContentAreaFilled(false);
        jButton9.setContentAreaFilled(false);
        jButton10.setContentAreaFilled(false);
        jButton11.setContentAreaFilled(false);
        jButton12.setContentAreaFilled(false);
        jButton13.setContentAreaFilled(false);
        jButton14.setContentAreaFilled(false);
        jButton15.setContentAreaFilled(false);
        jButton16.setContentAreaFilled(false);
        jButton17.setContentAreaFilled(false);
        jButton18.setContentAreaFilled(false);
        jButton19.setContentAreaFilled(false);
        jButton20.setContentAreaFilled(false);
        jButton21.setContentAreaFilled(false);
        jButton22.setContentAreaFilled(false);
        jButton23.setContentAreaFilled(false);
        jButton24.setContentAreaFilled(false);
        jButton25.setContentAreaFilled(false);
        jButton26.setContentAreaFilled(false);
        jButton27.setContentAreaFilled(false);
        jButton28.setContentAreaFilled(false);
        jButton29.setContentAreaFilled(false);
        jButton30.setContentAreaFilled(false);
        jButton31.setContentAreaFilled(false);
        jButton32.setContentAreaFilled(false);




    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();
        jButton12 = new javax.swing.JButton();
        jButton13 = new javax.swing.JButton();
        jButton14 = new javax.swing.JButton();
        jButton15 = new javax.swing.JButton();
        jButton16 = new javax.swing.JButton();
        jButton17 = new javax.swing.JButton();
        jButton18 = new javax.swing.JButton();
        jButton19 = new javax.swing.JButton();
        jButton20 = new javax.swing.JButton();
        jButton21 = new javax.swing.JButton();
        jButton22 = new javax.swing.JButton();
        jButton23 = new javax.swing.JButton();
        jButton24 = new javax.swing.JButton();
        jButton25 = new javax.swing.JButton();
        jButton26 = new javax.swing.JButton();
        jButton27 = new javax.swing.JButton();
        jButton28 = new javax.swing.JButton();
        jButton29 = new javax.swing.JButton();
        jButton30 = new javax.swing.JButton();
        jButton31 = new javax.swing.JButton();
        jButton32 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jList1 = new javax.swing.JList();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        Anamnez = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        Kaydet = new javax.swing.JButton();
        jButton33 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton1.setText("1");

        jButton2.setText("2");

        jButton3.setText("3");

        jButton4.setText("4");

        jButton5.setText("5");

        jButton6.setText("6");

        jButton7.setText("7");

        jButton8.setText("8");

        jButton9.setText("9");

        jButton10.setText("10");

        jButton11.setText("11");

        jButton12.setText("12");

        jButton13.setText("13");

        jButton14.setText("14");

        jButton15.setText("15");

        jButton16.setText("16");

        jButton17.setText("17");

        jButton18.setText("18");

        jButton19.setText("19");

        jButton20.setText("20");

        jButton21.setText("21");

        jButton22.setText("22");

        jButton23.setText("23");

        jButton24.setText("24");

        jButton25.setText("25");

        jButton26.setText("26");

        jButton27.setText("27");

        jButton28.setText("28");

        jButton29.setText("29");

        jButton30.setText("30");

        jButton31.setText("31");

        jButton32.setText("32");

        jLabel1.setIcon(new javax.swing.ImageIcon("content_pedodonti_1.jpg"));

        jScrollPane1.setViewportView(jList1);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane2.setViewportView(jTable1);

        Anamnez.setText("Geri");
        Anamnez.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                AnamnezActionPerformed(evt);
            }
        });

        jLabel2.setText(" ");

        Kaydet.setText("Kaydet");
        Kaydet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                KaydetActionPerformed(evt);
            }
        });

        jButton33.setText("Hasta Göster");
        jButton33.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton33ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(130, 130, 130)
                                        .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(90, 90, 90)
                                        .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(50, 50, 50)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(10, 10, 10)
                                                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(120, 120, 120)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jButton12, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(10, 10, 10)
                                                .addComponent(jButton13, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(40, 40, 40)
                                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(160, 160, 160)
                                        .addComponent(jButton15, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(230, 230, 230)
                                        .addComponent(jButton16, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(70, 70, 70)
                                        .addComponent(jButton29, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(124, 124, 124)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(16, 16, 16)
                                                .addComponent(jButton18, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addComponent(jButton19, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jButton20, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(200, 200, 200)
                                        .addComponent(jButton21, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(130, 130, 130)
                                        .addComponent(jButton25, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jButton24, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(110, 110, 110)
                                        .addComponent(jButton26, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(190, 190, 190)
                                        .addComponent(jButton10, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(210, 210, 210)
                                        .addComponent(jButton11, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(230, 230, 230)
                                        .addComponent(jButton17, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(40, 40, 40)
                                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(160, 160, 160)
                                        .addComponent(jButton9, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(170, 170, 170)
                                        .addComponent(jButton23, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(70, 70, 70)
                                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(50, 50, 50)
                                        .addComponent(jButton32, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(230, 230, 230)
                                        .addComponent(jButton14, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(110, 110, 110)
                                        .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(44, 44, 44)
                                        .addComponent(jButton31, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(190, 190, 190)
                                        .addComponent(jButton22, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(90, 90, 90)
                                        .addComponent(jButton27, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(80, 80, 80)
                                        .addComponent(jButton28, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(50, 50, 50)
                                        .addComponent(jButton30, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(63, 63, 63)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(231, 231, 231)
                                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 650, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(4, 4, 4)
                                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 614, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(40, 40, 40)
                                .addComponent(Anamnez, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jButton33, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(26, 26, 26))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addComponent(Kaydet))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(11, 11, 11)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(10, 10, 10)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(10, 10, 10)
                                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jButton12, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jButton13, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(20, 20, 20)
                                        .addComponent(jButton15, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(10, 10, 10)
                                .addComponent(jButton16, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(90, 90, 90)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(60, 60, 60)
                                        .addComponent(jButton29, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jButton18, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(29, 29, 29)
                                                .addComponent(jButton19, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                        .addComponent(jButton20, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(1, 1, 1)
                                .addComponent(jButton21, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(10, 10, 10)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jButton25, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jButton24, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(400, 400, 400)
                                .addComponent(jButton26, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(20, 20, 20)
                                .addComponent(jButton10, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(40, 40, 40)
                                .addComponent(jButton11, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(260, 260, 260)
                                .addComponent(jButton17, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(160, 160, 160)
                                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(jButton9, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(410, 410, 410)
                                .addComponent(jButton23, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(50, 50, 50)
                                .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(250, 250, 250)
                                .addComponent(jButton32, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(110, 110, 110)
                                .addComponent(jButton14, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(20, 20, 20)
                                .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(279, 279, 279)
                                .addComponent(jButton31, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(400, 400, 400)
                                .addComponent(jButton22, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(390, 390, 390)
                                .addComponent(jButton27, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(370, 370, 370)
                                .addComponent(jButton28, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(320, 320, 320)
                                .addComponent(jButton30, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 440, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addGap(11, 11, 11)
                                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 502, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(11, 11, 11)
                        .addComponent(Kaydet)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(Anamnez, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jButton33, javax.swing.GroupLayout.DEFAULT_SIZE, 39, Short.MAX_VALUE)))))
                .addContainerGap(20, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void KaydetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_KaydetActionPerformed
        // TODO add your handling code here:
       TedaviKayit();
       TedaviBilgileriGoster();
       tedaviUcret();
    }//GEN-LAST:event_KaydetActionPerformed
     int i=0;
    private void jButton33ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton33ActionPerformed
        // TODO add your handling code here:
        
       if(hasta.isEmpty())
       {
       JOptionPane.showMessageDialog(null,"hasta bulunamadı");
       return;
       }
        jLabel2.setText("Hasta Adı: "+(String) hasta.get(i));
        jPanel1.add(new Anamnez(tc,1).getContentPane());
         i++;
    }//GEN-LAST:event_jButton33ActionPerformed

    private void AnamnezActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_AnamnezActionPerformed
        // TODO add your handling code here:
        
      this.setVisible(false);
    }//GEN-LAST:event_AnamnezActionPerformed

    /**
     * @param args the command line arguments
//     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new Tedavi(1).setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Anamnez;
    private javax.swing.JButton Kaydet;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton12;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton16;
    private javax.swing.JButton jButton17;
    private javax.swing.JButton jButton18;
    private javax.swing.JButton jButton19;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton20;
    private javax.swing.JButton jButton21;
    private javax.swing.JButton jButton22;
    private javax.swing.JButton jButton23;
    private javax.swing.JButton jButton24;
    private javax.swing.JButton jButton25;
    private javax.swing.JButton jButton26;
    private javax.swing.JButton jButton27;
    private javax.swing.JButton jButton28;
    private javax.swing.JButton jButton29;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton30;
    private javax.swing.JButton jButton31;
    private javax.swing.JButton jButton32;
    private javax.swing.JButton jButton33;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JList jList1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables

    private void listmodel() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = conn.createStatement();
            ResultSet rs = komut.executeQuery("select ISLEM from islem2");
            DefaultListModel model = new DefaultListModel();
            while (rs.next()) {
                model.addElement(rs.getString(1));
            }
            jList1.setModel(model);
        } catch (SQLException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    ArrayList<Integer>hastaid;
    DateFormat df;
    private void HastaAdi() {
              ResultSet rs=null;
              hasta =new ArrayList();
              hastaid = new ArrayList<Integer>();
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = conn.createStatement();
          df=new SimpleDateFormat("dd/MM/yyyy");
          String tarih=df.format(new Date());
           rs = komut.executeQuery("select TC,ad,soyad from randevu2 where doktorid='"+doktorid+"' AND hastakayit='1' AND randevutarihi='"+tarih+"' order by Sirano ASC");

            while (rs.next()) {
               hasta.add(rs.getString(2)+" "+rs.getString(3));
               hastaid(rs.getString(1));
            }

        } catch (SQLException ex) {
            System.out.println("hata:"+ex.getMessage());
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RandevuGoruntule.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void TedaviKayit() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = conn.createStatement();
            String sql = "insert into tedavi values (" + null + "," +hastaid.get(i-1) + "," + doktorid + "," + disno + "," + jList1.getSelectedIndex() + ")";
            komut.execute(sql);
        } catch (SQLException ex) {
            System.out.println("hata:"+ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
  String tc;
    private void hastaid(String tc) {
        this.tc=tc;
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = conn.createStatement();
            String sql = "select ID from hasta_kayit where TCKNO='" + tc + "'";
            ResultSet rs = komut.executeQuery(sql);
            rs.next();
            hastaid.add(rs.getInt(1));
        } catch (SQLException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
int tutar;
    private void TedaviBilgileriGoster() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = conn.createStatement();
            ResultSet rs = komut.executeQuery("select ADI,SOYADI,ISLEM,TUTAR from hasta_kayit,tedavi,islem2 where DOKTOR_ID='" + doktorid + "' AND ID='" + hastaid.get(i-1) + "' AND ID=HASTA_ID AND ISLEMID=ISLEM_ID");
             ResultSetMetaData meta = (ResultSetMetaData) rs.getMetaData();
            int column = meta.getColumnCount();
            Vector baslik = new Vector();
            for (int k = 1; k <= column; k++) {
                baslik.addElement(meta.getColumnName(k));
            }
         Vector kayitlar = new Vector();
            while (rs.next()) {
                Vector satir = new Vector();
                tutar=rs.getInt("TUTAR");
                for (int k = 1; k <= column; k++) {
                    
                    satir.addElement(rs.getString(k));}

                kayitlar.addElement(satir);
            }
            DefaultTableModel dtm = new DefaultTableModel(kayitlar,baslik);
            jTable1.setModel(dtm);

        } catch (SQLException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void tedaviUcret() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/disci?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement komut = conn.createStatement();
            String tarih = df.format(new Date());
            String sql = "insert into carigelir values(" + null + ",'" + tarih + "','" + tarih.substring(3, 10) + "','" + tarih.substring(6, 10) + "','tedavi ücreti','" + hasta.get(i-1) + "'," + tutar + ")";
            komut.execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tedavi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


  
}
