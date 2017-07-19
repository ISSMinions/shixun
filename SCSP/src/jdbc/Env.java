package jdbc;
import java.io.InputStream;
import java.util.Properties;
public class Env extends Properties{
	private static Env instance;
	private Env(){
		InputStream is = null;
		try {
			is = getClass().getResourceAsStream("/db.properties");
			this.load(is);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(is!=null)
					is.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	public static Env getInstance(){
		if(instance==null){
			createInstance();
		}
		return instance;
	}
	private static synchronized void createInstance(){
		if(instance==null){
			instance = new Env();
		}
	}
}
