-- Start a planning session for the upcoming term
DELETE FROM INSTANCE.SEARCH_CRITERIA

INSERT INTO INSTANCE.SEARCH_CRITERIA (SEMESTER_START, MAJOR, SEMESTER)
VALUES ('WS1617', 'SWB', 6);