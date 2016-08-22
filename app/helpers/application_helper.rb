module ApplicationHelper

  # ページごとの完全なタイトルを返す
  def full_title(page_title = '')
    base_title = "Preview Placementtag"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def csv_split(file)
    newarray = Array.new

    # Shift-JISなCSVを読み込む・書き出しするときにエラーを起こさない数少ない方法
    # http://qiita.com/yuuna/items/7e4e06a1b881d85697e9
    CSV.foreach(file.path,  {encoding: "Shift_JIS:UTF-8", undef: :replace, replace: "*", headers: true}) do |row|
      newarray.push(row)



  
#      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
#      product = find_by(id: row["id"]) || new
#      # CSVからデータを取得し、設定する
#      product.attributes = row.to_hash.slice(*updatable_attributes)
#      # 保存する
#      product.save!
    end

    return newarray
  end
end
