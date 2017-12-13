package ru.nikolay.jdbcTemplate.bd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import ru.nikolay.jdbcTemplate.objects.User;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.sql.*;
import java.util.List;



@Repository
public class JDBCExample {


    @Autowired
    DataSource dataSource; //look to application-context.xml bean id='dataSource' definition

    private NamedParameterJdbcTemplate jdbcTemplate;

    @PostConstruct
    public void init() {
        this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }


    public User getUserById(int id){
        String query = "select * from dba2.user7 where id=:id";

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);
        return jdbcTemplate.queryForObject(query, params, new RowMapper<User>() {
//            @Override
            public User mapRow(ResultSet resultSet, int i) throws SQLException {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setPassword(resultSet.getString("password"));
                user.setTimestamp(resultSet.getTimestamp("datatime"));
                return user;
            }
        });
    }


    public List<User> queryAllUsers(){
        final String query = "Select *FROM dba2.user7 ";
        List<User> userList = this.jdbcTemplate.query(query, new RowMapper<User>() {
//            @Override
            public User mapRow(ResultSet resultSet, int RowNum) throws SQLException {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setPassword(resultSet.getString("password"));
                System.out.println();
                user.setTimestamp(resultSet.getTimestamp("datatime"));
                return user;
            }

        });
        return userList;
    }


    public boolean insert(final User user){
        final String query = "insert into dba2.user7 (name, password, datatime) VALUES (:name, :password, :datatime)";

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("name", user.getName());
        params.addValue("password", user.getPassword());
        params.addValue("datatime", user.getTimestamp());

        jdbcTemplate.update(query, params);
        return true;
    }

//    private JdbcTemplate jdbcTemplate;

//    @PostConstruct
//    public void init() {
//        System.out.println("JDBCExample postConstruct is called. datasource = " + dataSource);
//        jdbcTemplate = new JdbcTemplate(dataSource);
//    }

//    public User getUserById(int id){
//        String query = "select * from dba2.user7 where id=:id";
//
//        MapSqlParameterSource params = new MapSqlParameterSource();
//        params.addValue("id", id);
//        return jdbcTemplate.queryForObject(query, params, new RowMapper<User>() {
//            @Override
//            public User mapRow(ResultSet resultSet, int i) throws SQLException {
//                User user = new User();
//                user.setId(resultSet.getInt("id"));
//                user.setName(resultSet.getString("name"));
//                user.setPassword(resultSet.getString("password"));
//                user.setTimestamp(resultSet.getTimestamp("datatime"));
//                return user;
//            }
//        });
//    }


//    public User getUserById(int id){
//        String query = "select * from dba2.user7 where id=:4";
//
//        MapSqlParameterSource params = new MapSqlParameterSource();
//        params.addValue("id", id);
//        return jdbcTemplate.queryForObject(query, params, new UserRowMapper());
//    }
//
//
//    private static final class UserRowMapper implements RowMapper<User>{
//        @Override
//        public User mapRow(ResultSet resultSet, int RowNum) throws SQLException {
//            User user = new User();
//            user.setId(resultSet.getInt("id"));
//            user.setName(resultSet.getString("name"));
//            user.setPassword(resultSet.getString("password"));
//            user.setTimestamp(resultSet.getTimestamp("datatime"));
//            return user;
//        }
//    }

//    public static void main(String[] args) {
//        JDBCExample jdbcExample = new JDBCExample();
//        jdbcExample.queryAllUsers();
//    }

//    public boolean insert(final User user){
//       final String query = "insert into dba2.user7 (name, password, datatime) VALUES (?,?,?)";
//       jdbcTemplate.update(new PreparedStatementCreator() {
//           @Override
//           public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
//               PreparedStatement preparedStatement = connection.prepareStatement(query);
//                preparedStatement.setString(1, user.getName());
//               preparedStatement.setString(2, user.getPassword());
//               preparedStatement.setTimestamp(3, new java.sql.Timestamp(System.currentTimeMillis()));
//                return preparedStatement;
//           }
//       });
//       return true;
//    }


}
