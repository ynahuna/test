package cho.youna.ums.service;
import java.util.List;
import cho.youna.ums.dao.UserDao;
import cho.youna.ums.domain.User;

public class UserServiceImpl implements UserService {
    private UserDao userDao;
	
	public UserServiceImpl(UserDao userDao){
		this.userDao = userDao;
	}

	@Override
	public List<User> listUsers() {
		return userDao.getUsers();
	}

	@Override
	public User findUser(int userNo) {
		return userDao.getUser(userNo);
	}

	@Override
	public boolean join(String userName) {
		return userDao.addUser(userName);
	}

	@Override
	public boolean correct(User user) {
		return userDao.modifyUser(user);
	}

	@Override
	public boolean secede(int userNo) {
		return userDao.delUser(userNo);
	}

}