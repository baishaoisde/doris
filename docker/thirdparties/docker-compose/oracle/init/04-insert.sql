-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--   http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied.  See the License for the
-- specific language governing permissions and limitations
-- under the License.

insert into doris_test.student values (1, 'alice', 20, 99.5);
insert into doris_test.student values (2, 'bob', 21, 90.5);
insert into doris_test.student values (3, 'jerry', 23, 88.0);
insert into doris_test.student values (4, 'andy', 21, 93);

insert into doris_test.test_num values
(1, 111, 123, 7456123.89, 573, 34, 673.43, 34.1264, 56.2, 23.231);

insert into doris_test.test_int values
(1, 99, 9999, 999999999, 999999999999999999, 999, 99999, 9999999999, 9999999999999999999);
insert into doris_test.test_int values
(2, -99, -9999, -999999999, -999999999999999999, -999, -99999, -9999999999, -9999999999999999999);
insert into doris_test.test_int values
(3, 9.9, 99.99, 999999999, 999999999999999999, 999, 99999, 9999999999, 9999999999999999999);


insert into doris_test.test_char values (1, '1', 'china', 'beijing', 'alice', 'abcdefghrjkmnopq');
insert into doris_test.test_char values (2, '2', 'china', 'shanghai', 'bob', 'abcdefghrjkmnopq');
insert into doris_test.test_char values (3, '3', 'Americ', 'new york', 'Jerry', 'abcdefghrjkmnopq');


insert into doris_test.test_raw values (1, hextoraw('ffff'), hextoraw('aaaa'));
insert into doris_test.test_raw values (2, utl_raw.cast_to_raw('beijing'), utl_raw.cast_to_raw('shanghai'));

insert into doris_test.test_date (id, t1) values (1, to_date('2022-1-21 5:23:01','yyyy-mm-dd hh24:mi:ss'));
insert into doris_test.test_date (id, t1) values (2, to_date('20221112203256', 'yyyymmddhh24miss'));
insert into doris_test.test_date (id, t2) values (3, interval '11' year);
insert into doris_test.test_date (id, t2) values (4, interval '223-9' year(3) to month);
insert into doris_test.test_date (id, t3) values (5, interval '12 10:23:01.1234568' day to second);

commit;
