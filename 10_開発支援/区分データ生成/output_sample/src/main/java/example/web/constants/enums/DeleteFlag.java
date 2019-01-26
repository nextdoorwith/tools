package example.web.constants.enums;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import example.web.constants.KbnEnumBase;

/**
 * 区分定義: 削除フラグ
 * 
 * @version 1.0
 * @author test
 */
public enum DeleteFlag implements KbnEnumBase {

	/** 無効 */
	Invalid("無効",null,"0"),
	/** 有効 */
	Valid("有効",null,"1");

	/** 名称 */
	private String name;

	/** 短縮名称 */
	private String shortName;

	/** 値 */
	private String value;

	/** 値マップ */
	private final static Map<String, DeleteFlag> valueMap;

	/** 初期化 */
	static {
		Map<String, DeleteFlag> map = new HashMap<>();
		for (DeleteFlag e : values()) {
			map.put(e.getValue(), e);
		}
		valueMap = Collections.unmodifiableMap(map);
	}

	/** コンストラクタ */
	private DeleteFlag(String name, String shortName, String value) {
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
	public static DeleteFlag decode(String value) {
		return value != null && valueMap.containsKey(value) ? valueMap.get(value) : null;
	}

}


