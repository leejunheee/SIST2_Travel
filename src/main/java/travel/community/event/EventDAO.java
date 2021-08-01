package travel.community.event;

import travel.DBUtil;
import travel.community.question.BoardDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

public class EventDAO {
    private Connection conn;
    private Statement stat;
    private PreparedStatement pstat;
    private ResultSet rs;

    public EventDAO(){
        try {
            conn = DBUtil.open();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    //Add.do get dto
    public ArrayList<EventDTO> list(HashMap<String, String> map) {
        try{
            String where = "";
            if(map.get("isSearch").equals("y")){
                if (map.get("column").equals("all")){
                    where = String.format(" and subject like '%%%s%%' or content like '%%%s%%' ", map.get("search"),
                            map.get("serach"));
                }else{
                    where = String.format(" and %s like '%%%s%%' ", map.get("column"), map.get("search"));
                }
            }

            String sql = String.format("select * from vwEventBoard where rnum between %s and %s order by thread desc"
            , map.get("begin")
            , map.get("end")
            , where);

            pstat = conn.prepareStatement(sql);
            rs = pstat.executeQuery();
            ArrayList<EventDTO> list = new ArrayList<EventDTO>();

            while(rs.next()){
                EventDTO dto = new EventDTO();
                dto.setSeq(rs.getString("seq"));
                dto.setNick(rs.getString("nick"));
                dto.setSubject(rs.getString("subject"));
                dto.setContent(rs.getString("content"));
                dto.setRegdate(rs.getString("regdate"));
                dto.setReadcount(rs.getString("readcount"));
                dto.setRecommCnt(rs.getString("recommcnt"));
                dto.setStartDate(rs.getString("startDate"));
                dto.setEndDate(rs.getString("enddate"));
                dto.setAnnounceDate(rs.getString("announcedate"));
                dto.setThread(rs.getString("thread"));
                dto.setDepth(rs.getString("depth"));

                list.add(dto);
            }
            return list;
        }catch(Exception e)
        {
            e.printStackTrace();
        }

        return null;
    }

    //AddOk.do insert dto
    public int add(EventDTO dto){
        try{
            String sql = "insert into tblEventBoard values(seqEventBoard.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?";
            pstat = conn.prepareStatement(sql);

            pstat.setString(1, dto.getId());
            pstat.setString(2,dto.getSubject());
            pstat.setString(3, dto.getContent());
            pstat.setString(4, dto.getRegdate());
            pstat.setString(5, dto.getReadcount());
            pstat.setString(6, dto.getRecommCnt());
            pstat.setString(7, dto.getStartDate());
            pstat.setString(8, dto.getEndDate());
            pstat.setString(9, dto.getAnnounceDate());
            pstat.setString(10, dto.getThread());
            pstat.setString(11, dto.getDepth());

        }catch(Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    //List.do give to totalCount
    public int getTotalCount(HashMap<String, String> map){
        try{
            String where = "";
            if(map.get("isSearch").equals("y")){
                if(map.get("column").equals("all")){
                    where = String.format(" where subject like '%%%s%%' or content like '%%%s%%' "
                    , map.get("search"), map.get("search"));
                } else{
                    where = String.format(" where %s like '%%%s%%' ",
                            map.get("column"), map.get("search"));
                }
            }
            String sql = String.format("select count(*) as cnt from tblEventBoard %s", where);

            pstat = conn.prepareStatement(sql);

            rs = pstat.executeQuery();

            if(rs.next()){
                return rs.getInt("cnt");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return 0;
    }
}
