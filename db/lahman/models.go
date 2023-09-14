// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.21.0

package lahman

import (
	"database/sql"
)

type LBatting struct {
	ID        int32
	Year      int16
	League    sql.NullString
	GCnt      sql.NullInt16
	AbCnt     sql.NullInt16
	RCnt      sql.NullInt16
	HCnt      sql.NullInt16
	DoubleCnt sql.NullInt16
	TripleCnt sql.NullInt16
	HrCnt     sql.NullInt16
	RbiCnt    sql.NullInt16
	SbCnt     sql.NullInt16
	CsCnt     sql.NullInt16
	BbCnt     sql.NullInt16
	SoCnt     sql.NullInt16
	IbbCnt    sql.NullInt16
	SfCnt     sql.NullInt16
	ShCnt     sql.NullInt16
	GidpCnt   sql.NullInt16
	Player    string
	Team      int32
}

type LFranchise struct {
	ID     string
	Name   sql.NullString
	Active bool
}

type LPitching struct {
	ID      int32
	Year    int16
	League  sql.NullString
	WCnt    sql.NullInt16
	LCnt    sql.NullInt16
	GCnt    sql.NullInt16
	GsCnt   sql.NullInt16
	CgCnt   sql.NullInt16
	ShoCnt  sql.NullInt16
	SvCnt   sql.NullInt16
	IpCnt   sql.NullInt16
	HCnt    sql.NullInt16
	ErCnt   sql.NullInt16
	HrCnt   sql.NullInt16
	BbCnt   sql.NullInt16
	SoCnt   sql.NullInt16
	BaOpp   sql.NullFloat64
	Era     sql.NullFloat64
	IbbCnt  sql.NullInt16
	WpCnt   sql.NullInt16
	HbpCnt  sql.NullInt16
	BkCnt   sql.NullInt16
	BfpCnt  sql.NullInt16
	GfCnt   sql.NullInt16
	RCnt    sql.NullInt16
	ShCnt   sql.NullInt16
	SfCnt   sql.NullInt16
	GidpCnt sql.NullInt16
	Player  string
	Team    int32
}

type LPlayer struct {
	ID            string
	FirstName     string
	LastName      string
	GivenName     string
	BirthYear     sql.NullInt16
	BirthMonth    sql.NullInt16
	BirthDay      sql.NullInt16
	BirthCountry  sql.NullString
	BirthState    sql.NullString
	BirthCity     sql.NullString
	DeathYear     sql.NullInt16
	DeathMonth    sql.NullInt16
	DeathDay      sql.NullInt16
	DeathCountry  sql.NullString
	DeathState    sql.NullString
	DeathCity     sql.NullString
	Height        sql.NullFloat64
	Weight        sql.NullFloat64
	BatHand       string
	ThrowHand     string
	DebutDate     sql.NullTime
	FinalGameDate sql.NullTime
	Bbref         sql.NullString
	Retrosheet    sql.NullString
}

type LTeam struct {
	ID          int32
	Year        sql.NullInt16
	Team        string
	League      sql.NullString
	Division    sql.NullString
	Rank        sql.NullInt16
	GameCnt     sql.NullInt16
	HomeGameCnt sql.NullInt16
	WCnt        sql.NullInt16
	LCnt        sql.NullInt16
	DsWin       sql.NullBool
	WcWin       sql.NullBool
	LgWin       sql.NullBool
	WsWin       sql.NullBool
	RCnt        sql.NullInt16
	AbCnt       sql.NullInt16
	HCnt        sql.NullInt16
	DoubleCnt   sql.NullInt16
	TripleCnt   sql.NullInt16
	HrCnt       sql.NullInt16
	BbCnt       sql.NullInt16
	SoCnt       sql.NullInt16
	SbCnt       sql.NullInt16
	CsCnt       sql.NullInt16
	HbpCnt      sql.NullInt16
	SfCnt       sql.NullInt16
	RaCnt       sql.NullInt16
	ErCnt       sql.NullInt16
	Era         sql.NullFloat64
	CgCnt       sql.NullInt16
	ShoCnt      sql.NullInt16
	SvCnt       sql.NullInt16
	IpCnt       sql.NullInt16
	HaCnt       sql.NullInt16
	HraCnt      sql.NullInt16
	BbaCnt      sql.NullInt16
	SoaCnt      sql.NullInt16
	ECnt        sql.NullInt16
	Franchise   sql.NullString
}
