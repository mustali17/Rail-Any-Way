/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.Icon;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author HP
 */
public class check extends javax.swing.JFrame {

    /**
     * Creates new form check
     */
    public check() {
        initComponents();
       
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton14 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(270, 150));
        setMinimumSize(new java.awt.Dimension(940, 330));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        jLabel1.setText("UserName:");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 70, 110, -1));

        jButton2.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jButton2.setText("Show");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 140, -1, -1));

        jTable1.setBackground(new java.awt.Color(102, 255, 255));
        jTable1.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Train Name", "Train No.", "Bording Station", "Destination Station", "Adults", "Minors", "Cost", "Status"
            }
        ));
        jTable1.setGridColor(new java.awt.Color(0, 0, 0));
        jScrollPane1.setViewportView(jTable1);

        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 240, 890, 103));

        jButton14.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton14.setText("Home");
        jButton14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton14ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton14, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 70, -1));

        jLabel2.setFont(new java.awt.Font("Vrinda", 1, 20)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(102, 102, 255));
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 190, 370, 30));

        jLabel3.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        jLabel3.setText("jLabel3");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 70, 110, -1));

        jLabel4.setBackground(new java.awt.Color(31, 139, 182));
        jLabel4.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jLabel4.setFocusTraversalPolicyProvider(true);
        jLabel4.setOpaque(true);
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 960, 360));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton14ActionPerformed
        this.setVisible(false);
        new welcome().setVisible(true);
    }//GEN-LAST:event_jButton14ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed

        
         String a = jLabel3.getText();
        
        DefaultTableModel m=(DefaultTableModel)jTable1.getModel();
        m.setRowCount(0);
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","mysql");
            Statement stmt=con.createStatement();
            String qry="select * from book where UserName = '"+a+"';";
            ResultSet rp=stmt.executeQuery(qry);

            if(rp.next()){
               
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String my="select * from book where UserName = '"+a+"';";
                    ResultSet rs=stmt.executeQuery(my);
                    while(rs.next()){
                        String aa=rs.getString("train_name");
                        String ab=rs.getString("train_no");
                        String ac=rs.getString("frm");
                        String ad=rs.getString("tot");
                        String ae=rs.getString("adult");
                        String af=rs.getString("childeren");
                        String ag=rs.getString("cost");
                        String ah=rs.getString("status");
                        Object[] row={aa,ab,ac,ad,ae,af,ag,ah};
                        m.addRow(row);
                        jLabel2.setText("Booking's Done by"+" "+a);
                    }
                }catch(Exception e){
                    JOptionPane.showMessageDialog(null, e);
                }

            }

        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }

        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

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
            java.util.logging.Logger.getLogger(check.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(check.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(check.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(check.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new check().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    public static volatile javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
