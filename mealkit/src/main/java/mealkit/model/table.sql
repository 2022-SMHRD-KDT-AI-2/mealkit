select * from user_tables;
drop table t_user_keyword;
select * from t_super_keyword;

alter table t_super_keyword modify k_super_name varchar2(50);

select table_name from user_tables;
commit;

select * from t_member;
select * from t_recipe;


select *
from user_constraints;

alter table t_recipe
drop constraint sys_c0033526;

insert into t_member
values(
	'sys', '1234', '1', '2022-03-08', '1', '1', '2022-03-08', '1'
);

INSERT INTO t_recipe
VALUES (1, 'r_name 1', 'r_content 1', 'sys', sysdate, 'r_img1 1', 'r_img2 1');


insert into T_RECIPE
values(
	t_recipe_SEQ.nextval, 'testName', 'testContent', 'sys', sysdate, 'testImage1', 'testImage2'
);

INSERT INTO t_material
VALUES (t_material_seq.nextval, 2, '���', 'mat_info 2', 1, 'mat_img 1');

INSERT INTO t_material
VALUES (t_material_seq.nextval, 2, '���', 'mat_info 2', 3, 'mat_img 1');

select * from t_recipe;

select * from t_material;

DROP SEQUENCE T_CMT_SEQ ;
DROP SEQUENCE T_COMMUNITY_SEQ ;
DROP SEQUENCE T_FAVORITE_SEQ ;
DROP SEQUENCE T_KEYWORD_SEQ ;
DROP SEQUENCE T_MATERIAL_SEQ ;
DROP SEQUENCE T_MEALKIT_SEQ ;
DROP SEQUENCE T_RECIPE_SEQ ;
DROP SEQUENCE T_RECOMMEND_SEQ ;
DROP SEQUENCE T_USER_KEYWORD_SEQ ;

drop table t_user_keyword
drop table t_recipe;
drop table t_keyword;
drop table t_community;
drop table t_mealkit;
drop table t_favorite;
drop table t_cmt;
drop table t_material;
drop table t_recommend;
drop table t_member_copy1;
drop table t_member_copy2;
drop table t_member;



-------------------------------------------------------------------------------------------


CREATE TABLE t_member
(
    m_id           VARCHAR2(20)     NOT NULL, 
    m_pw           VARCHAR2(20)     NOT NULL, 
    m_phone        VARCHAR2(20)     NOT NULL, 
    m_birthdate    DATE             NOT NULL, 
    m_addr         VARCHAR2(200)    NOT NULL, 
    m_email        VARCHAR2(50)     NOT NULL, 
    m_joindate     DATE             NOT NULL, 
    admin_yn       CHAR(1)          NOT NULL, 
     PRIMARY KEY (m_id)
)
;

COMMENT ON TABLE t_member IS 'ȸ�� ���̺�'
;

COMMENT ON COLUMN t_member.m_id IS 'ȸ�� ���̵�'
;

COMMENT ON COLUMN t_member.m_pw IS 'ȸ�� ��й�ȣ'
;

COMMENT ON COLUMN t_member.m_phone IS 'ȸ�� ����ó'
;

COMMENT ON COLUMN t_member.m_birthdate IS 'ȸ�� �������'
;

COMMENT ON COLUMN t_member.m_addr IS 'ȸ�� �ּ�'
;

COMMENT ON COLUMN t_member.m_email IS 'ȸ�� �̸���'
;

COMMENT ON COLUMN t_member.m_joindate IS 'ȸ�� ��������'
;

COMMENT ON COLUMN t_member.admin_yn IS '������ ����'
;



CREATE TABLE t_super_keyword
(
    k_super_seq     NUMBER(12, 0)    NOT NULL, 
    k_super_name    VARCHAR2(50)          NOT NULL, 
     PRIMARY KEY (k_super_seq)
)
;

COMMENT ON TABLE t_super_keyword IS '���� ���̺�1'
;

COMMENT ON COLUMN t_super_keyword.k_super_seq IS '����Ű���� ��ȣ'
;

COMMENT ON COLUMN t_super_keyword.k_super_name IS '����Ű���� ��'
;



CREATE TABLE t_recipe
(
    r_seq        NUMBER(12, 0)     NOT NULL, 
    r_name       VARCHAR2(20)      NOT NULL, 
    r_content    VARCHAR2(4000)    NOT NULL, 
    m_id         VARCHAR2(20)      NOT NULL, 
    r_date       DATE              NOT NULL, 
    r_img1       VARCHAR2(200)     , 
    r_img2       VARCHAR2(20)      , 
     PRIMARY KEY (r_seq)
)
;

CREATE SEQUENCE t_recipe_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_recipe_AI_TRG
BEFORE INSERT ON t_recipe 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_recipe_SEQ.NEXTVAL
    INTO :NEW.r_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_recipe_AI_TRG;
;

DROP SEQUENCE t_recipe_SEQ;
;

COMMENT ON TABLE t_recipe IS '������  ���̺�'
;

COMMENT ON COLUMN t_recipe.r_seq IS '������ ����'
;

COMMENT ON COLUMN t_recipe.r_name IS '������ ��'
;

COMMENT ON COLUMN t_recipe.r_content IS '������ ����'
;

COMMENT ON COLUMN t_recipe.m_id IS '������ �ۼ���'
;

COMMENT ON COLUMN t_recipe.r_date IS '������ �ۼ�����'
;

COMMENT ON COLUMN t_recipe.r_img1 IS '������ ����1'
;

COMMENT ON COLUMN t_recipe.r_img2 IS '������ ����2'
;

ALTER TABLE t_recipe
    ADD CONSTRAINT FK_t_recipe_m_id_t_member_m_id FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_community
(
    c_seq        NUMBER(12, 0)     NOT NULL, 
    c_title      VARCHAR2(200)     NOT NULL, 
    c_content    VARCHAR2(4000)    NOT NULL, 
    c_date       DATE              NOT NULL, 
    m_id         VARCHAR2(20)      NOT NULL, 
    c_file       VARCHAR2(200)     NOT NULL, 
     PRIMARY KEY (c_seq)
)
;

CREATE SEQUENCE t_community_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_community_AI_TRG
BEFORE INSERT ON t_community 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_community_SEQ.NEXTVAL
    INTO :NEW.c_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_community_AI_TRG;
;

DROP SEQUENCE t_community_SEQ;
;

COMMENT ON TABLE t_community IS 'Ŀ�´�Ƽ ���̺�'
;

COMMENT ON COLUMN t_community.c_seq IS '�� ����'
;

COMMENT ON COLUMN t_community.c_title IS '�� ����'
;

COMMENT ON COLUMN t_community.c_content IS '�� ����'
;

COMMENT ON COLUMN t_community.c_date IS '�� �ۼ�����'
;

COMMENT ON COLUMN t_community.m_id IS '�� �ۼ���'
;

COMMENT ON COLUMN t_community.c_file IS '�� ÷������'
;

ALTER TABLE t_community
    ADD CONSTRAINT FK_t_community_m_id_t_member_m FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_keyword
(
    k_seq          NUMBER(12, 0)    NOT NULL, 
    k_name         VARCHAR2(50)     NOT NULL, 
    k_super_seq    NUMBER(12, 0)    NOT NULL, 
     PRIMARY KEY (k_seq)
)
;

CREATE SEQUENCE t_keyword_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_keyword_AI_TRG
BEFORE INSERT ON t_keyword 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_keyword_SEQ.NEXTVAL
    INTO :NEW.k_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_keyword_AI_TRG;
;

DROP SEQUENCE t_keyword_SEQ;
;

COMMENT ON TABLE t_keyword IS 'Ű���� ���̺�'
;

COMMENT ON COLUMN t_keyword.k_seq IS 'Ű���� ����'
;

COMMENT ON COLUMN t_keyword.k_name IS 'Ű���� ��'
;

COMMENT ON COLUMN t_keyword.k_super_seq IS '����Ű���� ��ȣ'
;

ALTER TABLE t_keyword
    ADD CONSTRAINT FK_t_keyword_k_super_seq_t_sup FOREIGN KEY (k_super_seq)
        REFERENCES t_super_keyword (k_super_seq)
;



CREATE TABLE t_mealkit
(
    ml_seq            NUMBER(12, 0)     NOT NULL, 
    ml_name           VARCHAR2(20)      NOT NULL, 
    ml_material       VARCHAR2(4000)    NOT NULL, 
    ml_content        VARCHAR2(4000)    NOT NULL, 
    ml_expire_date    DATE              NOT NULL, 
    ml_maker          VARCHAR2(20)      NOT NULL, 
    m_id              VARCHAR2(20)      NOT NULL, 
    ml_img            VARCHAR2(200)     NULL, 
     PRIMARY KEY (ml_seq)
)
;

CREATE SEQUENCE t_mealkit_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_mealkit_AI_TRG
BEFORE INSERT ON t_mealkit 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_mealkit_SEQ.NEXTVAL
    INTO :NEW.ml_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_mealkit_AI_TRG;
;

DROP SEQUENCE t_mealkit_SEQ;
;

COMMENT ON TABLE t_mealkit IS '��ŰƮ ���̺�'
;

COMMENT ON COLUMN t_mealkit.ml_seq IS '��ŰƮ ����'
;

COMMENT ON COLUMN t_mealkit.ml_name IS '��ŰƮ ��'
;

COMMENT ON COLUMN t_mealkit.ml_material IS '��ŰƮ ���'
;

COMMENT ON COLUMN t_mealkit.ml_content IS '��ŰƮ ����'
;

COMMENT ON COLUMN t_mealkit.ml_expire_date IS '��ŰƮ ��ȿ�Ⱓ'
;

COMMENT ON COLUMN t_mealkit.ml_maker IS '��ŰƮ ������'
;

COMMENT ON COLUMN t_mealkit.m_id IS '������ ���̵�'
;

COMMENT ON COLUMN t_mealkit.ml_img IS '��ŰƮ ����'
;

ALTER TABLE t_mealkit
    ADD CONSTRAINT FK_t_mealkit_m_id_t_member_m_i FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_favorite
(
    f_seq       NUMBER(12, 0)    NOT NULL, 
    m_id        VARCHAR2(20)     NOT NULL, 
    r_seq       NUMBER(12, 0)    NOT NULL, 
    reg_date    DATE             NOT NULL, 
     PRIMARY KEY (f_seq)
)
;

CREATE SEQUENCE t_favorite_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_favorite_AI_TRG
BEFORE INSERT ON t_favorite 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_favorite_SEQ.NEXTVAL
    INTO :NEW.f_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_favorite_AI_TRG;
;

DROP SEQUENCE t_favorite_SEQ;
;

COMMENT ON TABLE t_favorite IS '���ã�� ���̺�'
;

COMMENT ON COLUMN t_favorite.f_seq IS '���ã�� ����'
;

COMMENT ON COLUMN t_favorite.m_id IS '����� ���̵�'
;

COMMENT ON COLUMN t_favorite.r_seq IS '������ ����'
;

COMMENT ON COLUMN t_favorite.reg_date IS '��� ����'
;

ALTER TABLE t_favorite
    ADD CONSTRAINT FK_t_favorite_r_seq_t_recipe_r FOREIGN KEY (r_seq)
        REFERENCES t_recipe (r_seq)
;

ALTER TABLE t_favorite
    ADD CONSTRAINT FK_t_favorite_m_id_t_member_m_ FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_cmt
(
    cmt_seq        NUMBER(12, 0)     NOT NULL, 
    c_seq          NUMBER(12, 0)     NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_date       DATE              NOT NULL, 
    m_id           VARCHAR2(20)      NOT NULL, 
     PRIMARY KEY (cmt_seq)
)
;

CREATE SEQUENCE t_cmt_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_cmt_AI_TRG
BEFORE INSERT ON t_cmt 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_cmt_SEQ.NEXTVAL
    INTO :NEW.cmt_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_cmt_AI_TRG;
;

DROP SEQUENCE t_cmt_SEQ;
;

COMMENT ON TABLE t_cmt IS '��� ���̺�'
;

COMMENT ON COLUMN t_cmt.cmt_seq IS '��� ����'
;

COMMENT ON COLUMN t_cmt.c_seq IS '���� ����'
;

COMMENT ON COLUMN t_cmt.cmt_content IS '��� ����'
;

COMMENT ON COLUMN t_cmt.cmt_date IS '��� �ۼ�����'
;

COMMENT ON COLUMN t_cmt.m_id IS '��� �ۼ���'
;

ALTER TABLE t_cmt
    ADD CONSTRAINT FK_t_cmt_c_seq_t_community_c_s FOREIGN KEY (c_seq)
        REFERENCES t_community (c_seq)
;

ALTER TABLE t_cmt
    ADD CONSTRAINT FK_t_cmt_m_id_t_member_m_id FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_material
(
    mat_seq       NUMBER(12, 0)     NOT NULL, 
    r_seq         NUMBER(12, 0)     NOT NULL, 
    k_seq         NUMBER(12, 0)     NOT NULL, 
    mat_info      VARCHAR2(4000)    NOT NULL, 
    mat_weight    NUMBER(12, 1)     NOT NULL, 
    mat_img       VARCHAR2(200)     NULL, 
     PRIMARY KEY (mat_seq)
)
;

CREATE SEQUENCE t_material_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_material_AI_TRG
BEFORE INSERT ON t_material 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_material_SEQ.NEXTVAL
    INTO :NEW.mat_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_material_AI_TRG;
;

DROP SEQUENCE t_material_SEQ;
;

COMMENT ON TABLE t_material IS '����� ���̺�'
;

COMMENT ON COLUMN t_material.mat_seq IS '����� ����'
;

COMMENT ON COLUMN t_material.r_seq IS '������ ����'
;

COMMENT ON COLUMN t_material.k_seq IS 'Ű���� ����'
;

COMMENT ON COLUMN t_material.mat_info IS '����� ����'
;

COMMENT ON COLUMN t_material.mat_weight IS '����� ����'
;

COMMENT ON COLUMN t_material.mat_img IS '����� ����'
;

ALTER TABLE t_material
    ADD CONSTRAINT FK_t_material_r_seq_t_recipe_r FOREIGN KEY (r_seq)
        REFERENCES t_recipe (r_seq)
;

ALTER TABLE t_material
    ADD CONSTRAINT FK_t_material_k_seq_t_keyword_ FOREIGN KEY (k_seq)
        REFERENCES t_keyword (k_seq)
;



CREATE TABLE t_user_keyword
(
    uk_seq     NUMBER(12, 0)    NOT NULL, 
    k_seq      NUMBER(12, 0)    NOT NULL, 
    uk_date    DATE             NOT NULL, 
    m_id       VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (uk_seq)
)
;

CREATE SEQUENCE t_user_keyword_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_user_keyword_AI_TRG
BEFORE INSERT ON t_user_keyword 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_user_keyword_SEQ.NEXTVAL
    INTO :NEW.uk_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_user_keyword_AI_TRG;
;

DROP SEQUENCE t_user_keyword_SEQ;
;

COMMENT ON TABLE t_user_keyword IS '����� ���� Ű���� ���̺�'
;

COMMENT ON COLUMN t_user_keyword.uk_seq IS '�缱Ű���� ����'
;

COMMENT ON COLUMN t_user_keyword.k_seq IS 'Ű���� ����'
;

COMMENT ON COLUMN t_user_keyword.uk_date IS '��� ����'
;

COMMENT ON COLUMN t_user_keyword.m_id IS '����� ���̵�'
;

ALTER TABLE t_user_keyword
    ADD CONSTRAINT FK_t_user_keyword_m_id_t_membe FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_recommend
(
    reco_seq        NUMBER(12, 0)     NOT NULL, 
    keyword         VARCHAR2(20)      NOT NULL, 
    m_id            VARCHAR2(20)      NOT NULL, 
    reco_date       DATE              NOT NULL, 
    r_seq           NUMBER(12, 0)     NOT NULL, 
    reco_content    VARCHAR2(4000)    NULL, 
     PRIMARY KEY (reco_seq)
)
;

CREATE SEQUENCE t_recommend_SEQ
START WITH 1
INCREMENT BY 1;
;

CREATE OR REPLACE TRIGGER t_recommend_AI_TRG
BEFORE INSERT ON t_recommend 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_recommend_SEQ.NEXTVAL
    INTO :NEW.reco_seq
    FROM DUAL;
END;
;

DROP TRIGGER t_recommend_AI_TRG;
;

DROP SEQUENCE t_recommend_SEQ;
;

COMMENT ON TABLE t_recommend IS '��õ ������'
;

COMMENT ON COLUMN t_recommend.reco_seq IS '��õ ����'
;

COMMENT ON COLUMN t_recommend.keyword IS 'Ű���� ��'
;

COMMENT ON COLUMN t_recommend.m_id IS '��õ��� ���̵�'
;

COMMENT ON COLUMN t_recommend.reco_date IS '��õ ����'
;

COMMENT ON COLUMN t_recommend.r_seq IS '������ ����'
;

COMMENT ON COLUMN t_recommend.reco_content IS '��õ ����'
;

ALTER TABLE t_recommend
    ADD CONSTRAINT FK_t_recommend_r_seq_t_recipe_ FOREIGN KEY (r_seq)
        REFERENCES t_recipe (r_seq)
;

ALTER TABLE t_recommend
    ADD CONSTRAINT FK_t_recommend_m_id_t_member_m FOREIGN KEY (m_id)
        REFERENCES t_member (m_id)
;



CREATE TABLE t_member_copy2
(
    m_id           VARCHAR2(20)     NOT NULL, 
    m_pw           VARCHAR2(20)     NOT NULL, 
    m_phone        VARCHAR2(20)     NOT NULL, 
    m_birthdate    DATE             NOT NULL, 
    m_addr         VARCHAR2(200)    NOT NULL, 
    m_email        VARCHAR2(50)     NOT NULL, 
    m_joindate     DATE             NOT NULL, 
    admin_yn       CHAR(1)          NOT NULL, 
     PRIMARY KEY (m_id)
)
;

COMMENT ON TABLE t_member_copy2 IS '���� ���̺�2'
;

COMMENT ON COLUMN t_member_copy2.m_id IS 'ȸ�� ���̵�'
;

COMMENT ON COLUMN t_member_copy2.m_pw IS 'ȸ�� ��й�ȣ'
;

COMMENT ON COLUMN t_member_copy2.m_phone IS 'ȸ�� ����ó'
;

COMMENT ON COLUMN t_member_copy2.m_birthdate IS 'ȸ�� �������'
;

COMMENT ON COLUMN t_member_copy2.m_addr IS 'ȸ�� �ּ�'
;

COMMENT ON COLUMN t_member_copy2.m_email IS 'ȸ�� �̸���'
;

COMMENT ON COLUMN t_member_copy2.m_joindate IS 'ȸ�� ��������'
;

COMMENT ON COLUMN t_member_copy2.admin_yn IS '������ ����'
;

