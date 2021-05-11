/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlyktx.view.Admin;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import quanlyktx.DAO.DAO;
import quanlyktx.model.CSVC;
import quanlyktx.model.PhatSinh;
import quanlyktx.model.Phong;

/**
 *
 * @author luong
 */
public class ThemCSVC extends javax.swing.JDialog {

    /**
     * Creates new form ThemPhatSinh
     */
    QuanLyCSVCView home;
    private DAO controller = new DAO();
    List<CSVC> materials;
    List<Phong> rooms;
    
    public ThemCSVC(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        home = (QuanLyCSVCView) parent;
        materials = controller.getListMaterials();
        
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

        Date currentDate = java.util.Calendar.getInstance().getTime();

        txt_ngay_them.setText(format.format(currentDate));
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_save = new javax.swing.JLabel();
        btn_cancel = new javax.swing.JLabel();
        lb_Day = new javax.swing.JLabel();
        lb_Ten = new javax.swing.JLabel();
        lb_gia = new javax.swing.JLabel();
        lb_dv_tinh = new javax.swing.JLabel();
        lb_ghi_chu = new javax.swing.JLabel();
        lb_tinh_trang = new javax.swing.JLabel();
        cb_phong = new javax.swing.JComboBox<>();
        cb_day = new javax.swing.JComboBox<>();
        txt_tinh_trang = new javax.swing.JTextField();
        txt_ngay_them = new javax.swing.JTextField();
        txt_tenVT = new javax.swing.JTextField();
        ta_ghi_chu = new javax.swing.JScrollPane();
        ta_ghi_chu_text = new javax.swing.JTextArea();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_save.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_save.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_saveMouseClicked(evt);
            }
        });
        getContentPane().add(btn_save, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 540, 82, 35));

        btn_cancel.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_cancel.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_cancelMouseClicked(evt);
            }
        });
        getContentPane().add(btn_cancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(329, 540, 75, 35));

        lb_Day.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lb_Day.setText("Dãy: ");
        getContentPane().add(lb_Day, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 130, -1, -1));

        lb_Ten.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lb_Ten.setText("Phòng:");
        getContentPane().add(lb_Ten, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 190, -1, -1));

        lb_gia.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lb_gia.setText("Ngày thêm:");
        getContentPane().add(lb_gia, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 310, -1, -1));

        lb_dv_tinh.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lb_dv_tinh.setText("Tên vật tư:");
        getContentPane().add(lb_dv_tinh, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 250, -1, -1));

        lb_ghi_chu.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lb_ghi_chu.setText("Ghi chú:");
        getContentPane().add(lb_ghi_chu, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 430, -1, -1));

        lb_tinh_trang.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lb_tinh_trang.setText("Tình trạng:");
        getContentPane().add(lb_tinh_trang, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 370, -1, -1));

        cb_phong.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        cb_phong.setBorder(null);
        getContentPane().add(cb_phong, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 190, 110, -1));

        cb_day.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        cb_day.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Default", "I", "J", "H", "Q", "M", "N", "K", "P" }));
        cb_day.setBorder(null);
        cb_day.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_dayActionPerformed(evt);
            }
        });
        getContentPane().add(cb_day, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 130, 110, -1));

        txt_tinh_trang.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        txt_tinh_trang.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        txt_tinh_trang.setOpaque(false);
        getContentPane().add(txt_tinh_trang, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 370, 260, -1));

        txt_ngay_them.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        txt_ngay_them.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        txt_ngay_them.setOpaque(false);
        getContentPane().add(txt_ngay_them, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 310, 260, -1));

        txt_tenVT.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        txt_tenVT.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        txt_tenVT.setOpaque(false);
        getContentPane().add(txt_tenVT, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 250, 260, -1));

        ta_ghi_chu_text.setColumns(20);
        ta_ghi_chu_text.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        ta_ghi_chu_text.setRows(5);
        ta_ghi_chu_text.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        ta_ghi_chu_text.setOpaque(false);
        ta_ghi_chu.setViewportView(ta_ghi_chu_text);

        getContentPane().add(ta_ghi_chu, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 410, 260, -1));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/Them_TT_CSVC.jpg"))); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        setSize(new java.awt.Dimension(500, 600));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btn_cancelMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_cancelMouseClicked
        this.dispose();
    }//GEN-LAST:event_btn_cancelMouseClicked

    private void btn_saveMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_saveMouseClicked
        if (checkEmpty(txt_tenVT.getText(), "Tên phat sinh?")
                && checkEmpty(txt_ngay_them.getText(), "Đơn vị tính?")
                && cb_phong.getSelectedItem() != null && !cb_phong.getSelectedItem().toString().trim().equals("")) {
            try {
                CSVC csvc = new CSVC();
                SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
                int i = new Random().nextInt(10000000);
                String ma = i > 10 ? "VT" : "VT0";
                csvc.setId(ma + i);
                csvc.setMaPhong(cb_phong.getSelectedItem().toString().trim());
                csvc.setTenVatTu(txt_tenVT.getText().trim());
                csvc.setNgayThem(format.parse(txt_ngay_them.getText().toString().trim()));
                csvc.setTinhTrang(txt_tinh_trang.getText().trim());
                csvc.setGhiChu(ta_ghi_chu_text.getText().trim());
                
                if (controller.addMaterial(csvc)) {
                    JOptionPane.showMessageDialog(rootPane, "Thêm phát sinh thành công.");
                    home.showMaterials();
                    this.dispose();
                }
            } catch (ParseException ex) {
                Logger.getLogger(ThemCSVC.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }//GEN-LAST:event_btn_saveMouseClicked

    private void cb_dayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_dayActionPerformed
        String maDay = cb_day.getSelectedItem().toString().trim();
        
        if (!maDay.equals("Default")) {
            cb_phong.setEnabled(true);
            rooms = controller.getListRoomByIDRange(maDay);
            cb_phong.removeAllItems();
            
            for (Phong room : rooms) {
                cb_phong.addItem(room.getMaPhong());
            }
        } else {
            cb_phong.setEnabled(false);
        }
    }//GEN-LAST:event_cb_dayActionPerformed

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
            java.util.logging.Logger.getLogger(ThemCSVC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ThemCSVC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ThemCSVC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ThemCSVC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                ThemCSVC dialog = new ThemCSVC(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }
    
    public boolean checkEmpty(String key, String notify) {
        if (key.trim().isEmpty()) {
            JOptionPane.showMessageDialog(rootPane, notify);
            return false;
        }
        return true;
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btn_cancel;
    private javax.swing.JLabel btn_save;
    private javax.swing.JComboBox<String> cb_day;
    private javax.swing.JComboBox<String> cb_phong;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel lb_Day;
    private javax.swing.JLabel lb_Ten;
    private javax.swing.JLabel lb_dv_tinh;
    private javax.swing.JLabel lb_ghi_chu;
    private javax.swing.JLabel lb_gia;
    private javax.swing.JLabel lb_tinh_trang;
    private javax.swing.JScrollPane ta_ghi_chu;
    private javax.swing.JTextArea ta_ghi_chu_text;
    private javax.swing.JTextField txt_ngay_them;
    private javax.swing.JTextField txt_tenVT;
    private javax.swing.JTextField txt_tinh_trang;
    // End of variables declaration//GEN-END:variables

}
