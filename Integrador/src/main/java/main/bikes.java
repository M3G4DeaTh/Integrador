package main;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class bikes {
	public Integer id;
	public String user;
	public Integer senha1;
	public String userv;
	public Integer senhav;
	public Integer i;
	public Integer k = 1;
	public Integer j = 1;
	public Integer resposta;
	public String bike;
	public Integer a = 0;
	public Integer b = 0;
	public Integer c = 0;
	public boolean guardar(String user) {
		boolean resu = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="010203";
			String url = "jdbc:mysql://localhost/usuarios";
			java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
			String Sql = "insert "
					+ "users(Usuario, senha) "
					+ "values(?,?)";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.setString(1, user);
			comando.setInt(2, senha1);
			resu = comando.execute();
			comando.close();
			conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resu;
	}
	public boolean verificar(String user) {
		boolean resu = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="010203";
			String url = "jdbc:mysql://localhost/usuarios";
			java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
			String Sql = "select * "
					+ "from users "
					+ "where Usuario= ?";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.setString(1, user);
			resu = comando.execute();
			ResultSet result = comando.executeQuery();
			result.next();
			if (result.getString("Usuario") != null) {
				userv = result.getString("Usuario");
			}
			else {
				userv = "nada";
				return false;
			}
			id = result.getInt("id");
			senhav = result.getInt("senha");
			char[] user_a = userv.toCharArray();
			char[] user_a1 = user.toCharArray();
			String senhav_s =  Integer.toString(senhav);
			char[] senhav_a = senhav_s.toCharArray();
			String senha1_s =  Integer.toString(senha1);
			char[] senha1_a = senha1_s.toCharArray();
			for (i=1;i < user_a.length; i++) {
				if (user_a[i] == user_a1[i]) {
					k ++;
				}
				else {
					k=0;
				}
			}
			for (i=1;i < senhav_a.length; i++) {
				if (senhav_a[i] == senha1_a[i]) {
					j ++;
				}
				else {
					j=0;
				}
			}
			if (k == user_a.length && j == senhav_a.length) {
				resposta = 1;
			}
			else if(k == user_a.length && j != senhav_a.length){
				resposta = 5;
			}
			else {
				resposta = 0;
			}
			comando.close();
			conn.close();
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resu;
	}
	public boolean alugar(String user) {
		boolean resu = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="010203";
			String url = "jdbc:mysql://localhost/usuarios";
			java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
			String Sql = "update users "
					+ "set bikes = ? "
					+ "where Usuario=?";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.setString(1, bike);
			comando.setString(2, user);
			resu = comando.execute();
			comando.close();
			conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resu;
	}
	public boolean aluga(String user) {
		boolean resu = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="010203";
			String url = "jdbc:mysql://localhost/usuarios";
			java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
			String Sql = "select bikes "
					+ "from users "
					+ "where Usuario= ?";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.setString(1, user);
			resu = comando.execute();
			ResultSet result = comando.executeQuery();
			result.next();
			if (result.getString("bikes") != null) {
				bike = result.getString("bikes");
			}else {
				return false;
			}	
			char[] bike_a = bike.toCharArray();
			for (i=1;i < bike_a.length; i++) {
				if (bike_a[i] == 'a') {
					a ++;
				}
				else if (bike_a[i] == 'b') {
					b ++;
				}
				else if (bike_a[i] == 'c') {
					c ++;
				}
			}
			comando.close();
			conn.close();
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resu;
	}
	public void verid() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="010203";
			String url = "jdbc:mysql://localhost/Usuarios";
			java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
			String Sql = "select * from "
					+ "users";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			ResultSet result = comando.executeQuery();
			result.next();
			if(result.getInt("id") >0) {
				resposta = 7;
			}
			else {
				resposta = 0;
			}
			comando.close();
			conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public boolean verificard(String user) {
		boolean resu = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="010203";
			String url = "jdbc:mysql://localhost/usuarios";
			java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
			String Sql = "select Usuario "
					+ "from users "
					+ "where Usuario= ?";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.setString(1, user);
			comando.execute();
			ResultSet result = comando.executeQuery();
			result.next();
			if (result.getString("Usuario") != null) {
				resu = true;
			}
			else {
				resu = false;
			}
			comando.close();
			conn.close();
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resu;
	}

}

