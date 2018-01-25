package cho.youna.ums;

import cho.youna.ums.dao.UserDao;
import cho.youna.ums.dao.UserDaoImpl;
import cho.youna.ums.presentation.Console;
import cho.youna.ums.presentation.Menu;
import cho.youna.ums.presentation.MenuImpl;
import cho.youna.ums.presentation.UserIo;
import cho.youna.ums.presentation.UserIoImpl;
import cho.youna.ums.service.UserService;
import cho.youna.ums.service.UserServiceImpl;

public class Main {
    public static void main(String[] args)  {
  	 
       String[] menuItem = {"목록", "등록", "수정", "탈퇴"};        
             
       UserDao userDao = new UserDaoImpl();
       UserService userService = new UserServiceImpl(userDao);
       UserIo UserIo = new UserIoImpl(userService);
       Menu menu = new MenuImpl(menuItem, UserIo);      
              
       Console.info("UMS를 시작합니다.");
       menu.play();
       Console.info("UMS를 종료합니다.");             
    }
}