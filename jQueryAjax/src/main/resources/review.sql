drop sequence bookreview_seq;
drop table bookreview;

-- Å×ÀÌºúÜ» ÀÛ¼ºÇÏ´Â ÄÚµ?
create sequence bookreview_seq;

create table bookrevie(
    seq number Primary key
    , name varchar2(20) not null
    , regdate date not null
    , eview varchar2(2000) not null
);

commit;


-- ½ÃÄö½º ÀÛ¼ºÇÏ´Â ÄÚµ?