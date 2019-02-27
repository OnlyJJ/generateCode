package generator;

import javax.swing.JOptionPane;

import com.pousheng.generator.constant.TemplateType;
import com.pousheng.generator.core.GeneratorOneTable;
import com.pousheng.generator.core.model.TableVO;

public class OneTable {
	public static void crate(String tableName) {
		try {
			TableVO tableVO = new TableVO();
			
			String s = tableName;
		    String s1=s;
			for (int i = 0; i < s.length(); i++) {
			if(s.substring(i, i+1).equals("_")){
				if(i+3< s.length()){
				s1=s1.substring(0,i+1)+
						s1.substring(i+1, i+2).toUpperCase()
				+s1.substring(i+2);
			
				}
			}
				
			}
			s1=s1.substring(2).replace("_", ""); // t_Room_Type

			tableVO.setPackageName(s1.substring(0, 1).toLowerCase()+s1.substring(1));
			tableVO.setClassName(s1);
			tableVO.setTableName(tableName);
			tableVO.setTemplateType(TemplateType.MODEL);
			
			GeneratorOneTable generator = new GeneratorOneTable();
			generator.generatorOneTable(tableVO);
			System.err.println("完成");
		} catch (Exception e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "生成代码失败，请查看控制的错误信息。", "失败提示", JOptionPane.ERROR_MESSAGE);
		}
		
	}


	public static void main(String[] args) {
		//表名  t_开头
		String tableName="t_user_robot";
		
		System.err.println(tableName.substring(2));
		
		OneTable.crate(tableName);
	}

}
