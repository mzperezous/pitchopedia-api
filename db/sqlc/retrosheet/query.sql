-- name: GetEventById :one
SELECT * FROM rs_game_event
WHERE id = $1;

-- name: GetPlayerById :one
SELECT * FROM rs_player
WHERE id = $1;

-- name: GetTeamById :one
SELECT * FROM rs_team
WHERE id = $1;

-- name: GetRosterById :one
SELECT * FROM rs_roster
WHERE id = $1;

-- name: GetBallparkById :one
SELECT * FROM rs_ballpark
WHERE id = $1;