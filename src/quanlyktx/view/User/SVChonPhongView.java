/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlyktx.view.User;

import java.awt.Toolkit;
import java.sql.PreparedStatement;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import quanlyktx.DAO.DAO;
import quanlyktx.model.Day;
import quanlyktx.model.HopDong;
import quanlyktx.model.LoaiPhong;
import quanlyktx.model.Phong;
import quanlyktx.model.SinhVien;
import static quanlyktx.view.Admin.DangKyKTX.addDays;
import static quanlyktx.view.Admin.DangKyKTX.addMonths;
import quanlyktx.view.Admin.HelpView;
import quanlyktx.view.DangNhap.DangNhapView;

/**
 *
 * @author PHI LONG
 */
public class SVChonPhongView extends javax.swing.JFrame {

    /**
     * Creates new form SVChonPhong
     */
    public SVChonPhongView() {
        setIcon();
        initComponents();
        settingView.setVisible(false);
        btn_User.setVisible(false);
        btn_Help.setVisible(false);
        btn_LogOut.setVisible(false);
        cb_Phong.setEnabled(false);
//        cb_LoaiPhong.setEnabled(true);
        setLocationRelativeTo(null);
        
        controller = new DAO();
        contracts = controller.getListHopDong();
        getThongTinDay();
    }
    
    public SVChonPhongView(String id) {
        user = id;
        setIcon();
        initComponents();
        settingView.setVisible(false);
        btn_User.setVisible(false);
        btn_Help.setVisible(false);
        btn_LogOut.setVisible(false);
        cb_Phong.setEnabled(false);
        label_LuuY.setVisible(false);
//        cb_LoaiPhong.setEnabled(true);
        setLocationRelativeTo(null);
        
        controller = new DAO();
        contracts = controller.getListHopDong();
        getThongTinDay();
    }
    
    private void setIcon() {
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("logo.png")));
    }
    
    public void getThongTinDay()
    {
        try {
            sinhVien = controller.getStudent(user);
            System.out.println(sinhVien.getGioiTinh());
            String gioiTinh = sinhVien.getGioiTinh().trim();
            String cbItem;
            if(gioiTinh.equals("Nữ"))
            {
                ranges = controller.getDayByGioiTinh("Nữ");
                for(Day range : ranges)
                {
                    System.out.println(range.getTenDay());
                    cbItem = range.getTenDay();
                    cb_Day.addItem(cbItem);
                }
            }
            else
            {
                ranges = controller.getDayByGioiTinh("Nam");
                for(Day range : ranges)
                {
                    System.out.println(range.getTenDay());
                    cbItem = range.getTenDay();
                    cb_Day.addItem(cbItem);
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void dangKyKTX()
    {
        try {
            sinhVien = controller.getStudent(user);
            
            Date currentDate = java.util.Calendar.getInstance().getTime();// lấy ngày hiện tại
            Date paymentTerm = addDays(currentDate, 14); // thời hạn trả là 14 ngày
            Date endDate = addMonths(currentDate, 5);
            
            int contractNumber = contracts.size();// số lượng hợp đồng
            String idHopDong = "HD" + ++contractNumber;
                
            HopDong hopDong = new HopDong(
                                        idHopDong,
                                        idQLy,
                                        sinhVien.getMSSV(),
                                        cb_Phong.getSelectedItem().toString(),
                                        giaTien,
                                        paymentTerm,
                                        1,
                                        currentDate,
                                        endDate,
                                        null);
            
            if (controller.addHopDong(hopDong)) {
                JOptionPane.showMessageDialog(rootPane, "Đăng kí thành công!");
            }
            else {
                JOptionPane.showMessageDialog(rootPane, "Đăng kí thất bại!");
            }
            
            
        } catch (Exception e) {
            Logger.getLogger(SVChonPhongView.class.getName()).log(Level.SEVERE, null, e);
        }
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        cb_LoaiPhong = new javax.swing.JComboBox<>();
        cb_Day = new javax.swing.JComboBox<>();
        cb_Phong = new javax.swing.JComboBox<>();
        txt_GiaTien = new javax.swing.JLabel();
        label_LuuY = new javax.swing.JLabel();
        btn_DangKyPhong = new javax.swing.JLabel();
        btn_Setting = new javax.swing.JLabel();
        btn_User = new javax.swing.JLabel();
        btn_Help = new javax.swing.JLabel();
        btn_LogOut = new javax.swing.JLabel();
        settingView = new javax.swing.JLabel();
        btn_Close = new javax.swing.JLabel();
        bg_ChonPhong = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        cb_LoaiPhong.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1 ( dịch vụ 1 )", "2 ( dịch vụ 2 )", "3 ( thường )", "", "" }));
        getContentPane().add(cb_LoaiPhong, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 110, 190, 30));

        cb_Day.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Default" }));
        cb_Day.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_DayActionPerformed(evt);
            }
        });
        getContentPane().add(cb_Day, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 180, 190, 30));

        cb_Phong.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Default" }));
        cb_Phong.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_PhongActionPerformed(evt);
            }
        });
        getContentPane().add(cb_Phong, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 250, 190, 30));

        txt_GiaTien.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        txt_GiaTien.setForeground(new java.awt.Color(0, 0, 204));
        getContentPane().add(txt_GiaTien, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 314, 380, 30));

        label_LuuY.setForeground(new java.awt.Color(255, 51, 51));
        label_LuuY.setText("*Lưu ý: Giá tiền chưa  bao gồm chi phí phát sinh trong quá trình ở");
        getContentPane().add(label_LuuY, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 370, 370, 20));

        btn_DangKyPhong.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_DangKyPhongMouseClicked(evt);
            }
        });
        getContentPane().add(btn_DangKyPhong, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 504, 150, 40));

        btn_Setting.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_SettingMouseClicked(evt);
            }
        });
        getContentPane().add(btn_Setting, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 504, 190, 50));

        btn_User.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_UserMouseClicked(evt);
            }
        });
        getContentPane().add(btn_User, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 340, 190, 50));

        btn_Help.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_HelpMouseClicked(evt);
            }
        });
        getContentPane().add(btn_Help, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 394, 190, 50));

        btn_LogOut.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_LogOutMouseClicked(evt);
            }
        });
        getContentPane().add(btn_LogOut, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 450, 190, 50));

        settingView.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/setting.jpg"))); // NOI18N
        getContentPane().add(settingView, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 280, 190, -1));

        btn_Close.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/close.png"))); // NOI18N
        btn_Close.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_CloseMouseClicked(evt);
            }
        });
        getContentPane().add(btn_Close, new org.netbeans.lib.awtextra.AbsoluteConstraints(870, 10, -1, -1));

        bg_ChonPhong.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/ChonPhong.jpg"))); // NOI18N
        getContentPane().add(bg_ChonPhong, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_CloseMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_CloseMouseClicked
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_btn_CloseMouseClicked

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
        for (double i = 0; i <= 1; i += 0.2) {
            String val = i + "";
            float f = Float.valueOf(val);
            this.setOpacity(f);
            try {
                Thread.sleep(50);
            } catch (Exception e) {

            }
        }
    }//GEN-LAST:event_formWindowOpened

    private void btn_SettingMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_SettingMouseClicked
        // TODO add your handling code here:
        if (flag) {
            settingView.setVisible(true);
            btn_User.setVisible(true);
            btn_Help.setVisible(true);
            btn_LogOut.setVisible(true);
            flag = false;
        } else {
            settingView.setVisible(false);
            btn_User.setVisible(false);
            btn_Help.setVisible(false);
            btn_LogOut.setVisible(false);
            flag = true;
        }
    }//GEN-LAST:event_btn_SettingMouseClicked

    private void btn_LogOutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_LogOutMouseClicked
        // TODO add your handling code here:
        // Quay về form đăng nhập
        settingView.setVisible(false);
        btn_User.setVisible(false);
        btn_Help.setVisible(false);
        btn_LogOut.setVisible(false);
        flag = true;
        System.out.println("click logout");
        this.dispose();

        new DangNhapView().setVisible(true);
    }//GEN-LAST:event_btn_LogOutMouseClicked

    private void btn_HelpMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_HelpMouseClicked
        // TODO add your handling code here:
        // Mở form chứa thông tin liên lạc admin
        settingView.setVisible(false);
        btn_User.setVisible(false);
        btn_Help.setVisible(false);
        btn_LogOut.setVisible(false);
        flag = true;
        System.out.println("click help");
        new HelpView().setVisible(true);
    }//GEN-LAST:event_btn_HelpMouseClicked

    private void btn_UserMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_UserMouseClicked
        // TODO add your handling code here:
        settingView.setVisible(false);
        btn_User.setVisible(false);
        btn_Help.setVisible(false);
        btn_LogOut.setVisible(false);
        flag = true;
        System.out.println("click user");
        this.dispose();
        new SVNhapThongTinView(user).setVisible(true);
        // Mở form hiện thông tin user
    }//GEN-LAST:event_btn_UserMouseClicked

    private void btn_DangKyPhongMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_DangKyPhongMouseClicked
        // TODO add your handling code here:
        dangKyKTX();
    }//GEN-LAST:event_btn_DangKyPhongMouseClicked

    private void cb_DayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_DayActionPerformed
        // TODO add your handling code here:
        String maDay = cb_Day.getSelectedItem().toString().trim();

        if (!maDay.equals("Default")) {
            cb_Phong.setEnabled(true);
            rooms = controller.getListRoomByIDRange(maDay);
            cb_Phong.removeAllItems();

            for (Phong room : rooms) {
                cb_Phong.addItem(room.getMaPhong());
            }
        } else {
            cb_Phong.setEnabled(false);
        }
    }//GEN-LAST:event_cb_DayActionPerformed

    private void cb_PhongActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_PhongActionPerformed
        // TODO add your handling code here:
        cb_LoaiPhong.setEnabled(true);

        if (cb_Phong.getSelectedItem() != null) {
            String phong = cb_Phong.getSelectedItem().toString().trim();
            for (Phong room : rooms) {
                if (phong.equals(room.getMaPhong().trim())) {
                    LoaiPhong loaiPhong = controller.getCategoryRoomByIDCategoryRoom(room.getMaLoaiPhong().trim());
                    cb_LoaiPhong.removeAllItems();
                    cb_LoaiPhong.addItem(loaiPhong.getTenLoaiPhong());
                    cb_LoaiPhong.setEditable(false);
                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                    String gia = formatter.format(loaiPhong.getGiaTien()) + "đ x 5 tháng = " + formatter.format(loaiPhong.getGiaTien() * 5) + "đ";
                    giaTien = loaiPhong.getGiaTien() * 5;
                    txt_GiaTien.setText(gia);
                    label_LuuY.setVisible(true);
                }
            }
        }
    }//GEN-LAST:event_cb_PhongActionPerformed

    
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
            java.util.logging.Logger.getLogger(SVChonPhongView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SVChonPhongView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SVChonPhongView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SVChonPhongView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SVChonPhongView().setVisible(true);
            }
        });
    }
    
//    VARIABLES DECLARATION
    private boolean flag = true;
    private DAO controller;
    static String user = "";
    SinhVien sinhVien;
    List<SinhVien> students;
    List<Phong> rooms;
    List<Day> ranges;
    List<HopDong> contracts;
    private int giaTien = 0;
    static String idQLy = "admin";
//    END ONF DECLARATION

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel bg_ChonPhong;
    private javax.swing.JLabel btn_Close;
    private javax.swing.JLabel btn_DangKyPhong;
    private javax.swing.JLabel btn_Help;
    private javax.swing.JLabel btn_LogOut;
    private javax.swing.JLabel btn_Setting;
    private javax.swing.JLabel btn_User;
    private javax.swing.JComboBox<String> cb_Day;
    private javax.swing.JComboBox<String> cb_LoaiPhong;
    private javax.swing.JComboBox<String> cb_Phong;
    private javax.swing.JLabel label_LuuY;
    private javax.swing.JLabel settingView;
    private javax.swing.JLabel txt_GiaTien;
    // End of variables declaration//GEN-END:variables
}
