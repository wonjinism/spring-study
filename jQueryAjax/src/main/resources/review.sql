drop sequence bookreview_seq;
drop table bookreview;

-- ���̺�ܻ �ۼ��ϴ� ��??
create sequence bookreview_seq;

create table bookreview(
    seq number Primary key
    , name varchar2(20) not null
    , regdate date not null
    , review varchar2(2000) not null
);

commit;

-- ������ �ۼ��ϴ� ��??