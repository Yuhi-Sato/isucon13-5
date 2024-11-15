INSERT INTO reactions (user_id, livestream_id, emoji_name, created_at) VALUES (:user_id, :livestream_id, :emoji_name, :created_at)
INSERT INTO livecomments (user_id, livestream_id, comment, tip, created_at) VALUES (:user_id, :livestream_id, :comment, :tip, :created_at)
INSERT INTO livecomment_reports(user_id, livestream_id, livecomment_id, created_at) VALUES (:user_id, :livestream_id, :livecomment_id, :created_at)
INSERT INTO ng_words(user_id, livestream_id, word, created_at) VALUES (:user_id, :livestream_id, :word, :created_at)
INSERT INTO users (name, display_name, description, password) VALUES(:name, :display_name, :description, :password)
INSERT INTO themes (user_id, dark_mode) VALUES(:user_id, :dark_mode)
INSERT INTO livestreams (user_id, title, description, playlist_url, thumbnail_url, start_at, end_at) VALUES(:user_id, :title, :description, :playlist_url, :thumbnail_url, :start_at, :end_at)
INSERT INTO livestream_tags (livestream_id, tag_id) VALUES (:livestream_id, :tag_id)
INSERT INTO livestream_viewers_history (user_id, livestream_id, created_at) VALUES(:user_id, :livestream_id, :created_at)

----------------------------------------- back quote queries -----------------------------------------
