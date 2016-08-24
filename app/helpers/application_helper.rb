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

  begin
    headers, *lines = CSV.read(file.path,  {encoding: "Shift_JIS:UTF-8", undef: :replace, replace: "*",:row_sep => :auto})
    return headers,lines
  rescue => e
    headers, *lines = CSV.read(file.path,  {encoding: "Shift_JIS:UTF-8", undef: :replace, replace: "*",:row_sep => "\r\n"})
    return headers,lines
  end

#    newarray = Array.new
    # Shift-JISなCSVを読み込む・書き出しするときにエラーを起こさない数少ない方法
    # http://qiita.com/yuuna/items/7e4e06a1b881d85697e9
#    CSV.foreach(file.path,  {encoding: "Shift_JIS:UTF-8", undef: :replace, replace: "*", headers: true}) do |row|
#      #puts row.length
##      newarray.push(row)
##      line = row.split(",")
#      row.each do |key,value|
#        if key == "Placement Tag"
##puts value
##          value = value.gsub(/^\"/, "")
##          value = value.gsub(/\"\"/,"\"")
##          value = value.gsub(/\"$/,"")
#        end
#        row[key] = value
##        #newarray.push(row)
#      end
#      newarray.push(row)
#
#    end
#
#    return newarray
  end
end
