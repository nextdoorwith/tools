package example.web.constants.enums;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import example.web.constants.KbnEnumBase;

/**
 * 区分定義: 提出状況
 * 
 * @version 1.0
 * @author test
 */
public enum SubmitStatus implements KbnEnumBase {

	/** 未提出 */
	NotYet("未提出","未","0"),
	/** 提出済 */
	Done("提出済","済","1"),
	/** 不明 */
	Unknown("不明","？","9");

	/** 名称 */
	private String name;

	/** 短縮名称 */
	private String shortName;

	/** 値 */
	private String value;

	/** 値マップ */
	private final static Map<String, SubmitStatus> valueMap;

	/** 初期化 */
	static {
		Map<String, SubmitStatus> map = new HashMap<>();
		for (SubmitStatus e : values()) {
			map.put(e.getValue(), e);
		}
		valueMap = Collections.unmodifiableMap(map);
	}

	/** コンストラクタ */
	private SubmitStatus(String name, String shortName, String value) {
		this.name = name;
		this.shortName = shortName;
		this.value = value;
	}

	@Override
	public String getName() {
		return this.name;
	}

	@Override
	public String getShortName() {
		return this.shortName;
	}

	@Override
	public String getValue() {
		return this.value;
	}

	/**
	 * 区分値から列挙体を取得する。
	 * 
	 * @param value 区分値
	 * @return 対応する列挙体が存在する場合はその列挙体、存在しない場合はnull
	 */
	public static SubmitStatus decode(String value) {
		return value != null && valueMap.containsKey(value) ? valueMap.get(value) : null;
	}

}


