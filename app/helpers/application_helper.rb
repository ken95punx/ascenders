module ApplicationHelper
  def full_title(page_title)
    base_title = "Ascenders（アセンダーズ）"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def full_description(page_description)
    base_description = "Ascenders（アセンダーズ）は、ネット上のアスリートの情報を集約しています。アスリートを検索して動画・記事・プロフィール・交友関係などチェック。今後追加機能としてマイタイムラインにフォローした選手の情報が流れるような機能の追加も予定しています。"
    if page_description.empty?
      base_description
    else
      "#{page_description}#{base_description}"
    end
  end

  def full_og_type(og_type)
    base_og_type = "article"

    if og_type.empty?
      base_og_type
    else
      "#{og_type}"
    end
  end

  def full_og_url(og_url)
    base_og_url = "https://ascenders.co.jp/"

    if og_url.empty?
      base_og_url
    else
      "#{base_og_url}#{og_url}"
    end
  end
end