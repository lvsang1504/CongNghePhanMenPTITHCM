/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlyktx.view.User;

import java.awt.Toolkit;
import java.util.List;
import quanlyktx.DAO.DAO;
import quanlyktx.model.HopDong;
import quanlyktx.model.SinhVien;
import quanlyktx.view.Admin.HelpView;
import quanlyktx.view.Admin.UserView;
import quanlyktx.view.DangNhap.DangNhapView;

/**
 *
 * @author luong
 */
public class ThongTinView extends javax.swing.JFrame {

    /**
     * Creates new form ThongTinView
     */
    public ThongTinView() {
        setIcon();
        initComponents();
        setting_view.setVisible(false);
        btn_user.setVisible(false);
        btn_help.setVisible(false);
        btn_logout.setVisible(false);
        setLocationRelativeTo(null);
        
        controller = new DAO();
        showHopDong();
    }
    
    public ThongTinView(String id)
    {
        user = id;
        setIcon();
        initComponents();
        setting_view.setVisible(false);
        btn_user.setVisible(false);
        btn_help.setVisible(false);
        btn_logout.setVisible(false);
        setLocationRelativeTo(null);
        
        controller = new DAO();
        showHopDong();
    }
    
    public void showHopDong()
    {
        try {
            sinhVien = controller.getStudent(user);
            hopDong = controller.getHopDongWithId(sinhVien.getMSSV());
            if(hopDong != null)
            {
                txt_HopDong.setText("");
                String tinhTrang;
                String ngayRoiDi;
                
                if(hopDong.getTinhTrang() == 0)
                {
                    tinhTrang = "Chưa đóng";
                }
                else
                {
                    tinhTrang = "Đã đóng";
                }
                if(hopDong.getNgayRoiDi() == null)
                {
                    ngayRoiDi = "null";
                }
                else
                {
                    ngayRoiDi = hopDong.getNgayRoiDi().toString();
                }
                
                txt_HopDong.setText(
                                    "Mã hợp đồng: " + hopDong.getID_HopDong() + "\n\n"
                                + "ID Quản lý: " + hopDong.getIDQuanLy() + "\n\n"
                                + "Mã số sinh viên: " + hopDong.getMSSV() + "\n\n"
                                + "Mã phòng: " + hopDong.getMaPhong() + "\n\n"
                                + "Tiền phòng: " + hopDong.getSoTienTra() + "\n\n"
                                + "Hạn trả: " + hopDong.getHanTra() + "\n\n"
                                + "Tình trạng: " + tinhTrang + "\n\n"
                                + "Ngày đăng ký: " + hopDong.getNgayDangKy() + "\n\n"
                                + "Ngày kết thúc: " + hopDong.getNgayKetThuc() + "\n\n"
                                + "Ngày rời đi: " + ngayRoiDi + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void showPhatSinh()
    {
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_close = new javax.swing.JLabel();
        btn_user = new javax.swing.JLabel();
        btn_logout = new javax.swing.JLabel();
        btn_help = new javax.swing.JLabel();
        btn_setting = new javax.swing.JLabel();
        setting_view = new javax.swing.JLabel();
        TabbedPane = new javax.swing.JTabbedPane();
        sp_HopDong = new javax.swing.JScrollPane();
        txt_HopDong = new javax.swing.JTextPane();
        bg_ThongTinKTX = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_close.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_close.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_closeMouseClicked(evt);
            }
        });
        getContentPane().add(btn_close, new org.netbeans.lib.awtextra.AbsoluteConstraints(870, 10, 20, 20));

        btn_user.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_userMouseClicked(evt);
            }
        });
        getContentPane().add(btn_user, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 335, 190, 55));

        btn_logout.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_logoutMouseClicked(evt);
            }
        });
        getContentPane().add(btn_logout, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 445, 190, 55));

        btn_help.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_helpMouseClicked(evt);
            }
        });
        getContentPane().add(btn_help, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, 190, 55));

        btn_setting.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_setting.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_settingMouseClicked(evt);
            }
        });
        getContentPane().add(btn_setting, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 500, 190, 50));

        setting_view.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/setting.jpg"))); // NOI18N
        setting_view.setText("jLabel2");
        getContentPane().add(setting_view, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 280, 190, 220));

        TabbedPane.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N

        txt_HopDong.setEditable(false);
        txt_HopDong.setFont(new java.awt.Font("Times New Roman", 3, 16)); // NOI18N
        txt_HopDong.setText("Mã hợp đồng:\n\nID quản lý:\n\nMã số sinh viên:\n\nMã phòng:\n\nTiền phòng:\n\nHạn trả:\n\nTình trạng:\n\nNgày đăng ký:\n\nNgày kết thúc:\n\nNgày rời đi:");
        sp_HopDong.setViewportView(txt_HopDong);

        TabbedPane.addTab("Hợp đồng", sp_HopDong);

        getContentPane().add(TabbedPane, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 80, 630, 440));

        bg_ThongTinKTX.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/ThongTinView.jpg"))); // NOI18N
        getContentPane().add(bg_ThongTinKTX, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 900, 550));

        setSize(new java.awt.Dimension(900, 550));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btn_settingMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_settingMouseClicked
        if (flag) {
            setting_view.setVisible(true);
            btn_user.setVisible(true);
            btn_help.setVisible(true);
            btn_logout.setVisible(true);
            flag = false;
        } else {
            setting_view.setVisible(false);
            btn_user.setVisible(false);
            btn_help.setVisible(false);
            btn_logout.setVisible(false);
            flag = true;
        }
    }//GEN-LAST:event_btn_settingMouseClicked

    private void btn_userMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_userMouseClicked
        setting_view.setVisible(false);
        btn_user.setVisible(false);
        btn_help.setVisible(false);
        btn_logout.setVisible(false);
        flag = true;
        System.out.println("click user");
        this.dispose();
        new SVNhapThongTinView(user).setVisible(true);
        // Mở form hiện thông tin user
    }//GEN-LAST:event_btn_userMouseClicked

    private void btn_helpMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_helpMouseClicked
        setting_view.setVisible(false);
        btn_user.setVisible(false);
        btn_help.setVisible(false);
        btn_logout.setVisible(false);
        flag = true;
        System.out.println("click help");
        new HelpView().setVisible(true);
    }//GEN-LAST:event_btn_helpMouseClicked

    private void btn_logoutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_logoutMouseClicked
        setting_view.setVisible(false);
        btn_user.setVisible(false);
        btn_help.setVisible(false);
        btn_logout.setVisible(false);
        flag = true;
        System.out.println("click logout");
        new DangNhapView().setVisible(true);
    }//GEN-LAST:event_btn_logoutMouseClicked

    private void btn_closeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_closeMouseClicked
        this.dispose();
    }//GEN-LAST:event_btn_closeMouseClicked

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
            java.util.logging.Logger.getLogger(ThongTinView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ThongTinView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ThongTinView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ThongTinView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ThongTinView().setVisible(true);
            }
        });
    }
    private void setIcon() {
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("logo.png")));
    }
    
//    VARIABLES DECLARATION
    static String user = "";
    private DAO controller;
    private boolean flag = true;
    SinhVien sinhVien;
    HopDong hopDong;
    List<SinhVien> students;
//    END OF VARIABLES DECLARATION

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTabbedPane TabbedPane;
    private javax.swing.JLabel bg_ThongTinKTX;
    private javax.swing.JLabel btn_close;
    private javax.swing.JLabel btn_help;
    private javax.swing.JLabel btn_logout;
    private javax.swing.JLabel btn_setting;
    private javax.swing.JLabel btn_user;
    private javax.swing.JLabel setting_view;
    private javax.swing.JScrollPane sp_HopDong;
    private javax.swing.JTextPane txt_HopDong;
    // End of variables declaration//GEN-END:variables
}
