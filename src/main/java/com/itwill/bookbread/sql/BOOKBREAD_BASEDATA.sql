/**********************member insert************************/
insert into member(userid, password, name, phone, birth, address, email, interest)
                    values('junyoung', '1111', '박준영', '010-1111-1111', '1900-01-01', '용인시 기흥구', 'junyoung@testmail.com', '소설');
insert into member(userid, password, name, phone, birth, address, email, interest)
                    values('soyoon', '1111', '장소윤', '010-2222-2222', '1900-02-02', '서울시 강남구', 'soyoon@testmail.com', '교육');
insert into member(userid, password, name, phone, birth, address, email, interest)
                    values('yongchan', '1111', '김용찬', '010-3333-3333', '1900-01-01', '성남시 분당구', 'yongchan@testmail.com', '경영경제');
insert into member(userid, password, name, phone, birth, address, email, interest)
                    values('jiwon', '1111', '김지원', '010-5555-5555', '1900-05-05', '서울시 관악구', 'jiwon@testmail.com', '소설');
insert into member(userid, password, name, phone, birth, address, email, interest)
                    values('heechul', '1111', '김희철', '010-6666-6666', '1900-06-06', '서울시 서초구', 'heechul@testmail.com', '어린이');

/**********************book_type insert************************/
insert into book_type values(book_type_type_no_SEQ.nextval, '소설');
insert into book_type values(book_type_type_no_SEQ.nextval, '경영경제');
insert into book_type values(book_type_type_no_SEQ.nextval, '어린이');
insert into book_type values(book_type_type_no_SEQ.nextval, '교육');


/**********************product insert************************/
insert into product values(product_p_no_SEQ.nextval, '불편한 편의점', '김호연', '나무옆의자', '2021-04-01', 14000, '불편한편의점.jpg', '동네 골목의 작은 편의점을 배경으로 삶의 희로애락을 따뜻하고 유머러스하게 그린 소설. 서울역에서 살다가 우연한 기회에 편의점에서 일하게 된 한 인물과 저마다의 사연을 안고 편의점을 찾는 이들의 이야기, 그 속에서 지친 하루를 위로하는 편의점의 밤이 열린다. -소설MD 박형욱', 1);
insert into product values(product_p_no_SEQ.nextval, '달러구트 꿈 백화점 2 단골손님을 찾습니다', '이미예', '팩토리나인', '2021-07-01', 13800, '달러구트꿈백화점2.jpg', '[어서오세요 꿈 백화점에!] 어른을 위한 힐링 판타지 〈달러구트 꿈 백화점〉 두 번째 책. 1년 넘게 꿈 백화점에서 일하면서 이제 제법 능숙한 직원이 된 페니, 그는 단골 손님이 남긴 알쏭달쏭한 민원을 해결하고 손님을 되찾을 수 있을까? ‘달러구트’의 세계관 아래에서 다시 한번 신비롭고 따뜻한 이야기가 펼쳐진다. -소설MD 박형욱', 1);
insert into product values(product_p_no_SEQ.nextval, '달러구트 꿈 백화점 주문하신 꿈은 매진입니다', '이미예', '팩토리나인', '2020-07-01', 13800, '달러구트꿈백화점.jpg', '잠들어야만 입장할 수 있는 상점가 마을, 그 중에서도 가장 인기 있는 곳은 온갖 꿈을 모아 파는 상점가! 『달러구트 꿈 백화점』은 유서 깊은 ‘꿈 백화점’을 무대로 그곳에서 벌어지는 비밀스럽고도 가슴 뭉클한 이야기를 그린다. 현실에 지친 이들을 위한 선물 같은 힐링 판타지. -소설MD 박형욱', 1);
insert into product values(product_p_no_SEQ.nextval, '미드나잇 라이브러리', '매트 헤이그', '인플루엔셜', '2021-04-01', 15800, '미드나잇라이브러리.jpg', '[삶과 죽음 사이, 마법의 도서관이 열린다] 죽기로 결심한 주인공 노라, 다시 눈을 뜬 그 앞에 펼쳐진 공간은 밤 12시, 죽기 전에만 열리는 ‘미드나잇 라이브러리’다. 이 신비한 도서관에서 노라는 과거의 선택에 따라 자신이 살았을 수도 있는 여러 삶을 경험하게 되는데, 그곳에서 그는 완벽한 삶을 찾을 수 있을까? 완벽한 삶은 있을까? -소설MD 박형욱', 1);
insert into product values(product_p_no_SEQ.nextval, '오늘 밤, 세계에서 이 사랑이 사라진다 해도', '이치조 미사키', '모모', '2021-06-01', 14000, '오늘밤,세계에서이사랑이사라진다해도.jpg', '자고 일어나면 전날의 일을 모두 잊는 ‘선행성 기억상실증’을 앓는 소녀와, 웃음이라고는 없는 무미건조한 인생을 살아온 소년의 풋풋하고 애틋한 사랑 이야기. 소년의 거짓 고백과, ‘날 정말로 좋아하지 말라’는 소녀의 조건부 승낙으로 시작된 이 특별한 연애는 또 다른 내일로 이어질 수 있을까. -소설MD 박형욱', 1);
insert into product values(product_p_no_SEQ.nextval, '긴긴밤', '루리', '문학동네', '2021-02-01', 11500, '긴긴밤.jpg', '가족들과 함께 자연 속에서 행복하게 살았지만 무분별한 남획으로 세상에 혼자 남게 된 흰바위코뿔소 ‘노든’, 태어나자마자 코뿔소의 손에 남겨진 어린 펭귄. 어린 펭귄을 바다에 데려다 주겠다는 약속을 지키기 위해 떠난 동물들의 여정 속에서 어둡게만 보이는 현실 속 희망을 발견한다. - 어린이MD 김수연', 3);
insert into product values(product_p_no_SEQ.nextval, '해커스 토익 기출 VOCA 보카', '데이비드 조', '해커스어학연구소', '2020-03-01', 12900, '해커스토익기출VOCA.jpg', '[토익 기출 보카 30일 완성!]주제별 연상암기로 쉽고 재미있게 단어 학습이 가능하며 최신 기출 단어 및 출제포인트 수록했다. 목표 점수대별 필수 단어로 맞춤 학습을 할 수 있으며 출제율 높은 핵심 단어만 골라 효율적으로 학습할 수 있다. 토익 신유형 대비 [토익 필수 이디엄 표현]을 수록했고 실전 감각을 키우는 토익 실전문제 13회분을 제공(교재 3회+온라인 10회)한다.', 4);
insert into product values(product_p_no_SEQ.nextval, '어떻게 말해줘야 할까', '오은영', '김영사', '2020-10-01', 17500, '어떻게말해줘야할까.jpg', '국민 육아멘토 오은영의 현실밀착 육아회화! "아이의 행동을 바꾸고 싶다면 부모의 말을 바꿔야 합니다." 국민 육아멘토 오은영 박사가 알려주는 부모의 말. 실제 육아 상황을 200퍼센트 반영한 130가지 현실밀착형 사례와 회화법을 통해 아이에게 화내지 않으면서 분명하게 교육하고, 잔소리가 아니라 효과적인 훈육이 되는 방법을 소개한다. - 가정 살림 MD 김현주', 4);
insert into product values(product_p_no_SEQ.nextval, '오은영의 화해', '오은영', '코리아닷컴', '2019-01-01', 16000, '오은영의화해.jpg', '겉으로 드러나진 않지만 많은 사람들이 내면의 고통과 아픔을 안고 살아간다. 이 책은 지면에 정신 상담을 연재하며 들어온 수많은 사연을 정신건강의학과 전문의 오은영 박사가 분석과 고뇌하며 연구한 조언을 따뜻하고 명쾌하게 들려준다. - 자기계발 MD 김상근', 4);
insert into product values(product_p_no_SEQ.nextval, '부자 아빠 가난한 아빠 20주년 특별 기념판', '로버트 기요사키', '민음인', '2018-02-01', 15800, '부자아빠가난한아빠.jpg', '전 세계에서 가장 많이 팔린 경제경영서! 저자가 유년 시절 겪은 두 아버지를 통해 가난한 사람과 부자의 사고방식을 비교한다. 직설적인 화법과 몰입도 있는 스토리텔링으로 경제에 대한 기초 상식은 물론, 자산과 부채의 개념과 성공적인 투자를 위한 비법 등을 누구나 이해할 수 있도록 쉽고 명쾌하게 전한다. - 경제경영 MD 강현정', 2);


/**********************cart insert************************/
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 1, 'junyoung', 1);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 2, 'soyoon', 2);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 1, 'yongchan', 3);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 3, 'jiwon', 4);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 1, 'heechul', 5);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 3, 'junyoung', 6);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 1, 'soyoon', 7);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 2, 'yongchan', 8);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 1, 'jiwon', 9);
insert into cart(cart_no, cart_qty, userid, p_no) values(cart_cart_no_SEQ.nextval, 3, 'heechul', 10);


/**********************orders insert************************/
-- 로그인한 회원(junyoung)님의 주문(1번 제품 1개, 2번 제품 1개)
insert into orders(o_no, o_desc, o_date, o_price, userid) values (orders_o_no_SEQ.nextval, '불편한 편의점 외 1권', sysdate, 27800, 'junyoung');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval, 1, orders_o_no_SEQ.currval,1);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval, 1, orders_o_no_SEQ.currval,2);

-- 로그인한 회원(junyoung)님의 주문(5번 제품 1개, 7번 제품 1개)
insert into orders(o_no, o_desc, o_date, o_price, userid) values (orders_o_no_SEQ.nextval, '불편한 편의점 외 1권', sysdate, 26900, 'junyoung');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval, 1, orders_o_no_SEQ.currval,5);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval, 1, orders_o_no_SEQ.currval,7);

insert into orders(o_no, o_desc, o_date, o_price, userid) values (orders_o_no_SEQ.nextval, '불편한 편의점 외 1권', sysdate, 14000, 'soyoon');
insert into orders(o_no, o_desc, o_date, o_price, userid) values (orders_o_no_SEQ.nextval, '불편한 편의점 외 1권', sysdate, 14000, 'yongchan');
insert into orders(o_no, o_desc, o_date, o_price, userid) values (orders_o_no_SEQ.nextval, '불편한 편의점 외 1권', sysdate, 14000, 'jiwon');
insert into orders(o_no, o_desc, o_date, o_price, userid) values (orders_o_no_SEQ.nextval, '불편한 편의점 외 1권', sysdate, 14000, 'heechul');

/**********************review_board insert************************/
insert into review_board(r_no, r_date, r_title, r_content, r_count, userid, p_no) values (review_board_r_no_SEQ.nextval, sysdate, '재밌었어요!', '너무 재밌었어요!', 1, 'junyoung', 1);
insert into review_board(r_no, r_date, r_title, r_content, r_count, userid, p_no) values (review_board_r_no_SEQ.nextval, sysdate, '재밌었어요!', '너무 재밌었어요!', 1, 'soyoon', 2);
insert into review_board(r_no, r_date, r_title, r_content, r_count, userid, p_no) values (review_board_r_no_SEQ.nextval, sysdate, '재밌었어요!', '너무 재밌었어요!', 1, 'yongchan', 3);
insert into review_board(r_no, r_date, r_title, r_content, r_count, userid, p_no) values (review_board_r_no_SEQ.nextval, sysdate, '재밌었어요!', '너무 재밌었어요!', 1, 'jiwon', 4);
insert into review_board(r_no, r_date, r_title, r_content, r_count, userid, p_no) values (review_board_r_no_SEQ.nextval, sysdate, '재밌었어요!', '너무 재밌었어요!', 1, 'heechul', 5);

commit;
desc order_item;