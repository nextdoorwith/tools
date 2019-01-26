package example.web.constants;

/**
 * 区分値を表現する列挙体
 * 
 * @version 1.0
 *
 */
public interface KbnEnumBase {

	/**
	 * 名称を取得する。
	 * 
	 * @return ラベル
	 */
	public String getName();

	/**
	 * 短縮名称を取得する。
	 * 
	 * @return ラベル(短縮)
	 */
	public String getShortName();

	/**
	 * 値を取得する。
	 * 
	 * @return 値
	 */
	public String getValue();

}
