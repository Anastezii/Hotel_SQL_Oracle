/*//////////////////////////////////////////////////////////////////////////////////  CREATE AND PK AND FK /////////////////////////////////////////////////*/

CREATE TABLE CLIENT(
client_id INTEGER NOT NULL,
client_name VARCHAR2(20),
client_number INTEGER NOT NULL,
client_gender VARCHAR2(10));

ALTER TABLE CLIENT ADD CONSTRAINT CLIENT_PK PRIMARY KEY(client_id);

CREATE TABLE EMPLOYEE_POSITION(
pos_id INTEGER NOT NULL,
pos_name VARCHAR2(20)
);

ALTER TABLE EMPLOYEE_POSITION ADD CONSTRAINT EMPLOYEE_POSITION_PK PRIMARY KEY(pos_id);


CREATE TABLE EMPLOYEES(
empl_id INTEGER NOT NULL,
empl_name VARCHAR2(20),
empl_number INTEGER NOT NULL,
empl_salary NUMBER,
pos_id INTEGER);

ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_PK PRIMARY KEY(empl_id);


ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_EMPLOYEE_POSITION_FK FOREIGN KEY(pos_id)
REFERENCES EMPLOYEE_POSITION(pos_id);


CREATE TABLE ROOM_TYPE(
rt_id INTEGER NOT NULL,
rt_type VARCHAR2(20) ,
rt_price NUMBER,
rt_broi INTEGER NOT NULL);


ALTER TABLE ROOM_TYPE ADD CONSTRAINT ROOM_TYPE_PK PRIMARY KEY(rt_id);

CREATE TABLE ROOM(
room_id INTEGER NOT NULL,
room_number INTEGER NOT NULL,
rt_id INTEGER);

ALTER TABLE ROOM ADD CONSTRAINT ROOM_PK PRIMARY KEY (room_id);

ALTER TABLE ROOM ADD CONSTRAINT ROOM_ROOM_TYPE_FK FOREIGN KEY(rt_id)
REFERENCES ROOM_TYPE(rt_id);


CREATE TABLE BREAKFAST(
br_id INTEGER NOT NULL,
br_broi INTEGER NOT NULL ,
br_price INTEGER NOT NULL,
client_id INTEGER,
room_id INTEGER);

ALTER TABLE BREAKFAST ADD CONSTRAINT BREAKFAST_PK PRIMARY KEY(br_id);

ALTER TABLE BREAKFAST ADD CONSTRAINT BREAKFAST_CLIENT_FK FOREIGN KEY(client_id)
REFERENCES CLIENT(client_id);

ALTER TABLE BREAKFAST ADD CONSTRAINT BREAKFAST_ROOM_FK FOREIGN KEY(room_id)
REFERENCES ROOM(room_id);

CREATE TABLE RESERVATION(
res_id INTEGER NOT NULL,
res_data Date,
res_period INTEGER NOT NULL,
client_id INTEGER,
room_id INTEGER,
empl_id INTEGER);

ALTER TABLE RESERVATION ADD CONSTRAINT RESERVATION_PK PRIMARY KEY (res_id);

ALTER TABLE RESERVATION ADD CONSTRAINT RESERVATION_CLIENT_FK FOREIGN KEY(client_id)
REFERENCES CLIENT(client_id);

ALTER TABLE RESERVATION ADD CONSTRAINT RESERVATION_ROOM_FK FOREIGN KEY(room_id)
REFERENCES ROOM(room_id);

ALTER TABLE RESERVATION ADD CONSTRAINT RESERVATION_EMPLOYEES_FK FOREIGN KEY(empl_id)
REFERENCES EMPLOYEES(empl_id);

/*//////////////////////////////////////////////////////////////////////////////////////////////  INSERT  ///////////////////////////////////////////////////////////////////////*/


INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(1,'Natalya Bogach',359893018956,'Female');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(2,'Valeria Svoy',359892015247,'Female');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(3,'Alexandr Chavdar',359893065892,'Male');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(4,'Svetoslav Phedorov',359893021476,'Male');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(5,'Andrey Muhin',359893065473,'Male');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(6,'Elizabeth Bezverhaya',359893036548,'Female');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(7,'Mariya Makarova ',359893039863,'Female');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(8,'Nikita Butrik',359893065897,'Male');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(9,'Nikolay Onishenko',359893036547,'Male');

INSERT INTO CLIENT(
client_id ,
client_name ,
client_number ,
client_gender )
Values(10,'Arina Nalivanaya',359893036547,'Female');

/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(1,'Hotel Manager');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(2,'Front Desk Clerks');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(3,'Room Service');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(4,'Waiter/Waitress');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(5,'Kitchen Staff');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(6,'Kitchen Manager');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(7,'Restaurant Manager');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(8,'Executive Chef');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(9,'Market and Advert');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(10,'Event Planner');

INSERT INTO EMPLOYEE_POSITION(
pos_id ,
pos_name )
Values(11,'Assis Hotel Manag');

/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/


INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(1,'Merry Berry',359874568925,810.99,11);


INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(2,'Nikolas Champe',359874565896,610.99,10);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(3,'Mariyana Nikolova',359874566589,780.99,9);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(4,'Vasya Vaasilyev',359874565872,855.99,8);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(5,'Artur Dimitrenko',359874562536,720.99,7);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(6,'Boris Vasilev',359874566478,730.99,6);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(7,'Ekaterina Dobrova',359864788925,520.99,5);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(8,'Nina Bezrukova',359876782925,489.99,4);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(9,'Taisiya Uzun',358735832925,456.99,3);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(10,'Valeriya Scripnik',359874214925,465.99,2);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(11,'Valentin Krupin',359874583625,982.99,1);

INSERT INTO EMPLOYEES(
empl_id ,
empl_name ,
empl_number ,
empl_salary ,
pos_id )
Values(12,'Nikita Bessonov',359876754875,489.99,4);

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(1,'For 1 person',59.99,15);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(2,'For 2 person',109.99,12);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(3,'For 3 person',149.99,6);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(4,'For family ',185.99,2);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(5,'For 1 person LUXE',89.99,8);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(6,'For 2 person LUXE',139.99,5);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(7,'For 1 person VIP',109.99,6);

INSERT INTO ROOM_TYPE(
rt_id ,
rt_type  ,
rt_price,rt_broi )
Values(8,'For 2 person VIP',186.99,8);

/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(1,101,2);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(2,121,1);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(3,421,7);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(4,461,7);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(5,251,4);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(6,181,1);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(7,381,5);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(8,361,6);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(9,131,2);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(10,191,1);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(11,498,7);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(12,423,6);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(13,412,6);

INSERT INTO ROOM(
room_id ,
room_number ,
rt_id )
Values(14,191,2);

/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

INSERT INTO BREAKFAST(
br_id ,
br_broi  ,
br_price ,
client_id ,
room_id )
Values(1,2,19.99,2,4);

INSERT INTO BREAKFAST(
br_id ,
br_broi  ,
br_price ,
client_id ,
room_id )
Values(2,1,8.99,7,2);

INSERT INTO BREAKFAST(
br_id ,
br_broi  ,
br_price ,
client_id ,
room_id )
Values(3,2,31.99,8,5);

INSERT INTO BREAKFAST(
br_id ,
br_broi  ,
br_price ,
client_id ,
room_id )
Values(4,3,32.99,7,7);

INSERT INTO BREAKFAST(
br_id ,
br_broi  ,
br_price ,
client_id ,
room_id )
Values(5,1,11.99,7,8);

INSERT INTO BREAKFAST(
br_id ,
br_broi  ,
br_price ,
client_id ,
room_id )
Values(6,2,22.99,7,11);


/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(1,'23-DEC-2021',14,1,1,4);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(2,'12-DEC-2021',4,2,6,2);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(3,'5-JAN-2021',8,3,5,3);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(4,'10-JAN-2022',9,4,2,1);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(5,'2-FEB-2022',8,5,4,10);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(6,'20-MAY-2022',14,6,3,11);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(7,'25-MAY-2022',10,7,8,1);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(8,'5-DEC-2021',5,8,7,10);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(9,'12-DEC-2021',6,8,11,11);

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(10,'12-FEB-2022',10,10,10,1);

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*//////////////////////////////////////////////////////////////////  FOR DELETE ///////////////////////////////////////////////////////*/

INSERT INTO RESERVATION(
res_id ,
res_data ,
res_period ,
client_id ,
room_id ,
empl_id )
Values(11,'22-FEB-2022',11,10,10,10);

/*////////////////////////////////////////////////////////////////  UPDATE   ///////////////////////////////////////////////////////////////////////////////*/


UPDATE CLIENT
 SET 
 CLIENT_NAME='Lisa Belka'
 WHERE CLIENT_ID=3;

UPDATE BREAKFAST
SET BR_BROI=4
WHERE BR_ID=3;

UPDATE EMPLOYEE_POSITION
SET  POS_NAME='M. MANAGER '
WHERE POS_ID=2;

UPDATE EMPLOYEES
SET EMPL_NAME='Mira Verenkova'
WHERE EMPL_ID=3;

UPDATE RESERVATION
SET RES_DATA='25-MAR-2022',
RES_PERIOD=5,
CLIENT_ID=3,
ROOM_ID=2,
EMPL_ID=10
WHERE RES_ID=2;

UPDATE ROOM
SET ROOM_NUMBER=254
WHERE ROOM_ID=4;

UPDATE ROOM_TYPE
SET
RT_BROI=5
WHERE RT_ID=1;

/*///////////////////////////////////////////////////////////////////////   DELETE   //////////////////////////////////////////////*/

DELETE FROM RESERVATION
WHERE RES_ID=11;

/*////////////////////////////////////////////////////////////////////////////////////   SEARCHING   ///////////////////////////////////*/

SELECT R.RES_DATA,R.RES_PERIOD,CL.CLIENT_NAME,RM.ROOM_NUMBER
FROM RESERVATION R
JOIN ROOM RM ON RM.ROOM_ID=R.ROOM_ID
JOIN CLIENT CL ON CL.CLIENT_ID=R.CLIENT_ID
WHERE R.RES_DATA LIKE '%&RESDATA%'
AND R.RES_PERIOD LIKE '%&RESERVATIONPERIOD%'
AND CL.CLIENT_NAME LIKE '%&CLIENTNAME%'
AND RM.ROOM_NUMBER LIKE '%&ROOMNUMBER%';

/*//////////////////////////////////////////////////////////////////////////////    REQUESTS  //////////////////////////////////////////////////////*/

SELECT CL.CLIENT_NAME,E.EMPL_NAME,R.RES_DATA
FROM RESERVATION R
JOIN CLIENT CL ON CL.CLIENT_ID=R.CLIENT_ID
JOIN EMPLOYEES E ON E.EMPL_ID=R.EMPL_ID
ORDER BY RES_DATA DESC;


SELECT CL.CLIENT_NAME,EM.EMPL_NAME,R.RES_DATA,R.RES_PERIOD,RM.ROOM_NUMBER
FROM RESERVATION R
JOIN CLIENT CL ON CL.CLIENT_ID=R.CLIENT_ID
JOIN EMPLOYEES EM ON EM.EMPL_ID=R.EMPL_ID
JOIN ROOM RM ON RM.ROOM_ID=R.ROOM_ID
ORDER BY RES_PERIOD , RES_DATA DESC;

SELECT R.RT_PRICE,R.RT_TYPE,R.RT_BROI,RM.ROOM_NUMBER
FROM ROOM RM
JOIN ROOM_TYPE R ON R.RT_ID=RM.RT_ID
ORDER BY RT_PRICE;

/*////////////////////////////////////////////////////////////////////// PROCEDURE   //////////////////////////////////////////////////*/


/*///////////////////////////////////////////////////////////////////////   INSERT   /////////////////////////////////////////////////////////*/

create or replace procedure client_insert
    (
        clientId client.client_id%type,
        clientName client.client_name%type,
        clientNumber client.client_number%type,
        clientGender client.client_gender%type
    )
    as
    begin
       insert into client(client_id,client_name, client_number,client_gender)
       values(clientId,clientName,clientNumber,clientGender);
       commit;
    end;



EXEC client_insert(11,'Daniel Smirnov',359457862,'Male');

create or replace procedure employeePosition_insert
    (
        posId employee_position.pos_id%type,
       posName employee_position.pos_name%type
       
    )
    as
    begin
       insert into employee_position(pos_id,pos_name)
       values(posId,posName);
       commit;
    end;

EXEC employeePosition_insert(12,'Ass Mid');


create or replace procedure rentType_insert
    (
       -- rtId room_type.rt_id%type,
       rtType room_type.rt_type%type,
       rtPrice room_type.rt_price%type,
       rtBroi room_type.rt_broi%type
    )
    as
    begin
       insert into room_type(rt_type,rt_price,rt_broi)
       values( rtType,rtPrice,rtBroi);
       commit;
    end;



/*///////////////////////////////////////////////////////    UPDATE        ///////////////////////////////////////////////////////*/

create or replace procedure updateEmployees
(
    employeesId EMPLOYEES.EMPL_ID%type,
    positionFk employees.pos_id%type
)
as
    counter int :=0;
begin
    select count(*) into counter
    from EMPLOYEES
    where empl_id = employeesId;
    if counter > 0 then
        Update employees
        set pos_id = positionFk
        Where empl_id = employeesId;
        commit;
        dbms_output.put_line('Updated Successfully');
    else
        dbms_output.put_line('There is no records in the table for update');
    end if;
end;	

EXEC updateEmployees(8,11);


/*////////////////////////////////////////////////////////////////     DELETE   ///////////////////////////////////////////*/


CREATE OR REPLACE PROCEDURE roomDelete
    (
        roomId ROOM.ROOM_ID%TYPE
    )
    AS
        counter int:=0;
    BEGIN
        SELECT COUNT(*) INTO counter
        FROM ROOM
        WHERE ROOM_ID = roomId;
        IF counter != 0 THEN
            DELETE FROM ROOM WHERE ROOM_ID = roomId; 
            DBMS_OUTPUT.PUT_LINE('Record is successfully deleted');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Record does not found');
        END IF;
    END;

EXEC roomDelete(14);

/*///////////////////////////////////////////////////////////////////  CURSOR TYPE   /////////////////////////////////////////////////////////*/

create or replace procedure rentPeriod
   
as
begin
    
    for rent_App IN (SELECT res_data, res_period FROM RESERVATION
    where RESERVATION.res_data between '05-JAN-2021' and '05-DEC-2021')
    LOOP
        DBMS_OUTPUT.put_line( rent_App.res_data||' '||rent_App.res_period);
    END LOOP;
end;
/
SET SERVEROUTPUT ON;

EXEC rentPeriod();

/*///////////////////////////////////////////////      CURSOR2     /////////////////////////////////////////////////////////////////////*/

create or replace PROCEDURE searchingRentByClientName
(
    clName CLIENT.CLIENT_NAME%TYPE
)
IS
BEGIN
   
DECLARE
    CURSOR nameCl IS --name of the cursorSS
    select RESERVATION.RES_DATA,RESERVATION.RES_PERIOD, CLIENT.CLIENT_NAME 
    from RESERVATION
    JOIN CLIENT on (RESERVATION.CLIENT_ID = CLIENT.CLIENT_ID)
   
    where clName = CLIENT.CLIENT_NAME;
    BEGIN
        FOR ClRecord IN nameCl -- priceRecord recordname
        LOOP
            DBMS_OUTPUT.PUT_LINE('Client:' || ClRecord.CLIENT_NAME ||' Res date: '|| ClRecord.RES_DATA ||' Res period: '|| ClRecord.RES_PERIOD);
        END LOOP;
    END;
END;

SET SERVEROUTPUT ON;

EXEC searchingRentByClientName('&CLIENT_NAME');



create or replace PROCEDURE searchingRentByDate
(
    resDate RESERVATION.RES_DATA%TYPE
)
IS
BEGIN
   
DECLARE
    CURSOR resDt IS --name of the cursorSS
    select RESERVATION.RES_DATA,RESERVATION.RES_PERIOD, CLIENT.CLIENT_NAME ,ROOM.ROOM_NUMBER
    from RESERVATION
    JOIN CLIENT on (RESERVATION.CLIENT_ID = CLIENT.CLIENT_ID)
     JOIN ROOM on (RESERVATION.ROOM_ID = ROOM.ROOM_ID)
   
    where resDate = RESERVATION.RES_DATA;
    BEGIN
        FOR resRecord IN resDt -- priceRecord recordname
        LOOP
            DBMS_OUTPUT.PUT_LINE('Client:' || resRecord.CLIENT_NAME ||' Res date: '|| resRecord.RES_DATA ||' Res period: '|| resRecord.RES_PERIOD||' Room number: '|| resRecord.ROOM_NUMBER);
        END LOOP;
    END;
END;

SET SERVEROUTPUT ON;

EXEC searchingRentByDate('&RES_DATE');


create or replace PROCEDURE searchingRentByPeriod
(
    resPeriod RESERVATION.RES_PERIOD%TYPE
)
IS
BEGIN
   
DECLARE
    CURSOR resPr IS --name of the cursorSS
    select RESERVATION.RES_DATA,RESERVATION.RES_PERIOD, CLIENT.CLIENT_NAME ,ROOM.ROOM_NUMBER,EMPLOYEES.EMPL_NAME
    from RESERVATION
    JOIN CLIENT on (RESERVATION.CLIENT_ID = CLIENT.CLIENT_ID)
     JOIN ROOM on (RESERVATION.ROOM_ID = ROOM.ROOM_ID)
      JOIN EMPLOYEES on (RESERVATION.EMPL_ID = EMPLOYEES.EMPL_ID)
   
    where resPeriod = RESERVATION.RES_PERIOD;
    BEGIN
        FOR resPerRecord IN resPr-- priceRecord recordname
        LOOP
            DBMS_OUTPUT.PUT_LINE('Client:' || resPerRecord.CLIENT_NAME ||' Res date: '|| resPerRecord.RES_DATA ||' Res period: '|| resPerRecord.RES_PERIOD||' Room number: '|| resPerRecord.ROOM_NUMBER||' Employee name: '|| resPerRecord.EMPL_NAME);
        END LOOP;
    END;
END;

SET SERVEROUTPUT ON;

EXEC searchingRentByPeriod('&RES_PERIOD');






/*///////////////////////////////////////////////////////     TRIGGER      /////////////////////////////////////////////////////////////////////*/



create or replace trigger triggerClient  
   before insert on CLIENT
   for each row 
begin  
   if inserting then 
      if :NEW."CLIENT_ID" is null then 
         select SEQUENCE1.nextval into :NEW."CLIENT_ID" from dual; 
      end if; 
   end if; 
end;


create or replace trigger triggerRoomType
   before insert on ROOM_TYPE
   for each row 
begin  
   if inserting then 
      if :NEW."RT_ID" is null then 
         select SEQUENCE1.nextval into :NEW."RT_ID" from dual; 
      end if; 
   end if; 
end;

create or replace trigger triggerClientSeq2  
   before insert on CLIENT
   for each row 
begin  
   if inserting then 
      if :NEW."CLIENT_ID" is null then 
         select SEQUENCE2.nextval into :NEW."CLIENT_ID" from dual; 
      end if; 
   end if; 
end;

create or replace trigger employeesTypeSeq2
   before insert on EMPLOYEES
   for each row 
begin  
   if inserting then 
      if :NEW."EMPL_ID" is null then 
         select SEQUENCE2.nextval into :NEW."EMPL_ID" from dual; 
      end if; 
   end if; 
end;


/*//////////////////////////////////////////////////////////////       INSERT WITH TRIGGER        //////////////////////////////////////////////////////////////////////*/



EXEC rentType_insert('For family VIP',196.99,2);