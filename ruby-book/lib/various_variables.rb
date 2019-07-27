class Product
	# クラスインスタンス変数
	# Productオブジェクトとは無関係のProductクラス内で保持しているデータ
	# Productクラス配下のメソッド内部からアクセス出来る
  @name = 'Product'

	def self.name
		# self.name <= Productクラスのnameメソッド
		# ここではクラスインスタンス変数のnameを返す
	  @name
  end

	def initialize(name)
		# インスタンス変数
		# Productクラスから作成されたオブジェクト（インスタンス）毎に保持しているデータ
		# オブジェクトを操作することでアクセス出来る
	  @name = name
  end

	def name
		# オブジェクトから呼び出し可能なメソッド
		# 各オブジェクト毎に保存した変数のnameを返す
	  @name
	end
end
