DELETE FROM icons WHERE user_id = ?
DELETE FROM livestream_viewers_history WHERE user_id = ? AND livestream_id = ?

----------------------------------------- back quote queries -----------------------------------------
			DELETE FROM livecomments
			WHERE
			id = ? AND
			livestream_id = ? AND
			(SELECT COUNT(*)
			FROM
			(SELECT ? AS text) AS texts
			INNER JOIN
			(SELECT CONCAT('%', ?, '%')	AS pattern) AS patterns
			ON texts.text LIKE patterns.pattern) >= 1;
