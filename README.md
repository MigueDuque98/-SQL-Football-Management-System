# SQL Football Management System

This project implements a relational database for managing teams, players,
matches, and player statistics. It includes full table definitions, primary and
foreign keys, sample data inserts, and working relationships between all
entities.

## 📘 Features
- 4-table relational schema (teams, players, matches, playerstats)
- MySQL Workbench–compatible SQL
- Foreign key relationships between teams, players, and matches
- Sample data inserts for testing
- Player statistics linked to match records

## 📂 Tables Included
- teams: team info (name, city, coach, founded year)
- player: roster with positions, jersey numbers, ages
- matches: home/away teams, stadium, date
- playerstats: goals, assists, cards per match

## ▶️ Example Insert
```sql
INSERT INTO playerstats (MatchID, PayerID, Goals, Assists, YellowCards, RedCards)
VALUES (2, 2, 2, 1, 0, 0);
