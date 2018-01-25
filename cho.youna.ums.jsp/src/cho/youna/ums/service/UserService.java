package cho.youna.ums.service;

import java.util.List;

import cho.youna.ums.domain.User;

public interface UserService {
	List <User> listUsers();
	User findUser(int userNo);
	boolean join(String userName);
	boolean correct(User user);
	boolean secede(int userNo);

}
