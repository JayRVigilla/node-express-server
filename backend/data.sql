-- DROP DATABASE IF EXISTS "DATABASE_NAME";

CREATE DATABASE "DATABASE_NAME";

\c "DATABASE_NAME"

-- SQL examples for creating Tables
CREATE TABLE posts (id SERIAL PRIMARY KEY,
                    title TEXT NOT NULL,
                    description TEXT NOT NULL,
                    body TEXT,
                    img TEXT,
                    votes INT NOT NULL DEFAULT 0);

CREATE TABLE comments (id SERIAL PRIMARY KEY,
                       text TEXT NOT NULL,
                       post_id INT NOT NULL REFERENCES posts ON DELETE CASCADE);

INSERT INTO posts (title, description, body, img) VALUES
    ('Your Love Keeps Lifting Me','Once, I was down hearted. Disappointment was my closest friend',	'Your love, lifting me higher Than I''ve ever, been lifted before So keep it it up Quench my desire And I''ll be at your side Forever more  You know your love (your love keeps lifting me) Keep on lifting (love keeps lifting me) Higher (lifting me) Higher and higher (higher) I said your love (your love keeps lifting me) Keep on (love keeps lifting me) Lifting me (lifting me) Higher and higher (higher)  Listen Now once I was down hearted Disappointment was my closest friend But then you came and it soon departed And you know he never Showed his face again  That''s why your love (your love keeps lifting me) Keep on lifting me (love keeps lifting me) Higher (lifting me) Higher and higher (higher) I said your love (your love keeps lifting me) Keep on (love keeps lifting me) Lifting me (lifting me) Higher and higher (higher)  I''m so glad, I finally found you Yes, that one in a million girl And now with my loving arms around you Honey, I can stand up And face the world  Let me tell you, your love (your love keeps lifting me) Keep on lifting me (love keeps lifting me) Higher (lifting me) Higher and higher (higher) I said your love (your love keeps lifting me) Keep on (love keeps lifting me) Lifting me (lifting me) Higher and higher (higher)  Alright, now sock it to me (lifting, lifting, lifting) Alright, lift me up woman (your love keeps lifting me) Keep my love going, now (lifting me) Higher and higher I said keep on lifting (lifting, lifting,lifting) Lift me up mama (your love keeps lifting me) Keep on lifting (lifting me) Higher and higher',	'https://images.unsplash.com/photo-1523961738618-3c1dde78b4c6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1872&q=80'),
    ('Proud father', 'Thoughts for my daughter', 'My daughter is nearly two years old. Our puppy is seven months old. The two of them love each other dearly, but just as often as you''ll find them napping next to each other, you''ll find them chasing after each other. This was one of their nicer moments. The baby was watching nursery rhymes on YouTube whilst her canine brother kept her company', 'https://images.unsplash.com/photo-1552404476-4afe6f656219?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80');

INSERT INTO comments (text, post_id) VALUES
    ('This is a really great post.', 1),
    ('I learned so much reading this.', 1);