desc "Reset website"
task reset_website: :environment do
  Spina::Page.where.not(id: 1).destroy_all
  Spina::PagePart.destroy_all
  Spina::Text.destroy_all
  Spina::Line.destroy_all
  Spina::Photo.destroy_all
  Spina::Attachment.destroy_all
  Spina::Account.first.save
end