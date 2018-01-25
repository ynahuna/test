package cho.youna.ums.dao;

import java.util.List;

import cho.youna.ums.domain.User;

public interface UserDao {
	List<User> getUsers();
	User getUser(int userNo);
	boolean addUser(String userName);
	boolean modifyUser(User user);
	boolean delUser(int userNo);
}
