// юМЖХТЕПНБ т╦ДНП оя-14
PROGRAM Format(INPUT, OUTPUT);
VAR
  Ch, State: CHAR; 
BEGIN
  State := 'ч'; // з - янярнъмхе менопедекммнярх 
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN       
      READ(Ch);  // йюперйю                          
      IF (State = 'ч') AND (Ch <> ' ')// еякх мюидем аецхм леъмел янярнъмхе мю гюохяэ аецхмю
      THEN
        State := 'э'; // янярнъмхе, врн мювюкюяэ гюохяэ BEGIN 
      IF ((Ch <> ' ') AND (State = 'э'))//еякх гюохяэ аецхмю хдер рн охьел ецн яхлбнкш: B E G I N
      THEN
        WRITE(Ch)
      ELSE// хмюве еякх яхлбнк пюбем '', рн лемъел янярнъмхе (ELSE нрм й бмеьмелс IF --> охьел онкмне сякнбхе )
          IF (Ch = ' ') AND (State = 'э') 
          THEN
            BEGIN
              State := 'з'
            END;          
      IF (State = 'з') AND (Ch <> ' ')//еякх гюйнмвхкюяэ гюохяэ BEGIN х мюысоюкяъ яхлбнк ме пюбем ' '   ( з- нянаеммши яхцмюк )
      THEN
        IF (Ch <> 'E')//еякх щрнр яхлбнк ме пюбем E (яксвюи йнцдю оняке BEGIN хдер END)
        THEN
          BEGIN
            WRITELN;
            WRITE('  ');//нрярсош оепед ноепюрнпюлх йпнле END
            State := 'P'//опнцпюллю реоепэ ме асдер пюанрюрэ я BEGIN, P нгмювюер, врн опедшдыхи яхлбнк - щрн опнаек (P__ROBEL) 
          END   
        ELSE
          IF Ch = 'E'//еякх бяе-рюйх оняке BEGIN хдер END. рн нярсош ме едкюел
          THEN//(!) ме бшбндхл E, рюй йюй лемъел янярнъмхе, сякнбхе йнрнпнцн асдер дюкэье
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
      IF  ((((State = 'P') OR (State = 'E') OR (State= 'X')) AND (Ch <> ' ') ) OR (State = 'V')) // еякх яхлбнк - асйбю хкх жхтпю - гюохяшбюел  
      THEN
        BEGIN
          IF State = 'E'
          THEN
            State := 'P';
          IF Ch <> ';'
          THEN
            WRITE(Ch); // еякх йюперйю мю яхлбнке бярпнеммнцн ноепюрнпю рн лш оевюрюел ецн 
          IF  Ch = '('
          THEN
            State := 'X';
          IF Ch = ','  //дкъ гюоършу 
          THEN
            WRITE(' ')
        END;             
      IF (State = 'P') AND (Ch = ' ')
      THEN
        State := 'E';   //йнцдю оепеярюер гюохяшбюрэяъ рн оняке лнфер ашрэ END,            
      IF (Ch = ')') 
      THEN
        BEGIN 
          State := 'S' // s -ЯЙНАЙЮ 
        END;       
      IF (Ch = ';') AND (State <> 'э')
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

