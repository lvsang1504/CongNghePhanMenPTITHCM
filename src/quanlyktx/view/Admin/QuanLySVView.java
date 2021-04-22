/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlyktx.view.Admin;

import java.awt.Toolkit;
import java.awt.event.KeyEvent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import quanlyktx.DAO.DAO;
import quanlyktx.model.HopDong;
import quanlyktx.view.DangNhap.DangNhapView;
import quanlyktx.model.SinhVien;

/**
 *
 * @author luong
 */
public class QuanLySVView extends javax.swing.JFrame {

    private List<SinhVien> items;
    private DefaultTableModel modelSinhVien;
    private DAO controller;
    int selectedSinhVien = -1;
    String user;

    /**
     * Creates new form QuanLySVView
     */
    public QuanLySVView() {
        setIcon();
        initComponents();
        setting_view1.setVisible(false);
        ///////////////////////
        items = new ArrayList<>();
        modelSinhVien = (DefaultTableModel) tbl_sinh_vien.getModel();
        controller = new DAO();

        showSinhVien();

    }

    public QuanLySVView(String idQuanLy) {
        setIcon();
        user = idQuanLy;
        initComponents();
        setting_view1.setVisible(false);
        ///////////////////////
        items = new ArrayList<>();
        modelSinhVien = (DefaultTableModel) tbl_sinh_vien.getModel();
        controller = new DAO();

        showSinhVien();

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_sua_thong_tin = new javax.swing.JLabel();
        btn_search = new javax.swing.JLabel();
        btn_refresh = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl_sinh_vien = new javax.swing.JTable();
        btn_user = new javax.swing.JLabel();
        btn_help = new javax.swing.JLabel();
        btn_logout = new javax.swing.JLabel();
        btn_setting1 = new javax.swing.JLabel();
        setting_view1 = new javax.swing.JLabel();
        btn_add_sv = new javax.swing.JLabel();
        txt_search = new javax.swing.JTextField();
        btn_close = new javax.swing.JLabel();
        btn_xoa = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_sua_thong_tin.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_sua_thong_tin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_sua_thong_tinMouseClicked(evt);
            }
        });
        getContentPane().add(btn_sua_thong_tin, new org.netbeans.lib.awtextra.AbsoluteConstraints(730, 510, 150, 30));

        btn_search.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_search.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_searchMouseClicked(evt);
            }
        });
        getContentPane().add(btn_search, new org.netbeans.lib.awtextra.AbsoluteConstraints(657, 45, 40, 40));

        btn_refresh.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btn_refresh.setForeground(new java.awt.Color(51, 204, 255));
        btn_refresh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/refresh.png"))); // NOI18N
        btn_refresh.setBorder(null);
        btn_refresh.setBorderPainted(false);
        btn_refresh.setContentAreaFilled(false);
        btn_refresh.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_refresh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_refreshMouseClicked(evt);
            }
        });
        getContentPane().add(btn_refresh, new org.netbeans.lib.awtextra.AbsoluteConstraints(790, 50, 60, 30));

        tbl_sinh_vien.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        tbl_sinh_vien.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Stt", "MSSV", "Tên", "Giới tính", "Quê Quán", "Ngày sinh", "Phòng", "Ngày đăng kí", "Ngày kết thúc", "Ghi chú"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                true, false, true, true, true, true, true, true, true, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tbl_sinh_vien.setRowHeight(20);
        tbl_sinh_vien.setSelectionBackground(new java.awt.Color(255, 204, 0));
        tbl_sinh_vien.setSelectionForeground(new java.awt.Color(51, 51, 255));
        jScrollPane2.setViewportView(tbl_sinh_vien);
        if (tbl_sinh_vien.getColumnModel().getColumnCount() > 0) {
            tbl_sinh_vien.getColumnModel().getColumn(0).setMaxWidth(20);
            tbl_sinh_vien.getColumnModel().getColumn(1).setMinWidth(110);
            tbl_sinh_vien.getColumnModel().getColumn(1).setMaxWidth(110);
            tbl_sinh_vien.getColumnModel().getColumn(2).setMinWidth(150);
            tbl_sinh_vien.getColumnModel().getColumn(3).setMinWidth(50);
            tbl_sinh_vien.getColumnModel().getColumn(3).setMaxWidth(50);
            tbl_sinh_vien.getColumnModel().getColumn(6).setMinWidth(50);
            tbl_sinh_vien.getColumnModel().getColumn(6).setMaxWidth(50);
        }

        getContentPane().add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 100, 690, 390));

        btn_user.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_user.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_userMouseClicked(evt);
            }
        });
        getContentPane().add(btn_user, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 333, 190, 52));

        btn_help.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_help.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_helpMouseClicked(evt);
            }
        });
        getContentPane().add(btn_help, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 387, 190, 52));

        btn_logout.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_logout.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_logoutMouseClicked(evt);
            }
        });
        getContentPane().add(btn_logout, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 443, 190, 52));

        btn_setting1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_setting1MouseClicked(evt);
            }
        });
        getContentPane().add(btn_setting1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 495, 190, 55));

        setting_view1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/setting.jpg"))); // NOI18N
        getContentPane().add(setting_view1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 276, 191, 220));

        btn_add_sv.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_add_sv.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_add_svMouseClicked(evt);
            }
        });
        getContentPane().add(btn_add_sv, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 510, 150, 30));

        txt_search.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_search.setToolTipText("Search..");
        txt_search.setBorder(null);
        txt_search.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_searchActionPerformed(evt);
            }
        });
        txt_search.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txt_searchKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txt_searchKeyTyped(evt);
            }
        });
        getContentPane().add(txt_search, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 50, 260, 30));

        btn_close.setBackground(new java.awt.Color(0, 255, 204));
        btn_close.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btn_close.setForeground(new java.awt.Color(51, 255, 204));
        btn_close.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_close.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/close.png"))); // NOI18N
        btn_close.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_close.setIconTextGap(5);
        btn_close.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_closeMouseClicked(evt);
            }
        });
        getContentPane().add(btn_close, new org.netbeans.lib.awtextra.AbsoluteConstraints(870, 10, 20, 20));

        btn_xoa.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_xoa.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_xoaMouseClicked(evt);
            }
        });
        getContentPane().add(btn_xoa, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 510, 130, 30));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlyktx/images/giao_dien_quan_ly_sv.jpg"))); // NOI18N
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        setSize(new java.awt.Dimension(900, 550));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
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

    private void btn_closeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_closeMouseClicked
        this.dispose();
        new AdminView().setVisible(true);
    }//GEN-LAST:event_btn_closeMouseClicked

    private void btn_add_svMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_add_svMouseClicked
        new DangKyKTX(user).setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btn_add_svMouseClicked

    private void btn_setting1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_setting1MouseClicked
        if (flag) {
            setting_view1.setVisible(true);
            flag = false;
        } else {
            setting_view1.setVisible(false);
            flag = true;
        }
    }//GEN-LAST:event_btn_setting1MouseClicked

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
        setting_view1.setVisible(false);
        flag = true;
    }//GEN-LAST:event_jLabel1MouseClicked

    private void btn_userMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_userMouseClicked
        this.dispose();
        new UserView().setVisible(true);
    }//GEN-LAST:event_btn_userMouseClicked

    private void btn_helpMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_helpMouseClicked
        this.dispose();
        new HelpView().setVisible(true);
    }//GEN-LAST:event_btn_helpMouseClicked

    private void btn_logoutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_logoutMouseClicked
        new DangNhapView().setVisible(true);
        this.dispose();

    }//GEN-LAST:event_btn_logoutMouseClicked

    private void btn_refreshMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_refreshMouseClicked
        txt_search.setText("");
        showSinhVien();
    }//GEN-LAST:event_btn_refreshMouseClicked

    private void btn_searchMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_searchMouseClicked
        String keySearch = txt_search.getText().trim();
        if (!keySearch.isEmpty()) {
            searchSinhVien(keySearch);
        }
    }//GEN-LAST:event_btn_searchMouseClicked

    private void btn_sua_thong_tinMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_sua_thong_tinMouseClicked
        editSinhVien();
    }//GEN-LAST:event_btn_sua_thong_tinMouseClicked

    private void btn_xoaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_xoaMouseClicked
        selectedSinhVien = tbl_sinh_vien.getSelectedRow();
        if (items.size() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Danh sách trống!");
        } else if (selectedSinhVien == -1) {
            JOptionPane.showMessageDialog(rootPane, "Chọn dòng cần sửa!");
        } else {
            deleteSinhVien(items.get(selectedSinhVien).getMSSV());
        }
    }//GEN-LAST:event_btn_xoaMouseClicked

    private void txt_searchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_searchActionPerformed
    }//GEN-LAST:event_txt_searchActionPerformed

    private void txt_searchKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_searchKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            String keySearch = txt_search.getText().trim();
            if (!keySearch.isEmpty()) {
                searchSinhVien(keySearch);
            }
        }
    }//GEN-LAST:event_txt_searchKeyPressed

    private void txt_searchKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_searchKeyTyped
        String keySearch = txt_search.getText().trim();
        if (!keySearch.isEmpty()) {
            searchSinhVien(keySearch);
        }
    }//GEN-LAST:event_txt_searchKeyTyped
    private boolean flag = true;

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
            java.util.logging.Logger.getLogger(QuanLySVView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(QuanLySVView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(QuanLySVView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(QuanLySVView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new QuanLySVView().setVisible(true);
            }
        });
    }

    private void setIcon() {
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("logo.png")));
    }

    public void showData(List<SinhVien> data, DefaultTableModel model) {
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        int i = 1;
        model.setRowCount(0);
        for (SinhVien t : data) {

            String ngaySinh = format.format(t.getNgaySinh());

            HopDong hd = controller.getHopDongWithId(t.getMSSV().trim());
            //System.out.println(t.getMSSV().trim() + "____" + hd.getNgayDangKy());
            if (checkThoiHan(hd.getNgayDangKy(), hd.getNgayKetThuc())) {
                controller.updateThoiHan(hd.getMSSV(),1);
            }else {
                controller.updateThoiHan(hd.getMSSV(),0);
            }
            model.addRow(new Object[]{
                i++,
                t.getMSSV().trim(),
                t.getTen().trim(),
                t.getGioiTinh().trim(),
                t.getQueQuan().trim(),
                ngaySinh,
                hd.getMaPhong() == null ? "" : hd.getMaPhong().trim(),
                hd.getNgayDangKy() == null ? "" : format.format(hd.getNgayDangKy()),
                hd.getNgayKetThuc() == null ? "" : format.format(hd.getNgayKetThuc()),
                checkThoiHan(hd.getNgayDangKy(), hd.getNgayKetThuc()) ? "Còn hạn" : "Hết hạn"
            });
        }
       
                

    }

    boolean checkThoiHan(Date ngayDangKy, Date ngayKetThuc) {

        Date todayDate = java.util.Calendar.getInstance().getTime();
        if (!ngayDangKy.after(todayDate) && !ngayKetThuc.before(todayDate)) {
            return true;
        }
        return false;
    }

    void searchSinhVien(String key) {
        items.clear();
        items.addAll(controller.getListStudentSearch(key));
        modelSinhVien.setRowCount(0);
        showData(items, modelSinhVien);
    }

    void showSinhVien() {
        items.clear();
        items.addAll(controller.getListStudent());
        showData(items, modelSinhVien);
    }

    void addSinhVien(SinhVien sinhVien) {
        items.clear();
        items.addAll(controller.getListStudent());
        items.add(sinhVien);
        showData(items, modelSinhVien);
    }

    void editSinhVien() {
        selectedSinhVien = tbl_sinh_vien.getSelectedRow();
        if (items.size() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Danh sách trống!");
        } else if (selectedSinhVien == -1) {
            JOptionPane.showMessageDialog(rootPane, "Chọn dòng cần sửa!");
        } else {
            SuaThongTin edit = new SuaThongTin(this, rootPaneCheckingEnabled);
            edit.setEditData(items.get(selectedSinhVien));
            edit.setVisible(true);
        }

    }

    void updateSinhVien(SinhVien sinhVien) {
        if (controller.updateStudent(sinhVien)) {
            JOptionPane.showMessageDialog(rootPane, "Sửa thông tin thành công!");
            showSinhVien();
        }
    }

    void deleteSinhVien(String mssv) {
        if (controller.deleteStudent(mssv)) {
            JOptionPane.showMessageDialog(rootPane, "Xóa thông tin thành công!");
            showSinhVien();
        } else {
            JOptionPane.showMessageDialog(rootPane, "Không thể xóa sinh viên này\n vì có liên kết nhiều dữ liệu!");
        }
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btn_add_sv;
    private javax.swing.JLabel btn_close;
    private javax.swing.JLabel btn_help;
    private javax.swing.JLabel btn_logout;
    private javax.swing.JButton btn_refresh;
    private javax.swing.JLabel btn_search;
    private javax.swing.JLabel btn_setting1;
    private javax.swing.JLabel btn_sua_thong_tin;
    private javax.swing.JLabel btn_user;
    private javax.swing.JLabel btn_xoa;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel setting_view1;
    private javax.swing.JTable tbl_sinh_vien;
    private javax.swing.JTextField txt_search;
    // End of variables declaration//GEN-END:variables

}
