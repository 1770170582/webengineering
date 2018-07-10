package cn.yyy.mapper;

import cn.yyy.pojo.SelectExample;
import cn.yyy.pojo.SelectKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SelectMapper {
    int countByExample(SelectExample example);

    int deleteByExample(SelectExample example);

    int deleteByPrimaryKey(SelectKey key);

    int insert(SelectKey record);

    int insertSelective(SelectKey record);

    List<SelectKey> selectByExample(SelectExample example);
    
    //����studentid���ҳ�select�����У������select�ؼ��ʵĳ�ͻ
    List<SelectKey> selectByStudentid(@Param("studentid") int studentid);
    
    //����classid���ҳ�select�����У������select�ؼ��ʵĳ�ͻ
    List<SelectKey> selectByCalssid(@Param("classid") int classid);

    int updateByExampleSelective(@Param("record") SelectKey record, @Param("example") SelectExample example);

    int updateByExample(@Param("record") SelectKey record, @Param("example") SelectExample example);
}