package example.web.constants;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import example.web.constants.KbnEnumBase;

/**
 * 区分定義
 * 
 * @version 1.0
 * @author test
 */
public class KbnEnums {

	/**
	 * 区分定義: ユーザ種別
	 * 
	 * @version 1.0
	 * @author test
	 */
	public enum UserType implements KbnEnumBase {

		/** 管理者 */
		Admin("管理者",null,"10"),
		/** 一般 */
		Normal("一般",null,"01"),
		/** 一般代理 */
		Agent("一般代理",null,"09");

		/** 名称 */
		private String name;

		/** 短縮名称 */
		private String shortName;

		/** 値 */
		private String value;

		/** 値マップ */
		private final static Map<String, UserType> valueMap;

		/** 初期化 */
		static {
			Map<String, UserType> map = new HashMap<>();
			for (UserType e : values()) {
				map.put(e.getValue(), e);
			}
			valueMap = Collections.unmodifiableMap(map);
		}

		/** コンストラクタ */
		private UserType(String name, String shortName, String value) {
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
		public static ユーザ種別 decode(String value) {
			return value != null && valueMap.containsKey(value) ? valueMap.get(value) : null;
		}

	}

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
		public static 削除フラグ decode(String value) {
			return value != null && valueMap.containsKey(value) ? valueMap.get(value) : null;
		}

	}

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
		public static 提出状況 decode(String value) {
			return value != null && valueMap.containsKey(value) ? valueMap.get(value) : null;
		}

	}

}

