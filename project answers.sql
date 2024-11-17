use social_media;
-- QUESTION  1 
-- Identify Users by Location

SELECT Post.post_id, Post.location, Post.user_id, Users.username, Users.user_id FROM Post
JOIN Users ON Post.user_id = Users.user_id
WHERE post.location IS NOT NULL; 
-- QUESTION 2 
-- Determine the Most Followed Hashtags

SELECT hashtags.hashtag_name,hashtags.hashtag_id,count(hashtag_follow.user_id) as total_follow
 FROM Hashtags JOIN 
Hashtag_Follow ON hashtags.hashtag_id = hashtag_follow.hashtag_id
GROUP BY hashtags.hashtag_id, hashtags.hashtag_name

order by total_follow desc;

-- QUESTION 3
-- Find the Most Used Hashtags
select post_tags.post_id,hashtags.hashtag_id from hashtags join post_tags
on post_tags.hashtag_id = hashtags.hashtag_id;

 
    
