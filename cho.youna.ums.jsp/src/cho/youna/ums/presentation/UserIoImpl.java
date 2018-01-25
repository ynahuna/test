package cho.youna.ums.presentation;

import java.util.List;
import cho.youna.ums.domain.User;
import cho.youna.ums.service.UserService;

public class UserIoImpl implements UserIo {
	private UserService userService;

	public UserIoImpl(UserService userService) {
		this.userService = userService;
	}

	public void listUsers() {
		List<User> users = userService.listUsers();
		if (users.size() != 0)
			for (User user : users)
				Console.info(user);
		else
			Console.info("사용자가 없습니다.!");
	}

	public void join() {
		Console.in("등록할 사용자 이름을 입력하세요:");
		String userName = Console.inStr();
		if (userName.equals("0")) {
			Console.info("사용자 등록 취소.");
			return;
		}
		if (userService.join(userName))
			Console.info("사용자 등록 성공.");
		else
			Console.err("사용자 등록 실패.");
	}

	public void correctUser() {
		if (userService.listUsers().size() == 0) {
			Console.info("사용자가 없습니다.");
			return;
		}
		User user = null;
		do {
			Console.in("수정할 사용자 번호를 입력하세요.");
			int userNo = Console.inNum();
			if (userNo == 0) {
				Console.info("사용자 정보 수정 취소.");
				return;
			}
			user = userService.findUser(userNo);
			if (user == null)
				Console.err("입력한 번호의 사용자가 없습니다.");
		} while (user == null);

		Console.in("사용자 이름을 입력하세요.");
		user.setUserName(Console.inStr());
		if (userService.correct(user))
			Console.info("사용자 정보 수정 성공.");
		else
			Console.err("사용자 정보 수정 실패.");
	}

	public void secede() {
		if (userService.listUsers().size() == 0) {
			Console.info("사용자가 없습니다.");
			return;
		}
		User user = null;
		int userNo = 0;
		do {
			Console.in("탈퇴할 사용자 번호를 입력하세요.");
			userNo = Console.inNum();
			if (userNo == 0) {
				Console.info("사용자 탈퇴 취소.");
				return;
			}
			user = userService.findUser(userNo);
			if (user == null)
				Console.err("입력한 번호의 사용자가 없습니다.");
		} while (user == null);

		if (userService.secede(userNo))
			Console.info("사용자 탈퇴 성공.");
		else
			Console.err("사용자 탈퇴 실패.");
	}
}
