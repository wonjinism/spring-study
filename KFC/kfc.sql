drop table admin_info;
drop sequence menu_seq;
drop table menu_info;
drop sequence customer_seq;
drop table order_list;
drop sequence order_seq;
drop table order_info;

CREATE TABLE admin_info (
account VARCHAR2(20)
, password VARCHAR2(20)
, admin_level NUMBER(1)
);

INSERT INTO admin_info (
account
, password
, admin_level
) VALUES (
'admin'
, 'admin'
, 1
);

CREATE SEQUENCE menu_seq
NOCACHE;

CREATE TABLE menu_info (
menu_seq NUMBER
, menu_type NUMBER(2)
, menu_name VARCHAR2(100)
, menu_description VARCHAR2(1000)
, original_price NUMBER
, promotion_price NUMBER
, promotion_type NUMBER(1)
, release_date DATE
, image VARCHAR2(1000)
);

CREATE SEQUENCE customer_seq
NOCACHE;

CREATE TABLE order_list (
customer_seq NUMBER
, menu_seq NUMBER
, quantity NUMBER
);

CREATE SEQUENCE order_seq
NOCACHE;

CREATE TABLE order_info (
order_seq NUMBER
, order_type NUMBER(1)
, order_date DATE
, order_number NUMBER
, consumer_seq NUMBER
, order_status NUMBER
, phone VARCHAR2(15)
, address VARCHAR2(200)
);

INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'[���]������ƽũ������ġŲ��', '�� ũ��! ������ �ٸ��츸 ���� ����ġŲ, �ٻ��� ũ������ ġŲ�� ��Ҵ�!', 23900, 23900, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172974_20181218161525458.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'[����ǰ]������ƽ����ġŲ8����', '�� ũ��! ������ �ٸ��츸 ������! *ġŲ����Ʈ 1+1���� ���ܵ�', 21200, 21200, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172945_20181206111947076.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'[����ǰ]������ƽ����ġŲ6����', '�� ũ��! ������ �ٸ��츸 ������! *ġŲ����Ʈ 1+1���� ���ܵ�', 16200, 16200, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172944_20181206111820922.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'[����ǰ]������ƽ����ġŲ4����', '�� ũ��! ������ �ٸ��츸 ������! *ġŲ����Ʈ 1+1���� ���ܵ�', 11000, 11000, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172943_20181206111700159.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'[����ǰ]������ƽ����ġŲ1����', '�� ũ��! ������ �ٸ��츸 ������! ��ġŲ����Ʈ�� ��9�� ���� ����...', 3000, 3000, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_1171233_20190122090828431.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'����ġŲ8����', '�ߴٸ� ���, �ְ�� �����̾�ġŲ *����Ʈĥ���ҽ� ����(400��) ...', 21200, 21200, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172941_20181206104216742.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'����ġŲ6����', '�ߴٸ� ���, �ְ�� �����̾�ġŲ *����Ʈĥ���ҽ� ����(400��) ...', 16200, 16200, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172940_20181206104053211.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'����ġŲ4����', '�ߴٸ� ���, �ְ�� �����̾�ġŲ *����Ʈĥ���ҽ� ����(400��) ...', 11000, 11000, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172939_20181206103917227.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'����ġŲ1����', '��ġŲ����Ʈ�� ��9�� ���� ���밡��(��ٱ��ϴ�����) �ߴٸ� ���,...', 3000, 3000, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_1171232_20181206103653253.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'������ġŲ8����', '������ ���߿� ������ ������ �ҽ��� ������ ����! *ġŲ����Ʈ 1+...', 20700, 20700, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172937_20181206103448565.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'������ġŲ6����', '������ ���߿� ������ ������ �ҽ��� ������ ����! *ġŲ����Ʈ 1+...', 15700, 15700, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172936_20181206103316733.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'������ġŲ4����', '������ ���߿� ������ ������ �ҽ��� ������ ����! *ġŲ����Ʈ 1+...', 10600, 10600, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172935_20181206103026973.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'������ġŲ1����', '��ġŲ����Ʈ�� ��9�� ���� ���밡��(��ٱ��ϴ�����) ������ ���߿�...', 2900, 2900, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_1171231_20181206102819464.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��Ƽ���ϼ�Ʈ', 'Ǫ���� �������� ġŲ��Ƽ! ����: ��ũ������ġŲ6+��������ġŲ6+��...', 27900, 27900, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172973_20181218161803513.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��ũ�����ǹ��ϼ�Ʈ', 'KFC ��ũ������ġŲ �Ѹ����� ������ ��Ҵ�! ���� : ��ũ������...', 22800, 22800, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172971_20181218162337422.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��ũ�����ǹ���9����', '���޹ٻ� ��ΰ� �����ϴ� KFC ��ǥ ġŲ! *����Ʈĥ���ҽ� ����(...', 20600, 20600, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172966_20181218163949222.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��ũ������ġŲ6����', '���޹ٻ� ��ΰ� �����ϴ� KFC ��ǥ ġŲ! *����Ʈĥ���ҽ� ����(...', 14300, 14300, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172965_20181218164144426.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��ũ������ġŲ4����', '���޹ٻ� ��ΰ� �����ϴ� KFC ��ǥ ġŲ! *����Ʈĥ���ҽ� ����(...', 9600, 9600, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172964_20181218164342743.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��ũ������ġŲ1����', '��ġŲ����Ʈ�� ��9�� ���� ���밡��(��ٱ��ϴ�����) *����Ʈĥ����...', 2700, 2700, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_1171237_20181218165458777.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'�������ι��ϼ�Ʈ', 'KFC ��������ġŲ �Ѹ����� ������ ��Ҵ�! ���� : ��������ġŲ9...', 22800, 22800, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172972_20181218162036881.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'�������ι���9����', 'KFC ��������ġŲ �Ѹ����� ������ ��Ҵ�! *����Ʈĥ���ҽ� ����(...', 20600, 20600, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172970_20181218163009243.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��������ġŲ6����', 'KFC���� 11���� ��о��, �����ŷ ������� ������ ����־� ����...', 14300, 14300, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172969_20181218163308931.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��������ġŲ4����', 'KFC���� 11���� ��о��, �����ŷ ������� ������ ����־� ����...', 9600, 9600, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_2172967_20181218163507121.png');
INSERT INTO menu_info (menu_seq, menu_type, menu_name, menu_description, original_price, promotion_price, promotion_type, release_date, image) VALUES (menu_seq.NEXTVAL, 1,'��������ġŲ1����', '��ġŲ����Ʈ�� ��9�� ���� ���밡��(��ٱ��ϴ�����) *����Ʈĥ����...', 2700, 2700, 7, sysdate, 'https://www.mpps.co.kr/kfcs_api_img/KFCS/goods/DL_1171238_20181218164601526.png');

commit;