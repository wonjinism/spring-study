drop sequence bookreview_seq;
drop table bookreview;

-- ���̺�ܻ �ۼ��ϴ� �ڵ?
create sequence bookreview_seq;

create table bookrevie(
    seq number Primary key
    , name varchar2(20) not null
    , regdate date not null
    , eview varchar2(2000) not null
);

commit;


-- ������ �ۼ��ϴ� �ڵ?