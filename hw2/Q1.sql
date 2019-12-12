/**
 * DB software I use is ORACLE Live SQL
 * The following is the explaniation for the Q1:
 */

I fixed the original given table. The new one is :

CREATE TABLE HotelStays(
	roomNum INTEGER NOT NULL,
	date DATE NOT NULL,
	guestName CHAR(30) NOT NULL,
	PRIMARY KEY(roomNum, date)
);

I change the origial arrDate, depDate to the new attribute date.
The new attribute date represents the day guests live in the room.
At this day, only this guest can stay and live in this room.
This solves the second problem that a new entry could be accidentally
put in for a room number, even before the existing guest 
in that room has checked out.
In addition, because of deleting the arrDate and depDate, 
the first problem has also been solved.