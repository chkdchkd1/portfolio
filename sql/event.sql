SELECT * FROM ticket.goods;

CREATE EVENT IF NOT EXISTS test_event2
    ON SCHEDULE
         EVERY 1 DAY 
    ON COMPLETION PRESERVE
    ENABLE
    COMMENT '테스트입니다'
    DO 
    update ticket.goods set  isOVer = 'Y'
		where DATE_FORMAT(STR_TO_DATE(endDate, '%Y.%m.%d'),'%Y.%m.%d') <= now();
        
        
 	select genre, goods.code, title, startDate, endDate, place, type, price, file, isOver
		from goods
			join (select * from goodsdetail ) as t
		    on goods.code = goodsMainCode
		    join (select * from goodsimage where pLocation = 1 ) as i
		    on infoNum = goodsInfoNum
		   join (select * from goodsprice where goodsprice.type = '성인' or goodsprice.type = '일반' or goodsprice.type = '주중 일반' or goodsprice.type = '주중 성인') as p
		    on goods.code = gooCode;
            
            
select count(*)
		from goods
        	join (select * from goodsdetail ) as t
		    on goods.code = goodsMainCode
	where title like concat('%','특별전','%');
    
    
      	select genre, goods.code, title, startDate, endDate, place, type, price, file, isOver
		from goods
			join (select * from goodsdetail ) as t
		    on goods.code = goodsMainCode
		    join (select * from goodsimage where pLocation = 1 ) as i
		    on infoNum = goodsInfoNum
		   join (select * from goodsprice where goodsprice.type = '성인' or goodsprice.type = '일반' or goodsprice.type = '주중 일반' or goodsprice.type = '주중 성인') as p
		    on goods.code = gooCode
		where title like concat('%',"",'%')
        