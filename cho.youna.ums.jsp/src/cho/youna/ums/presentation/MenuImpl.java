package cho.youna.ums.presentation;
import cho.youna.ums.domain.CODE;

public class MenuImpl implements Menu {
	private String[] menuItem;
	private String menu = "";
	private UserIo UserIo;

	public MenuImpl(String[] menuItem, UserIo UserIo) {
		this.menuItem = menuItem;
		this.UserIo = UserIo;

		for (int i = 0; i < menuItem.length; i++)
			this.menu += (i + 1) + "." + menuItem[i] + ", ";
		this.menu += "0.종료";
	}

	public void play() {
		int choice = 0;
		while ((choice = choose()) != 0) {
			switch (choice) {
			case CODE.USER_LIST:
				UserIo.listUsers();
				break;
			case CODE.USER_ADD:
				UserIo.join();
				break;
			case CODE.USER_UPDATE:
				UserIo.correctUser();
				break;
			case CODE.USER_DEL:
				UserIo.secede();
			}
		}
	}

	private int choose() {
		boolean isMenuNum = false;
		int choice = 0;
		do {
			Console.in(menu);
			choice = Console.inNum();
			if (choice < 0 || choice > menuItem.length)
				Console.err("존재하는 메뉴 번호를 입력하세요~");
			else
				isMenuNum = true;
		} while (!isMenuNum);
		return choice;
	}
}
