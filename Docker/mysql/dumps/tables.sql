USE 1516he201130;

CREATE TABLE IF NOT EXISTS user (
    user_id             INT             NOT NULL auto_increment,
    username            VARCHAR(16)     NOT NULl,
    email               VARCHAR(255)    NOT NULL,
    password            VARCHAR(32)     NOT NULL,
    question_secrete    VARCHAR(100)    NOT NULL,
    reponse_secrete     VARCHAR(32)     NOT NULL,
    create_time         TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id),
    UNIQUE (username),
    UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS code (
    type                CHAR(1)         NOT NULL,
    user_id             INT             NOT NULL,
    code                CHAR(32)        NOT NULL,
    create_time         TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (type),
    FOREIGN KEY (user_id)           REFERENCES user(user_id),
    UNIQUE (code)
);

CREATE TABLE IF NOT EXISTS message (
    msg_id              INT             NOT NULL auto_increment,
    msg_author          INT             NOT NULL,
    msg_recipient       INT             NOT NULL,               # Auteur
    msg_mail            VARCHAR(100)    NOT NULL,               # Destinataire
    msg_subject         VARCHAR(80)     NOT NULL,
    msg_message         TEXT            NOT NULL,
    msg_create_time     TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    msg_parent_id       INT,                                    # Message parent
    PRIMARY KEY (msg_id),
    FOREIGN KEY (msg_author)        REFERENCES user(user_id),
    FOREIGN KEY (msg_recipient)     REFERENCES user(user_id),
    FOREIGN KEY (msg_parent_id)     REFERENCES message(msg_id)
);

CREATE TABLE IF NOT EXISTS profil (
    profil_id           INT             NOT NULL auto_increment,
    name                VARCHAR(45)     NOT NULL,
    PRIMARY KEY (profil_id),
    UNIQUE (name)
);

CREATE TABLE IF NOT EXISTS user_profil (
    user_id             INT             NOT NULL,
    profil_id           INT             NOT NULL,
    create_time         TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, profil_id),
    FOREIGN KEY (user_id)           REFERENCES user(user_id),
    FOREIGN KEY (profil_id)         REFERENCES profil(profil_id)
);

