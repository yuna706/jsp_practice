package util.crawler;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class Crawler {
	private String url = "http://www.y-y.hs.kr/lunch.view?";
	//private : 같은 클래스 내의 메소드만 접근 가능
	public String getMenuData(String date) {
		try {
			//http://www.y-y.hs.kr/lunch.view?date=20170623
			Document doc = Jsoup.connect(url).data("date", date).get();
			Element menu = doc.select("#morning .menuName > spoan").first();
			return menu.text();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
