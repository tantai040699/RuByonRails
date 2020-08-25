
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

#-----------------Review Code Aug 24 2020 ----------------
###### app/controllers/albums_controller.rb
  1. before_action :find_id_album, only: [:show,:edit, :update, :destory]. Remove action nếu không sử dụng
  2. Remove action def destroy rổng
  3. def edit nếu chỉ cần render view. Thì không cần add action rổng này.
  4. @album.update(params_update). check lại action update. undefine method params_update
  5. @album.update_attribute(:collection,1) magic number
  6. chưa sử dụng i18n

###### app/controllers/photos_controller.rb
  1. biến photo trong index nên đặt là số nhiều
  2. remove action rỗng show, edit
  3. thay đổi flash type(error || danger) nếu create photo failed.
###### app/controllers/profiles_controller.rb
  1.biến photo trong index nên đặt là số nhiều


###### app/controllers/follows_controller.rb
  1. Add 1 line trống sau mỗi action
  2. Gặp lỗi nếu user chưa đăng nhập


###### app/views/albums/show.html.erb
  1. line 1  dổi thành biến số nhiều
  2. line 12, 13 sai thứ tự đóng mở div vs đóng mở hàm

###### app/views/albums/new.html.erb
  1. Chưa xài I18n

###### app/views/albums/index.html.erb
  1. Thiếu Album publication date.
  2. Hạn chế dùng style css inline

###### app/views/follows/show_follower.html.erb
  1. coi lại cách đặt tên biến.. biến list nên dùng số nhiều

###### app/views/follows/show_following.html.erb
  1. coi lại cách đặt tên biến.. biến list nên dùng số nhiều

###### app/views/photos/index.html.erb
  1. Thiếu Photo publication date.
  2. Hạn chế dùng style css inline
  3. biến list nên là số nhìu

###### app/views/photos/show.html.erb
  1. Hạn chế dùng style css inline
  2. Chưa thấy load info gì trong view

###### app/views/profiles/index.html.erb
  1. biến list nên là số nhìu