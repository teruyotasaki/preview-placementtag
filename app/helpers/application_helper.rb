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

  end
end
