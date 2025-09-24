use bhavcopy
# 1
DELIMITER //

CREATE PROCEDURE GetSymbolInfo(IN p_symbol VARCHAR(50))
BEGIN
    SELECT * FROM stock_data WHERE symbol = p_symbol;
END //

DELIMITER ;


#2
DELIMITER //

CREATE PROCEDURE CountSymbolsBySeries(IN p_series VARCHAR(50))
BEGIN
    SELECT COUNT(*) FROM stock_data WHERE series = p_series;
END //

DELIMITER ;

DELIMITER //

#3
DELIMITER //
CREATE PROCEDURE GainSymbols(IN p_n DECIMAL(5, 2))
BEGIN
    SELECT symbol 
    FROM stock_data 
    WHERE ((close_price - open_price) / open_price) * 100 > p_n;
END //

DELIMITER ;

#4

DELIMITER //

CREATE PROCEDURE TopBotSymbols(IN p_n DECIMAL(5, 2))
BEGIN
    SELECT symbol 
    FROM stock_data 
    WHERE ((high_price - low_price) / low_price) * 100 > p_n;
END //

DELIMITER ;

#5
DELIMITER //

CREATE PROCEDURE StdDevBySeries(IN p_series VARCHAR(50))
BEGIN
    SELECT STDDEV(close_price) FROM stock_data WHERE series = p_series;
END //

DELIMITER ;

#6 
DELIMITER //

CREATE PROCEDURE TopGainers(IN p_n INT)
BEGIN
    SELECT symbol 
    FROM stock_data 
    ORDER BY ((close_price - open_price) / open_price) DESC 
    LIMIT p_n;
END //

DELIMITER ;

#7
DELIMITER //

CREATE PROCEDURE BottomGainers(IN p_n INT)
BEGIN
    SELECT symbol 
    FROM stock_data 
    ORDER BY ((close_price - open_price) / open_price) ASC 
    LIMIT p_n;
END //

DELIMITER ;

#8
DELIMITER //

CREATE PROCEDURE TopTraded(IN p_n INT)
BEGIN
    SELECT symbol 
    FROM stock_data 
    ORDER BY ttl_trd_qty DESC 
    LIMIT p_n;
END //

DELIMITER ;

#9
DELIMITER //

CREATE PROCEDURE BottomTraded(IN p_n INT)
BEGIN
    SELECT symbol 
    FROM stock_data 
    ORDER BY ttl_trd_qty ASC 
    LIMIT p_n;
END //

DELIMITER ;

#10
DELIMITER //

CREATE PROCEDURE HighLowTraded(IN p_series VARCHAR(50))
BEGIN
    SELECT 
        (SELECT symbol FROM stock_data WHERE series = p_series ORDER BY ttl_Trd_Qty DESC LIMIT 1) AS highest_symbol,
        (SELECT symbol FROM stock_data WHERE series = p_series ORDER BY ttl_Trd_Qty ASC LIMIT 1) AS lowest_symbol;
END //

DELIMITER ;
DROP PROCEDURE IF EXISTS HighLowTraded;

#10
DELIMITER //

CREATE PROCEDURE HighLowTraded(IN p_series VARCHAR(50))
BEGIN
    SELECT 
        (SELECT symbol 
         FROM stock_data 
         WHERE series = p_series 
         ORDER BY ttl_trd_qty DESC 
         LIMIT 1) AS highest_symbol,
         
        (SELECT symbol 
         FROM stock_data 
         WHERE series = p_series 
         ORDER BY ttl_trd_qty ASC 
         LIMIT 1) AS lowest_symbol;
END //

DELIMITER ;

CALL HighLowTraded('EQ');






