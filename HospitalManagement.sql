--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2022-12-14 02:01:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2883 (class 1262 OID 286830)
-- Name: HospitalManagement; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "HospitalManagement" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "HospitalManagement" OWNER TO postgres;

\connect "HospitalManagement"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 286873)
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    id integer NOT NULL,
    patient_id integer NOT NULL,
    doctor_id integer NOT NULL,
    appointment_reason character varying NOT NULL,
    appointment_date date NOT NULL
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 286852)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id integer NOT NULL,
    name character varying NOT NULL,
    specialization character varying NOT NULL,
    hospital_id integer NOT NULL,
    phone_number character varying,
    email character varying
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 286831)
-- Name: hospital; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospital (
    id integer NOT NULL,
    name character varying(50),
    address text
);


ALTER TABLE public.hospital OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 286891)
-- Name: medicine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicine (
    id integer NOT NULL,
    category character varying,
    name character varying NOT NULL,
    quantity integer NOT NULL,
    appointment_id integer NOT NULL
);


ALTER TABLE public.medicine OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 286865)
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patient (
    id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    phone_number character varying NOT NULL,
    address text
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 286917)
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    id integer NOT NULL,
    method character varying NOT NULL,
    patient_id integer NOT NULL,
    amount integer NOT NULL
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 286904)
-- Name: report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report (
    id integer NOT NULL,
    test_name character varying NOT NULL,
    appointment_id integer NOT NULL,
    status character varying NOT NULL
);


ALTER TABLE public.report OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 286839)
-- Name: review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.review (
    id integer NOT NULL,
    comment text,
    rating integer NOT NULL,
    hospital_id integer NOT NULL
);


ALTER TABLE public.review OWNER TO postgres;

--
-- TOC entry 2874 (class 0 OID 286873)
-- Dependencies: 206
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100001, 1, 101, 'Anxiety, Bipolar Disorder and Depression', '2022-12-06');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100002, 4, 104, 'Joint Pain and Osteoarthritis', '2022-12-06');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100003, 15, 106, 'Back Problems', '2022-12-06');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100004, 12, 110, 'Upper Respiratory Problems', '2022-12-06');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100005, 6, 115, 'Skin Disorders', '2022-06-17');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100006, 7, 112, 'Joint Pain and Osteoarthritis', '2022-06-18');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100007, 3, 113, 'Upper Respiratory Problems', '2022-06-18');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100008, 9, 102, 'High Blood Pressure', '2022-06-19');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100009, 11, 102, 'Chronic Neurology Disorders', '2022-06-19');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100010, 13, 109, 'Cholesterol Problem', '2022-06-20');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100011, 14, 111, 'Back Problems', '2022-06-20');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100012, 5, 113, 'Upper Respiratory Problems', '2022-06-21');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100013, 8, 112, 'High Blood Pressure', '2022-06-22');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100014, 9, 109, 'Back Problems', '2022-06-22');
INSERT INTO public.appointment (id, patient_id, doctor_id, appointment_reason, appointment_date) VALUES (100015, 10, 104, 'Skin Disorders', '2022-06-23');


--
-- TOC entry 2872 (class 0 OID 286852)
-- Dependencies: 204
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (101, 'Dr.Paul', 'Gynacologist', 1001, '123456', 'Paul@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (102, 'Dr.Olivia', 'Surgery', 1001, '234567', 'Olivia@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (103, 'Dr.Swamy', 'Internal medicine', 1004, '345678', 'Swamy@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (104, 'Dr.Stephen', 'Pediatrics', 1002, '456789', 'Stephen@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (105, 'Dr.Bruse', 'Dermatology', 1002, '567890', 'Bruse@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (106, 'Dr.Tony', 'Diagnostic radiology', 1003, '098765', 'Tony@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (107, 'Dr. Natasha', 'Family medicine', 1005, '987654', 'Natasha@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (108, 'Dr.Peter', 'Neurology', 1006, '876543', 'Peter@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (109, 'Dr.Steve', 'Nuclear medicine', 1007, '765432', 'Steve@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (112, 'Dr.Okoye', 'Psychiatry', 1008, '235678', 'Okoye@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (113, 'Dr.Shuri', 'Urology', 1010, '342345', 'Shuri@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (114, 'Dr.Banner', 'Radiation oncology', 1009, '234523', 'Banner@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (115, 'Dr.Scarlet', 'Anesthesiology', 1015, '563546', 'Scarlet@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (110, 'Dr.Tim', 'Ophthalmology', 1009, '654321', 'Tim@mail.com');
INSERT INTO public.doctor (id, name, specialization, hospital_id, phone_number, email) VALUES (111, 'Dr.William', 'Pediatrics', 1010, '13579', 'Challa@mail.com');


--
-- TOC entry 2870 (class 0 OID 286831)
-- Dependencies: 202
-- Data for Name: hospital; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hospital (id, name, address) VALUES (1001, 'St.Jhon''s Hospital', '7-64, Bakers street, London');
INSERT INTO public.hospital (id, name, address) VALUES (1002, 'California Institute of Medical Sciences', '569, Leaman Place, Brooklyn Heights');
INSERT INTO public.hospital (id, name, address) VALUES (1003, 'Queens Hospital Center', ' 82-68 164th St, Queens, NY');
INSERT INTO public.hospital (id, name, address) VALUES (1004, 'The Johns Hopkins Hospital Baltimore', '20, Ingram St, Queens');
INSERT INTO public.hospital (id, name, address) VALUES (1005, 'California General Hospital', 'Cliffside Dr & Birdview Ave, Malibu, CA');
INSERT INTO public.hospital (id, name, address) VALUES (1006, 'UCSF Medical Center', 'San Francisco, CA');
INSERT INTO public.hospital (id, name, address) VALUES (1007, 'New York-Presbyterian Hospital-Columbia and Cornel', 'New York, NY');
INSERT INTO public.hospital (id, name, address) VALUES (1008, 'Brigham And Women''s Hospital', 'Boston, MA');
INSERT INTO public.hospital (id, name, address) VALUES (1009, 'Ronald Reagan UCLA Medical Center', 'Los Angeles, CA');
INSERT INTO public.hospital (id, name, address) VALUES (1010, 'Mayo Clinic - Phoenix', 'Phoenix, AZ');
INSERT INTO public.hospital (id, name, address) VALUES (1011, 'University of Michigan Hospitals - Michigan Medici', 'Ann Arbor, MI');
INSERT INTO public.hospital (id, name, address) VALUES (1012, 'Cedars-Sinai Medical Center', 'Los Angeles, CA');
INSERT INTO public.hospital (id, name, address) VALUES (1013, 'Hospitals of the University of Pennsylvania - Penn', 'Philadelphia, PA');
INSERT INTO public.hospital (id, name, address) VALUES (1014, 'Stanford Health Care-Stanford Hospital', 'Stanford, CA');
INSERT INTO public.hospital (id, name, address) VALUES (1015, 'University of Wisconsin Hospitals', 'Madison, WI');


--
-- TOC entry 2875 (class 0 OID 286891)
-- Dependencies: 207
-- Data for Name: medicine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10001, 'Tablet', 'Augmentin 625', 5, 100009);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10002, 'Tablet', 'Azithral 500', 5, 100005);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10003, 'Syrup', 'Ascoril LS Syrup', 1, 100006);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10004, 'Tablet', 'Benztropine tablet', 10, 100001);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10005, 'Syrup', 'clindamycin', 1, 100002);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10006, 'Tablet', 'Wellbutrin', 5, 100003);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10007, 'Tablet', 'Capoten', 7, 100004);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10008, 'Tablet', 'Cladribine', 30, 100008);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10009, 'Tablet', 'Dexmethylphenidate', 15, 100010);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10010, 'Tablet', 'citalopram', 20, 100011);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10011, 'Tablet', 'Augmentin 625', 10, 100015);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10012, 'Syrup', 'Ascoril LS Syrup', 3, 100014);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10013, 'Tablet', 'citalopram', 10, 100006);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10014, 'Tablet', 'diltiazem ER', 15, 100007);
INSERT INTO public.medicine (id, category, name, quantity, appointment_id) VALUES (10015, 'Tablet', 'clonidine HCL', 10, 100012);


--
-- TOC entry 2873 (class 0 OID 286865)
-- Dependencies: 205
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (1, 'James', 38, '234235', '2-43, James St, CA');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (2, 'Javed', 42, '657567', '56, 9 street, DA');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (3, 'Jerimy', 28, '464765', '2866 Charla Lane  Frisco');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (4, 'Benjamin', 52, '787689', ' 3205 Tree Top Lane Honey Brook');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (5, 'Isabella', 46, '345353', ' 3942 Broadway Street Myrtle Beach');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (6, 'Emma', 72, '345345', ' Glory Road Nashville');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (7, 'Jaya', 66, '454353', 'Seth Street Curllsville');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (8, 'Nolan', 59, '567567', NULL);
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (9, 'Krishna', 77, '345345', '2444 Stoney Lane Dallas');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (10, 'Oliver', 10, '645434', '71 Ruckman Road Chickasha');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (11, 'Harper', 38, '565435', '74 Elliott Street  Weare');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (12, 'Ava', 33, '345345', NULL);
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (13, 'Emma', 67, '656756', '6 Dale Avenue  Puyallup');
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (14, 'watson', 48, '342344', NULL);
INSERT INTO public.patient (id, name, age, phone_number, address) VALUES (15, 'Sherlock', 50, '234234', NULL);


--
-- TOC entry 2877 (class 0 OID 286917)
-- Dependencies: 209
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10001, 'Card', 4, 400);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10002, 'Card', 7, 500);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10003, 'Card', 5, 550);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10004, 'Cash
', 1, 100);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10005, 'Card', 3, 130);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10006, 'Card', 8, 340);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10007, 'Cash', 10, 620);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10008, 'Cash', 15, 420);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10009, 'Cash', 12, 360);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (100010, 'Card', 2, 99);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10011, 'Card', 6, 110);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10012, 'Card', 9, 1000);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10013, 'Card', 11, 2000);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10014, 'Cash', 3, 500);
INSERT INTO public.payment (id, method, patient_id, amount) VALUES (10015, 'Card', 14, 350);


--
-- TOC entry 2876 (class 0 OID 286904)
-- Dependencies: 208
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200001, 'liver function test', 100006, 'Sample Collected');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200002, 'CT', 100006, 'Report generated');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200003, 'gastric fluid analysis', 100007, 'Specimen analysis');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200004, 'malabsorption test', 100008, 'Specimen analysis');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200005, 'liver function test', 100009, 'Sample Collected');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200006, 'X-ray', 100010, 'Report generated');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200007, 'malabsorption test', 100012, 'Specimen analysis');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200008, 'X-ray', 100001, 'Report generated');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200009, 'gastric fluid analysis', 100003, 'Sample Collected');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200010, 'kidney function test', 100004, 'Report Analysis');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200011, 'malabsorption test', 100005, 'Analysis');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200012, 'CT', 100003, 'Analysis');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200013, 'liver function test', 100002, 'Sample Collected');
INSERT INTO public.report (id, test_name, appointment_id, status) VALUES (200014, 'X-ray', 100015, 'Report generated');


--
-- TOC entry 2871 (class 0 OID 286839)
-- Dependencies: 203
-- Data for Name: review; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10010, NULL, 4, 1006);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10011, 'Over all it was a good experience', 5, 1009);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10012, 'Hospitality and comfort given by Mr. Bunny in fever clinic on 30 October 2021 is par excellence.', 3, 1001);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10013, NULL, 4, 1002);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10014, NULL, 4, 1005);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10015, 'Over all it was a good experience', 5, 1008);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10016, 'Over all it was a good experience', 5, 1007);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10017, NULL, 4, 1010);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10018, 'Hospitality and comfort given by Mr. Bunny in fever clinic on 30 October 2021 is par excellence.', 3, 1015);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10019, NULL, 5, 1014);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10020, NULL, 2, 1013);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10021, NULL, 4, 1012);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10022, NULL, 3, 1010);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10023, 'Oncology, i would like to give review on oncology nurses are excellent', 5, 1009);
INSERT INTO public.review (id, comment, rating, hospital_id) VALUES (10024, NULL, 4, 1008);


--
-- TOC entry 2730 (class 2606 OID 286880)
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 286859)
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 286838)
-- Name: hospital hospital_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospital
    ADD CONSTRAINT hospital_pkey PRIMARY KEY (id);


--
-- TOC entry 2732 (class 2606 OID 286898)
-- Name: medicine medicine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 286872)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);


--
-- TOC entry 2736 (class 2606 OID 286924)
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- TOC entry 2734 (class 2606 OID 286911)
-- Name: report report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (id);


--
-- TOC entry 2724 (class 2606 OID 286846)
-- Name: review review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (id);


--
-- TOC entry 2739 (class 2606 OID 286881)
-- Name: appointment appointment_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


--
-- TOC entry 2740 (class 2606 OID 286886)
-- Name: appointment appointment_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patient(id);


--
-- TOC entry 2738 (class 2606 OID 286860)
-- Name: doctor doctor_hospital_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_hospital_id_fkey FOREIGN KEY (hospital_id) REFERENCES public.hospital(id);


--
-- TOC entry 2741 (class 2606 OID 286899)
-- Name: medicine medicine_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointment(id);


--
-- TOC entry 2743 (class 2606 OID 286925)
-- Name: payment payment_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patient(id);


--
-- TOC entry 2742 (class 2606 OID 286912)
-- Name: report report_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointment(id);


--
-- TOC entry 2737 (class 2606 OID 286847)
-- Name: review review_hospital_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_hospital_id_fkey FOREIGN KEY (hospital_id) REFERENCES public.hospital(id);


-- Completed on 2022-12-14 02:01:36

--
-- PostgreSQL database dump complete
--

