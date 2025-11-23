package com.example.project22.dao;

import com.example.project22.util.JDBCUtil;
import com.example.project22.vo.BoardVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {

    // 목록 조회
    public ArrayList<BoardVO> getList() {
        ArrayList<BoardVO> list = new ArrayList<>();

        String sql = "SELECT * FROM board ORDER BY num DESC";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                BoardVO vo = new BoardVO();
                vo.setNum(rs.getInt("num"));
                vo.setTitle(rs.getString("title"));
                vo.setWriter(rs.getString("writer"));
                vo.setContent(rs.getString("content"));
                vo.setRegdate(rs.getString("regdate"));
                vo.setHit(rs.getInt("hit"));
                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return list;
    }

    // 게시글 조회 (View)
    public BoardVO getView(int num) {

        updateHit(num);  // 조회수 증가

        BoardVO vo = null;
        String sql = "SELECT * FROM board WHERE num = ?";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                vo = new BoardVO();
                vo.setNum(rs.getInt("num"));
                vo.setTitle(rs.getString("title"));
                vo.setWriter(rs.getString("writer"));
                vo.setContent(rs.getString("content"));
                vo.setRegdate(rs.getString("regdate"));
                vo.setHit(rs.getInt("hit"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return vo;
    }

    // 조회수 증가
    public void updateHit(int num) {
        String sql = "UPDATE board SET hit = hit + 1 WHERE num = ?";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(pstmt, conn);
        }
    }

    // 글 등록
    public int insert(BoardVO vo) {
        String sql = "INSERT INTO board (title, writer, content, regdate, hit) VALUES (?, ?, ?, NOW(), 0)";

        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vo.getTitle());
            pstmt.setString(2, vo.getWriter());
            pstmt.setString(3, vo.getContent());

            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(pstmt, conn);
        }

        return result;
    }

    // 글 수정
    public int update(BoardVO vo) {
        String sql = "UPDATE board SET title=?, writer=?, content=? WHERE num=?";

        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vo.getTitle());
            pstmt.setString(2, vo.getWriter());
            pstmt.setString(3, vo.getContent());
            pstmt.setInt(4, vo.getNum());
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(pstmt, conn);
        }

        return result;
    }

    // 글 삭제
    public int delete(int num) {
        String sql = "DELETE FROM board WHERE num=?";

        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(pstmt, conn);
        }

        return result;
    }

    // 검색 기능
    public ArrayList<BoardVO> search(String keyword) {

        ArrayList<BoardVO> list = new ArrayList<>();
        String sql = "SELECT * FROM board WHERE title LIKE ? OR content LIKE ? ORDER BY num DESC";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = JDBCUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "%" + keyword + "%");
            pstmt.setString(2, "%" + keyword + "%");
            rs = pstmt.executeQuery();

            while (rs.next()) {
                BoardVO vo = new BoardVO();
                vo.setNum(rs.getInt("num"));
                vo.setTitle(rs.getString("title"));
                vo.setWriter(rs.getString("writer"));
                vo.setContent(rs.getString("content"));
                vo.setRegdate(rs.getString("regdate"));
                vo.setHit(rs.getInt("hit"));
                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return list;
    }
}
