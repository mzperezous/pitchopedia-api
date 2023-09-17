-- rs_game_event: Retrosheet game event
CREATE TABLE rs_game_event
(
    id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    game_id character varying(12) COLLATE pg_catalog."default" NOT NULL,
    inn_ct smallint NOT NULL,
    outs_ct smallint NOT NULL,
    balls_ct smallint NOT NULL,
    strikes_ct smallint NOT NULL,
    away_score_ct smallint NOT NULL,
    home_score_ct smallint NOT NULL,
    event_tx text COLLATE pg_catalog."default",
    leadoff_fl boolean NOT NULL,
    ph_fl boolean NOT NULL,
    bat_fld_cd smallint NOT NULL,
    bat_lineup_spot smallint NOT NULL,
    bat_event_fl boolean NOT NULL,
    h_cd smallint,
    sh_fl boolean NOT NULL,
    sf_fl boolean NOT NULL,
    event_outs_ct smallint NOT NULL,
    dp_fl boolean NOT NULL,
    tp_fl boolean NOT NULL,
    rbi_ct smallint NOT NULL,
    wp_fl boolean NOT NULL,
    pb_fl boolean NOT NULL,
    fld_cd smallint,
    battedball_cd character varying(1) COLLATE pg_catalog."default",
    bunt_fl boolean NOT NULL,
    foul_fl boolean NOT NULL,
    battedball_loc_tx character varying(255) COLLATE pg_catalog."default",
    err_ct smallint NOT NULL,
    err_fld_cds character varying(1)[] COLLATE pg_catalog."default",
    err_cds character varying(1)[] COLLATE pg_catalog."default",
    bat_dest_loc smallint NOT NULL,
    run1_dest_loc smallint NOT NULL,
    run2_dest_loc smallint NOT NULL,
    run3_dest_loc smallint NOT NULL,
    bat_play_tx text COLLATE pg_catalog."default",
    run1_play_tx text COLLATE pg_catalog."default",
    run2_play_tx text COLLATE pg_catalog."default",
    run3_play_tx text COLLATE pg_catalog."default",
    run1_sb_fl boolean NOT NULL,
    run2_sb_fl boolean NOT NULL,
    run3_sb_fl boolean NOT NULL,
    run1_cs_fl boolean NOT NULL,
    run2_cs_fl boolean NOT NULL,
    run3_cs_fl boolean NOT NULL,
    run1_pk_fl boolean NOT NULL,
    run2_pk_fl boolean NOT NULL,
    run3_pk_fl boolean NOT NULL,
    game_new_fl boolean NOT NULL,
    game_end_fl boolean NOT NULL,
    pr_run1_fl boolean NOT NULL,
    pr_run2_fl boolean NOT NULL,
    pr_run3_fl boolean NOT NULL,
    removed_for_ph_bat_fld_cd smallint,
    po_fld_cds smallint[],
    ass_fld_cds smallint[],
    away_team_id character varying(7) COLLATE pg_catalog."default",
    base1_run_id character varying(8) COLLATE pg_catalog."default",
    base2_run_id character varying(8) COLLATE pg_catalog."default",
    base3_run_id character varying(8) COLLATE pg_catalog."default",
    bat_team_id character varying(7) COLLATE pg_catalog."default",
    bat_id character varying(8) COLLATE pg_catalog."default",
    home_team_id character varying(7) COLLATE pg_catalog."default",
    pit_id character varying(8) COLLATE pg_catalog."default",
    pos2_fld_id character varying(8) COLLATE pg_catalog."default",
    pos3_fld_id character varying(8) COLLATE pg_catalog."default",
    pos4_fld_id character varying(8) COLLATE pg_catalog."default",
    pos5_fld_id character varying(8) COLLATE pg_catalog."default",
    pos6_fld_id character varying(8) COLLATE pg_catalog."default",
    pos7_fld_id character varying(8) COLLATE pg_catalog."default",
    pos8_fld_id character varying(8) COLLATE pg_catalog."default",
    pos9_fld_id character varying(8) COLLATE pg_catalog."default",
    removed_for_ph_bat_id character varying(8) COLLATE pg_catalog."default",
    removed_for_pr_run1_id character varying(8) COLLATE pg_catalog."default",
    removed_for_pr_run2_id character varying(8) COLLATE pg_catalog."default",
    removed_for_pr_run3_id character varying(8) COLLATE pg_catalog."default",
    run1_resp_pit_id character varying(8) COLLATE pg_catalog."default",
    run2_resp_pit_id character varying(8) COLLATE pg_catalog."default",
    run3_resp_pit_id character varying(8) COLLATE pg_catalog."default",
    year smallint NOT NULL,
    day smallint NOT NULL,
    month smallint NOT NULL,
    CONSTRAINT game_event_gameevent_pkey PRIMARY KEY (id),
    CONSTRAINT rs_game_event_away_team_id_4d9e450b_fk_rs_team_id FOREIGN KEY (away_team_id)
        REFERENCES public.rs_team (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_base1_run_id_b6e5dc85_fk_rs_player_id FOREIGN KEY (base1_run_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_base2_run_id_c61d09f8_fk_rs_player_id FOREIGN KEY (base2_run_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_base3_run_id_774fb763_fk_rs_player_id FOREIGN KEY (base3_run_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_bat_id_6dddaa07_fk_rs_player_id FOREIGN KEY (bat_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_bat_team_id_454e9e71_fk_rs_team_id FOREIGN KEY (bat_team_id)
        REFERENCES public.rs_team (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_home_team_id_a614e269_fk_rs_team_id FOREIGN KEY (home_team_id)
        REFERENCES public.rs_team (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pit_id_be75bcee_fk_rs_player_id FOREIGN KEY (pit_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos2_fld_id_fee4aecd_fk_rs_player_id FOREIGN KEY (pos2_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos3_fld_id_3cf01fbe_fk_rs_player_id FOREIGN KEY (pos3_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos4_fld_id_e627babc_fk_rs_player_id FOREIGN KEY (pos4_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos5_fld_id_324639a1_fk_rs_player_id FOREIGN KEY (pos5_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos6_fld_id_6356cb13_fk_rs_player_id FOREIGN KEY (pos6_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos7_fld_id_e5054e41_fk_rs_player_id FOREIGN KEY (pos7_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos8_fld_id_8a650da2_fk_rs_player_id FOREIGN KEY (pos8_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_pos9_fld_id_970ae3b8_fk_rs_player_id FOREIGN KEY (pos9_fld_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_removed_for_ph_bat_id_768fe5bf_fk_rs_player_id FOREIGN KEY (removed_for_ph_bat_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_removed_for_pr_run1_id_6743fbf4_fk_rs_player_id FOREIGN KEY (removed_for_pr_run1_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_removed_for_pr_run2_id_416eb7a8_fk_rs_player_id FOREIGN KEY (removed_for_pr_run2_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_removed_for_pr_run3_id_5565cd82_fk_rs_player_id FOREIGN KEY (removed_for_pr_run3_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_run1_resp_pit_id_429edc6a_fk_rs_player_id FOREIGN KEY (run1_resp_pit_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_run2_resp_pit_id_ac13a67c_fk_rs_player_id FOREIGN KEY (run2_resp_pit_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_game_event_run3_resp_pit_id_809fdb6b_fk_rs_player_id FOREIGN KEY (run3_resp_pit_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT game_event_gameevent_away_score_ct_check CHECK (away_score_ct >= 0),
    CONSTRAINT game_event_gameevent_balls_ct_check CHECK (balls_ct >= 0),
    CONSTRAINT game_event_gameevent_bat_fld_cd_check CHECK (bat_fld_cd >= 0),
    CONSTRAINT game_event_gameevent_bat_lineup_spot_78d56182_check CHECK (bat_lineup_spot >= 0),
    CONSTRAINT game_event_gameevent_home_score_ct_check CHECK (home_score_ct >= 0),
    CONSTRAINT game_event_gameevent_inn_ct_fd3c571a_check CHECK (inn_ct >= 0),
    CONSTRAINT game_event_gameevent_strikes_ct_check CHECK (strikes_ct >= 0)
);

-- rs_player: Retrosheet player entity metadata
CREATE TABLE rs_player
(
    id character varying(8) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    nickname character varying(255) COLLATE pg_catalog."default",
    birthdate date,
    debut_date date,
    last_game_date date,
    CONSTRAINT player_player_pkey PRIMARY KEY (id)
);

-- rs_team: Retrosheet team entity metadata
CREATE TABLE rs_team
(
    id character varying(7) COLLATE pg_catalog."default" NOT NULL,
    league_id character varying(2) COLLATE pg_catalog."default",
    city character varying(255) COLLATE pg_catalog."default" NOT NULL,
    nickname character varying(255) COLLATE pg_catalog."default" NOT NULL,
    end_year smallint NOT NULL,
    start_year smallint NOT NULL,
    CONSTRAINT team_team_pkey PRIMARY KEY (id)
);

-- rs_roster: Retrosheet player to team mapping, year by year
CREATE TABLE rs_roster
(
    id uuid NOT NULL,
    year smallint NOT NULL,
    team_id character varying(7) COLLATE pg_catalog."default",
    player_id character varying(8) COLLATE pg_catalog."default",
    bat_hand character varying(1) COLLATE pg_catalog."default" NOT NULL,
    "position" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    throw_hand character varying(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT roster_roster_pkey PRIMARY KEY (id),
    CONSTRAINT roster_roster_year_team_id_id_player_i_960d5e0b_uniq UNIQUE (year, team_id, player_id, "position"),
    CONSTRAINT rs_roster_player_id_6875a067_fk_rs_player_id FOREIGN KEY (player_id)
        REFERENCES public.rs_player (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rs_roster_team_id_7049972f_fk_rs_team_id FOREIGN KEY (team_id)
        REFERENCES public.rs_team (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT roster_roster_year_check CHECK (year >= 0)
);

-- rs_ballpark: Retrosheet ballpark entity metadata
CREATE TABLE rs_ballpark
(
    id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    nickname character varying(255) COLLATE pg_catalog."default",
    city character varying(255) COLLATE pg_catalog."default",
    state character varying(255) COLLATE pg_catalog."default",
    start_date date,
    end_date date,
    league_id character varying(2) COLLATE pg_catalog."default",
    CONSTRAINT ballpark_ballpark_pkey PRIMARY KEY (id)
);
