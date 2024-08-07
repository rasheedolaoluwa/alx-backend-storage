-- Stored procedure to compute and store a student's average score.
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calculate the average score.
    SET avg_score = (SELECT AVG(score) FROM corrections WHERE user_id = user_id);

    -- Update the user's average score.
    UPDATE users SET average_score = avg_score WHERE id = user_id;
END
$$

DELIMITER ;
