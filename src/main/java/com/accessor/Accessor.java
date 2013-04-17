/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.accessor;

import com.ocm.Dress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Vector;
import javax.swing.JOptionPane;

import com.ocm.Profile;

public class Accessor {
    private static Accessor singletonAccessor;
    private Dress d;
	private Connection con;
	Statement stat;
	// скрытый конструктор принимает драйвер и адрес БД
	// выбрасывает исключение Exception
	private Accessor(String server, String urlDatabase) throws Exception 
	{
		String driverName = "com.mysql.jdbc.Driver"; 
		 
//      Class.forName(driverName);
		this.getClass().forName(driverName).newInstance();
		// формирование строки подключения
		String url = "jdbc:mysql://" + server + ":3306/" + urlDatabase;
		String username = "root";
		String password = "police";
		// подключение к БД
		con = DriverManager.getConnection(url, username, password);
	}

	// открытый метод получения единственного экземпляра аксесора
	// выбрасывает исключение Exception
	public static Accessor getInstance(String _driver, String _urlDatabase)
	throws Exception 
	{
		if (singletonAccessor == null)
		singletonAccessor = new Accessor(_driver, _urlDatabase);
		return singletonAccessor;
	}
	
	//закрывает соединение с БД
	public  void closeConnection()
	throws SQLException 
	{
		if (con!= null)
		{
			stat.close();
			con.close();
		}
	}
	void propertyStatement()throws SQLException 
	{
		//проверка, реализует ли драйвер JDBC тот или иной тип выборки
		//TYPE_FORWARD_ONLY - курсор выборки перемещается только вперед
		//TYPE_SCROLL_INSENSITIVE - курсор перемещается в обеих направлениях, выборка не изменяется
		//TYPE_SCROLL_SENSITIVE - курсор перемещается в обеих направлениях, выборка изменяется при изменении строк в БД
		
		boolean ro=con.getMetaData().supportsResultSetType(ResultSet.TYPE_FORWARD_ONLY);
		System.out.println("TYPE_FORWARD_ONLY - "+ro);
		
		ro=con.getMetaData().supportsResultSetType(ResultSet.TYPE_SCROLL_INSENSITIVE);
		System.out.println("TYPE_SCROLL_INSENSITIVE - "+ro);
			
		ro=con.getMetaData().supportsResultSetType(ResultSet.TYPE_SCROLL_SENSITIVE);
		System.out.println("TYPE_SCROLL_SENSITIVE - "+ro);
		
		//проверка, поддерживает ли драйвер JDBC тот или иной режим изменения выборки
		//CONCUR_READ_ONLY - выборку нельзя изменять
		//CONCUR_UPDATABLE - выборку можно изменять
		ro=con.getMetaData().supportsResultSetConcurrency(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
		System.out.println("CONCUR_READ_ONLY - "+ro);
		
		ro=con.getMetaData().supportsResultSetConcurrency(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		System.out.println("CONCUR_UPDATABLE - "+ro);
	}
        
//*********************************************************************************************************************************************
        
        public int getAuthType(Profile p){
            int retId = -1;
            String verPassword = null;
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT `password` FROM `diplom`.`logpass` where `login` = '"+p.getLogin()+"'");
                if(rs.next()){
                    if(p.getPassword().equalsIgnoreCase(rs.getString("password")) ){
                        rs = st.executeQuery("SELECT `id_logPass` FROM `diplom`.`logpass` where `login` = '"+p.getLogin()+"'");
                        if(rs.next())   retId=rs.getInt("id_logPass");
                    }
                    else    JOptionPane.showMessageDialog(null, "Incorrect login or password");
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            return retId;
        }
        
        public List getActorInf(int id){
            List actorInf = new ArrayList();
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`InfActor`;");
                if(rs.next()){
                    actorInf.add(rs.getInt(1));
                    actorInf.add(rs.getString(2));
                    actorInf.add(rs.getString(3));
                    actorInf.add(rs.getString(4));
                    actorInf.add(rs.getString(5));
                    actorInf.add(rs.getString(6));
                }
                rs = st.executeQuery("SELECT  `login` FROM `diplom`.`logpass` WHERE `id_logPass` = '"+id+"';");
                if(rs.next())   actorInf.add(rs.getString(1));
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            return actorInf;
        }
        
        public void addNewPlace(int newPlace){
            int id = -1;
            int nid = 0;
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT id_place FROM place WHERE adress_place = "+newPlace+";");
                if(rs.next())   nid = rs.getInt(1);
                if(nid == 0){
                    rs = st.executeQuery("SELECT max(id_place) FROM place;");
                    if(rs.next())   id = rs.getInt(1);
                    ++id;
                    int n = 0;
                    if(id != 0)   
                        n = st.executeUpdate("INSERT INTO `diplom`.`place` (id_place, adress_place) VALUES("+id+", "
                                +newPlace+");");
                    else {
                        JOptionPane.showMessageDialog(null, "Incorrect number of place");
                    }
                }
                else JOptionPane.showMessageDialog(null, "Place already taken");
            }
            catch(SQLException ex){
                ex.printStackTrace();
            }
            id = -1;
            nid = 0;
        }
        
        public void delOldPlace(int oldPlace){
            int id = -1;
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT id_place FROM place WHERE adress_place = "+oldPlace+";");
                if(rs.next())   id = rs.getInt(1);
                if(id == -1)    JOptionPane.showMessageDialog(null, "Can't delete entered place");
                else{
                    int n = st.executeUpdate("DELETE FROM `diplom`.`place` WHERE `id_place`="+id+";");
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            id = -1;
        }
        
        public void changePlace(int oldPlace, int newPlace){
            int id = -1;
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT id_place FROM place WHERE adress_place = "+oldPlace+";");
                if(rs.next())   id = rs.getInt(1);
                int n = st.executeUpdate("UPDATE `diplom`.`place` SET `adress_place`='"+newPlace+"' WHERE `id_place`="
                        + "'"+id+"';");
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            id = -1;
        }
        
        public List getDress(int idDress){
            List dressList = new ArrayList();
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`dress` WHERE `id_dress` = '"+idDress+"';");
                if(rs.next()){
                    dressList.add(rs.getInt("id_dress"));
                    dressList.add(rs.getString("name_dress"));
                    dressList.add(rs.getString("price_dress"));
                    dressList.add(rs.getString("ref_type"));
                    dressList.add(rs.getString("ref_subgenre"));
                    dressList.add(rs.getString("ref_size"));
                    dressList.add(rs.getString("ref_color"));
                    dressList.add(rs.getString("ref_place"));
                    dressList.add(rs.getString("free"));
                    dressList.add(rs.getString("wath"));
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }

            return dressList;
        }
        
        public int changeDress(List dressList, List dressChangeList){
            String script = "UPDATE `diplom`.`dress` SET ";

            int n=0;
            if(Integer.parseInt((String) dressChangeList.get(0)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`name_dress`='"+dressList.get(1)+"'";
            }
                
            if(Integer.parseInt((String) dressChangeList.get(1)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`price_dress`='"+dressList.get(2)+"'";
            }
            if(Integer.parseInt((String) dressChangeList.get(2)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`ref_type`='"+dressList.get(3)+"'";
            }
            if(Integer.parseInt((String) dressChangeList.get(3)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`ref_subgenre`='"+dressList.get(4)+"'";
            }
            if(Integer.parseInt((String) dressChangeList.get(4)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`ref_size`='"+dressList.get(5)+"'";
            }
            if(Integer.parseInt((String) dressChangeList.get(5)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`ref_color`='"+dressList.get(6)+"'";
            }
            if(Integer.parseInt((String) dressChangeList.get(6)) == 1){
                ++n;
                if(n>1){
                    script += ", ";
                    --n;
                }
                script += "`ref_place`='"+dressList.get(7)+"'";
            }
            
            script += " WHERE `id_dress`='"+dressList.get(0)+"';";
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = null;
                int stN = st.executeUpdate(script);
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            return 0;
        }
        
        public void addDress(List newDress){
            int id = -1;
            List<Integer> refs = new ArrayList<Integer>();
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT max(id_dress) FROM `diplom`.`dress`;");
                if(rs.next())   id = rs.getInt(1);
                ++id;
                int n = st.executeUpdate("INSERT INTO `diplom`.`dress` (id_dress,name_dress,price_dress,"
                        + "ref_type,ref_subgenre,ref_size,ref_color,ref_place,free,wath) "
                        + "VALUES("+id+", '"+newDress.get(0)+"','"+newDress.get(1)+"','"
                        +newDress.get(2)+"','"+newDress.get(4)+"','"+newDress.get(5)+"','"
                        +newDress.get(6)+"','"+newDress.get(7)+"', 0, 0);");
            }
            catch(Exception ex){
                ex.printStackTrace();
                JOptionPane.showMessageDialog(null, "Inccorect data");
            }
        }
        
        public List getColor(){
            List colorList = new ArrayList();
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`color`;");
                while(rs.next()){
                    colorList.add(rs.getInt(1));
                    colorList.add(rs.getString(2));
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            return colorList;
        }
        
        public List getGenre(){
            List genreList = new ArrayList();
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`genre`;");
                while(rs.next()){
                    genreList.add(rs.getInt(1));
                    genreList.add(rs.getString(2));
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            return genreList;
        }
        
        public List getSubGenre(){
            List subGenreList = new ArrayList();
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`subgenre`;");
                while(rs.next()){
                    subGenreList.add(rs.getInt(1));
                    subGenreList.add(rs.getString(2));
                    subGenreList.add(rs.getInt(3));
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            return subGenreList;
        }
        
        public List getSize(){
            List sizeList = new ArrayList();
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`size`;");
                while(rs.next()){
                    sizeList.add(rs.getInt(1));
                    sizeList.add(rs.getString(2));
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            return sizeList;
        }
        
        public List getSearch(List searchBy){
            List<Dress> searchResult = new ArrayList<Dress>();
            
            searchResult = searchByType((Integer)searchBy.get(0));
            if((Integer)searchBy.get(1)!=0)
                searchResult = searchBySubGenre((Integer)searchBy.get(1), searchResult);
            if((Integer)searchBy.get(2)!=0)
                searchResult = searchByColor((Integer)searchBy.get(2), searchResult);
            if((Integer)searchBy.get(3)!=0)
                searchResult = searchBySize((Integer)searchBy.get(3), searchResult);
            
            
            return searchResult;
        }
        
        public List searchByType(int typeId){
            List<Dress> resType = new ArrayList<Dress>();
            int i = 0;
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `diplom`.`dress` WHERE ref_type = '"+typeId+"';");
                while(rs.next()){
                    d = new Dress();
                    d.setIdDress(rs.getInt("id_dress"));
                    d.setNmaeDress(rs.getString("name_dress"));
                    d.setPriceDress(rs.getInt("price_dress"));
                    d.setRefType(rs.getInt("ref_type"));
                    d.setRefSubGenre(rs.getInt("ref_subgenre"));
                    d.setRefSize(rs.getInt("ref_size"));
                    d.setRefColor(rs.getInt("ref_color"));
                    d.setRefPlace(rs.getInt("ref_place"));
                    d.setFree(rs.getInt("free"));
                    d.setWath(rs.getInt("wath"));
                    resType.add(i, d);
                    
                    ++i;
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            return resType;
        }
        
        public List searchBySubGenre(int subGenreId, List<Dress> searchList){
            List<Dress> resultList = new ArrayList<Dress>();
            
            for(int i=0; i<searchList.size(); ++i){
                if(searchList.get(i).getRefSubGenre() == subGenreId){
                    resultList.add(searchList.get(i));
                }
            }
            
            return resultList;
        }
        
        public List searchBySize(int sizeId, List<Dress> searchList){
            List<Dress> resultList = new ArrayList<Dress>();
            
            for(int i=0; i<searchList.size(); ++i){
                if(searchList.get(i).getRefSize() == sizeId){
                    resultList.add(searchList.get(i));
                }
            }
            
            return resultList;
        }
        
        public List searchByColor(int colorId, List<Dress> searchList){
            List<Dress> resultList = new ArrayList<Dress>();
            
            for(int i=0; i<searchList.size(); ++i){
                if(searchList.get(i).getRefColor() == colorId){
                    resultList.add(searchList.get(i));
                }
            }
            
            return resultList;
        }
        
        public List searchByFree(int freeId, List<Dress> searchList){
            List<Dress> resultList = new ArrayList<Dress>();
            
            for(int i=0; i<searchList.size(); ++i){
                if(searchList.get(i).getFree() == freeId){
                    resultList.add(searchList.get(i));
                }
            }
            
            return resultList;
        }
        
        public void addOrder(List orderList){
            int id = -1;
            int prepayment = 0;
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT max(id_order) FROM `diplom`.`order`;");
                if(rs.next())   id = rs.getInt(1);
                ++id;
                
                rs = st.executeQuery("SELECT `price_dress` FROM `diplom`.`dress` WHERE `id_dress` = '"+orderList.get(0)+"';");
                if(rs.next())   prepayment = rs.getInt(1);
                
                int n = st.executeUpdate("INSERT INTO `diplom`.`order` (`id_order`,`ref_dress`, `firstname`, `lastname`, `adress`, "
                        + "`e_mail`, `tel`, `start_date`, `finish_date`, `off_date`, `price_penalty`, `prepayment`)" 
                        + "VALUES ('"+id+"', '"+orderList.get(0)+"', '"+orderList.get(1)+"', '"+orderList.get(2)+"', "
                        + "'"+orderList.get(3)+"', '"+orderList.get(4)+"', '"+orderList.get(5)+"', '"+orderList.get(6)+"', "
                        + "'"+orderList.get(7)+"', '"+orderList.get(8)+"', '"+orderList.get(9)+"', '"+prepayment+"');");
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
        }
}