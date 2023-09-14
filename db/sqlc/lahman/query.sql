-- name: GetBattingSeasonById :one
SELECT * FROM l_batting
WHERE id = $1;

-- name: GetPitchingSeasonById :one
SELECT * FROM l_pitching
WHERE id = $1;

-- name: GetPlayerById :one
SELECT * from l_player
WHERE id = $1;

-- name: GetTeamById :one
SELECT * from l_team
WHERE id = $1;

-- name: GetFranchiseByName :one
SELECT * FROM l_franchise
WHERE name = $1;
