// ��������� Ը��� ��-14
PROGRAM Format(INPUT, OUTPUT);
VAR
  Ch, State: CHAR; 
BEGIN
  State := '�'; // � - ��������� ��������������� 
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN       
      READ(Ch);  // �������                          
      IF (State = '�') AND (Ch <> ' ')// ���� ������ ����� ������ ��������� �� ������ ������
      THEN
        State := '�'; // ���������, ��� �������� ������ BEGIN 
      IF ((Ch <> ' ') AND (State = '�'))//���� ������ ������ ���� �� ����� ��� �������: B E G I N
      THEN
        WRITE(Ch)
      ELSE// ����� ���� ������ ����� '', �� ������ ��������� (ELSE ��� � �������� IF --> ����� ������ ������� )
          IF (Ch = ' ') AND (State = '�') 
          THEN
            BEGIN
              State := '�'
            END;          
      IF (State = '�') AND (Ch <> ' ')//���� ����������� ������ BEGIN � ��������� ������ �� ����� ' '   ( �- ��������� ������ )
      THEN
        IF (Ch <> 'E')//���� ���� ������ �� ����� E (������ ����� ����� BEGIN ���� END)
        THEN
          BEGIN
            WRITELN;
            WRITE('  ');//������� ����� ����������� ����� END
            State := 'P'//��������� ������ �� ����� �������� � BEGIN, P ��������, ��� ��������� ������ - ��� ������ (P__ROBEL) 
          END   
        ELSE
          IF Ch = 'E'//���� ���-���� ����� BEGIN ���� END. �� ������ �� ������
          THEN//(!) �� ������� E, ��� ��� ������ ���������, ������� �������� ����� ������
            BEGIN
              WRITELN;
              State := 'P'       
            END;                                 
      IF ((State = 'E')) AND (Ch <> ' ')
      THEN
        IF (Ch = 'E') 
        THEN
          BEGIN
            WRITELN;    
            State := 'P'
          END;   //      
      IF  ((((State = 'P') OR (State = 'E') OR (State= 'X')) AND (Ch <> ' ') ) OR (State = 'V')) // ���� ������ - ����� ��� ����� - ����������  
      THEN
        BEGIN
          IF State = 'E'
          THEN
            State := 'P';
          IF Ch <> ';'
          THEN
            WRITE(Ch); // ���� ������� �� ������� ����������� ��������� �� �� �������� ��� 
          IF  Ch = '('
          THEN
            State := 'X';
          IF Ch = ','  //��� ������� 
          THEN
            WRITE(' ')
        END;             
      IF (State = 'P') AND (Ch = ' ')
      THEN
        State := 'E';   //����� ��������� ������������ �� ����� ����� ���� END,            
      IF (Ch = ')') 
      THEN
        BEGIN 
          State := 'S' // s -������ 
        END;       
      IF (Ch = ';') AND (State <> '�')
      THEN
        BEGIN
          State := 'S';
          WRITE(Ch)
        END;               
      IF (State = 'S') AND (Ch <> ' ') AND (Ch <> ';') AND (Ch <> ')')
      THEN  
        IF (Ch <> 'E') 
        THEN
          BEGIN
            WRITELN;
            WRITE('  ');
            WRITE(Ch);
            State := 'P'
          END
        ELSE
          IF (Ch = 'E') 
          THEN
            BEGIN
              WRITELN;
              WRITE(Ch);
              State := 'P'
            END;        
      IF Ch = '('
      THEN
        State := 'X'; 
      IF Ch = '.'
      THEN
        State := 'V'               
    END;
  WRITELN
END.

