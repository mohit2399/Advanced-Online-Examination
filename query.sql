use online_examination_system;
select * from faculty_table;
select * from student_table;
delete from student_table where student_id = 5;

select * from table_questions;
insert into table_questions(id_question, questions, option_a, option_b, option_c, option_d, option_correct)
	values(1, 'What is your name?', 'Rohit', 'RAhul', 'Abhay', 'Vibhay', 'c');
delete from table_questions where id_question = 1;

insert into table_questions(questions, option_a, option_b, option_c, option_d, option_correct)
	values('Which of these is a standard interface for serial data transmission?', 'ASCII', 'RS232C', '2', 'Centronics', 'b'),
		  ('Which type of topology is best suited for large businesses which must carefully control and coordinate the operation of distributed branch outlets?', 'Ring', 'Local area', 'Hierarchical', 'Star', 'd'),
          ('Which of the following transmission directions listed is not a legitimate channel?', 'Simplex', 'Half Duplex', 'Full Duplex', 'Double Duplex', 'd'),
          ('"Parity bits" are used for which of the following purposes?', 'Encryption of data', 'To transmit faster', 'To detect errors', 'To identify the user', 'c'),
          ('What kind of transmission medium is most appropriate to carry data in a computer network that is exposed to electrical interferences?', 'Unshielded twisted pair', 'Optical fiber', 'Coaxial cable', 'Microwave', 'b'),
          ('A collection of hyperlinked documents on the internet forms the ?.?', 'World Wide Web(WWW)', 'E-mail system', 'Mailing list', 'Hypertext markup language', 'a'),
          ('The location of a resource on the internet is given by its?', 'Protocol', 'URL', 'E-mail address', 'ICQ', 'b'),
          ('A proxy server is used as the computer?', 'with external access', 'acting as a backup', 'performing file handling', 'accessing user permissions', 'a'),
          ('Which one of the following would breach the integrity of a system?', 'Looking the room to prevent theft', 'Full access rights for all users', 'Fitting the system with an anti-theft device', 'Protecting the device against willful or accidental damage', 'b'),
          ('Which software prevents the external access to a system?', 'Firewall', 'Gateway', 'Router', 'Virus checker', 'a'),
          ('Which one of the following is the most common internet protocol?', 'HTML', 'NetBEUI', 'TCP/IP', 'IPX/SPX', 'c'),
          ('Software programs that allow you to legally copy files and give them away at no cost are called which of the following?', 'Probe ware', 'Timeshare', 'Shareware', 'Public Domain', 'd'),
          ('At what speed does tele-computed refer?', 'Bit rate', 'Cycles per second', 'Baud rate', 'Megabyte load', 'c'),
          ('The length of an IPv6 address is?', '32 bits', '64 bits', '128 bits', '256 bits', 'c'),
          ('Which of the following cannot be used as a medium for 802.3 ethernet?', 'A thin coaxial cable', 'A twisted pair cable', 'A microwave link', 'A fiber optical cable', 'c'),
          ('The term IANA stands for?', 'Internet Assigned Numbers Authority', 'Internal Assigned Numbers Authority', 'Internet Associative Numbers Authoritative', 'Internal Associative Numbers Authority', 'a'),
          ('An Aloha network uses an 18.2 kbps channel for sending message packets of 100 bits long size. Calculate the maximum throughput.', '5999', '6900', '6027', '5027', 'c'),
          ('How many digits of the Data Network Identification Code (DNIC) identify the country?', 'first three', 'first four', 'first five', 'first six', 'a'),
          ('POTS network works on the principle of -', 'Telephone switching', 'Proxy server', 'File system', 'Circuit system', 'd'),
          ('How many pins does RJ-45 contain?', 'Two', 'Four', 'Eight', 'Ten', 'c');