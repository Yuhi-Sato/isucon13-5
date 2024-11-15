SELECT * FROM tags
SELECT id FROM users WHERE name = ?
SELECT * FROM themes WHERE user_id = ?
SELECT * FROM reactions WHERE livestream_id = ? ORDER BY created_at DESC
SELECT * FROM users WHERE id = ?
SELECT * FROM livestreams WHERE id = ?
SELECT IFNULL(SUM(tip), 0) FROM livecomments
SELECT * FROM livecomments WHERE livestream_id = ? ORDER BY created_at DESC
SELECT * FROM ng_words WHERE user_id = ? AND livestream_id = ? ORDER BY created_at DESC
SELECT * FROM livestreams WHERE id = ?
SELECT id, user_id, livestream_id, word FROM ng_words WHERE user_id = ? AND livestream_id = ?
SELECT * FROM livestreams WHERE id = ?
SELECT * FROM livecomments WHERE id = ?
SELECT id FROM livestreams WHERE id = ? AND user_id = ?
SELECT l.id FROM livecomments l WHERE l.livestream_id = ? AND l.comment LIKE CONCAT('%', ?, '%')
SELECT * FROM ng_words WHERE livestream_id = ?
SELECT * FROM livecomments
SELECT * FROM users WHERE id = ?
SELECT * FROM livestreams WHERE id = ?
SELECT * FROM users WHERE id = ?
SELECT * FROM livecomments WHERE id = ?
SELECT id FROM users WHERE name = ?
SELECT icon_hash FROM icons WHERE user_id = ?
SELECT image FROM icons WHERE user_id = ?
SELECT * FROM users WHERE id = ?
SELECT * FROM users WHERE name = ?
SELECT * FROM users WHERE name = ?
SELECT * FROM themes WHERE user_id = ?
SELECT icon_hash FROM icons WHERE user_id = ?
SELECT * FROM reservation_slots WHERE start_at >= ? AND end_at <= ? FOR UPDATE
SELECT slot FROM reservation_slots WHERE start_at = ? AND end_at = ?
SELECT id FROM tags WHERE name = ?
SELECT * FROM livestream_tags WHERE tag_id IN (?) ORDER BY livestream_id DESC
SELECT * FROM livestreams WHERE id = ?
SELECT * FROM livestreams WHERE user_id = ?
SELECT * FROM users WHERE name = ?
SELECT * FROM livestreams WHERE user_id = ?
SELECT * FROM livestreams WHERE id = ?
SELECT * FROM livestreams WHERE id = ?
SELECT * FROM livecomment_reports WHERE livestream_id = ?
SELECT * FROM users WHERE id = ?
SELECT * FROM livestream_tags WHERE livestream_id = ?
SELECT * FROM tags WHERE id = ?
SELECT * FROM users WHERE name = ?
SELECT u.name AS user_name, (COUNT(r.id) + IFNULL(SUM(l.tip), 0)) AS score FROM users AS u LEFT JOIN reactions r ON r.user_id = u.id LEFT JOIN livecomments l ON l.user_id = u.id GROUP BY u.name
SELECT * FROM livestreams WHERE user_id = ?
SELECT * FROM livecomments WHERE livestream_id = ?
SELECT COUNT(*) FROM livestream_viewers_history WHERE livestream_id = ?
SELECT * FROM livestreams WHERE id = ?
SELECT * FROM livestreams
SELECT COUNT(*) FROM livestreams l INNER JOIN reactions r ON l.id = r.livestream_id WHERE l.id = ?
SELECT IFNULL(SUM(l2.tip), 0) FROM livestreams l INNER JOIN livecomments l2 ON l.id = l2.livestream_id WHERE l.id = ?
SELECT COUNT(*) FROM livestreams l INNER JOIN reactions r ON r.livestream_id = l.id WHERE l.id = ?
SELECT * FROM tags
SELECT * FROM themes

----------------------------------------- back quote queries -----------------------------------------
		SELECT COUNT(*)
		FROM
		(SELECT ? AS text) AS texts
		INNER JOIN
		(SELECT CONCAT('%', ?, '%')	AS pattern) AS patterns
		ON texts.text LIKE patterns.pattern;
	// 		(SELECT COUNT(*)
	// 		FROM
	// 		(SELECT ? AS text) AS texts
	// 		INNER JOIN
	// 		(SELECT CONCAT('%', ?, '%')	AS pattern) AS patterns
	// 		ON texts.text LIKE patterns.pattern) >= 1;
	// 	SELECT COUNT(u.id) FROM users u
	// 	INNER JOIN reactions r ON r.user_id = u.id
	// 	SELECT IFNULL(SUM(l.tip), 0) FROM users u
	// 	INNER JOIN livecomments l ON l.user_id = u.id
	query := `SELECT COUNT(*) FROM users u 
    INNER JOIN livestreams l ON l.user_id = u.id 
    INNER JOIN reactions r ON r.livestream_id = l.id
    WHERE u.name = ?
	SELECT r.emoji_name
	FROM users u
	INNER JOIN livestreams l ON l.user_id = u.id
	INNER JOIN reactions r ON r.livestream_id = l.id
	WHERE u.name = ?
	GROUP BY emoji_name
	ORDER BY COUNT(*) DESC, emoji_name DESC
	LIMIT 1
