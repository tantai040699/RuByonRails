
###### controllers/albums_controller.rb
  1. Thiếu query chi load những album public trong action index
  2. Sử dụng before_action trong controllers để fetch album cho action edit, update

###### app/controllers/photos_controller.rb
  1. Thiếu query chi load những photos public trong action index

###### app/views/photos/index.html.erb
  1. Hạn chế dùng style css inline
  2. Tìm cách khắc phục photo.user (N+1 query)
  3. Thiếu Photo / Album publication date.
  4. Check lại js show modal
  5. line 13, 14 chua xài đúng bootstrap

###### app/views/albums/index.html.erb
  1. Hạn chế dùng style css inline
  2. Tìm cách khắc phục album.user (N+1 query)
  3. Thiếu Photo / Album publication date.
  4. Check lại js show modal
  5. line 12, 13 chua xài đúng bootstrap
