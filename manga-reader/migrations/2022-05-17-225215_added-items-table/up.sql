CREATE SCHEMA IF NOT EXISTS mangabase;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TYPE mangabase.item_type AS ENUM ('MANGA', 'ANIME', 'NOVEL');
CREATE TYPE mangabase.read_status AS ENUM ('INITIATE', 'DONE', 'UNREAD', 'WANTING');

CREATE TABLE IF NOT EXISTS mangabase.items(
  item_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  item_type mangabase.item_type NOT NULL,
  chapter_amount INT NULL,
  rate FLOAT DEFAULT 0.0,
  read_status mangabase.read_status DEFAULT 'UNREAD'
);