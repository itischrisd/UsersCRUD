# UsersCRUD - Zarządzanie użytkownikami w oparciu o prosty stack technologiczny

## Opis projektu
UsersCRUD to aplikacja webowa do zarządzania użytkownikami, stworzona w oparciu o proste i bezpośrednie technologie: Servlety, JSP, JDBC oraz MySQL. Wybór takiego stacku technologicznego zamiast nowoczesnych frameworków, takich jak Spring czy Hibernate, był świadomym działaniem mającym na celu lepsze poznanie podstaw działania aplikacji internetowych w Javie, a także zaprezentowanie możliwego minimalizmu w implementacji prostej aplikacji CRUDowej. 

Zamiast polegać na wyższym poziomie abstrakcji i rozbudowanych narzędziach, aplikacja korzysta z "gołych" servletów oraz bezpośrednich połączeń JDBC. Dzięki temu zyskujemy dokładne zrozumienie zachodzących procesów, w tym:

- Bezpośrednia kontrola nad cyklem życia żądania i odpowiedzi HTTP
- Dokładna wiedza o sposobach nawiązywania połączeń z bazą danych oraz wykonywania zapytań SQL
- Łatwiejsze śledzenie zależności między logiką aplikacji, warstwą danych i warstwą prezentacji
- Możliwość budowania architektury od podstaw, zgodnie z wzorcem MVC, bez "magii" narzędzi typu ORM czy zaawansowanych kontenerów DI

## Technologie i narzędzia
- **Java 21** – podstawa całej aplikacji
- **Maven** – zarządzanie projektem oraz zależnościami
- **Tomcat** – kontener servletów do uruchamiania aplikacji webowej
- **MySQL + JDBC** – bezpośrednie połączenia do bazy danych, wykonywanie zapytań SQL oraz pełna kontrola nad przepływem danych
- **Servlety & JSP** – podstawowy mechanizm przetwarzania żądań i generowania widoków po stronie serwera
- **JSTL** – uproszczenie logiki w JSP
- **HTML/CSS (Bootstrap, SB Admin 2)** – warstwa prezentacji, odpowiadająca za responsywny i czytelny interfejs użytkownika

## Funkcjonalności
- **Wyświetlanie listy użytkowników**: prezentacja w formie tabeli, pozwalająca wybrać akcje na konkretnych rekordach
- **Dodawanie użytkownika**: formularz do wprowadzenia nazwy, emaila oraz hasła
- **Edycja użytkownika**: możliwość zmiany danych istniejącego już użytkownika
- **Podgląd szczegółów**: prezentacja danych konkretnego użytkownika
- **Usuwanie użytkownika**: prosta akcja usuwająca rekord z bazy

## Uruchomienie projektu
1. **Wymagane środowisko**:
    - Java 21
    - Maven
    - Serwer aplikacyjny Tomcat 10.1 (lub nowszy, zgodny)
    - MySQL 8+ (utworzona baza `users` z odpowiednimi tabelami)

2. **Instalacja i konfiguracja**:
    - Pobierz szablon [SB Admin 2](https://github.com/startbootstrap/startbootstrap-sb-admin-2) i wklej do katalogu `src/main/webapp/theme/` foldery `css`, `img`, `js` i `vendor`.
    - Skonfiguruj bazę danych, wstaw wymagane tabele i dane (zgodnie z założeniami projektu).
    - W pliku `context.xml` (w `src/main/webapp/META-INF`) dostosuj dane logowania do bazy (`username`, `password`, `url`).

3. **Budowa i uruchomienie**:
    - Uruchom w katalogu głównym projektu: `mvn clean package`.
    - Wdróż powstały plik `.war` na serwer Tomcat lub skorzystaj z IntelliJ/ Eclipse, aby uruchomić projekt bezpośrednio.
    - Aplikacja powinna być dostępna pod adresem: `http://localhost:8080/user/list/` (lub innym, w zależności od konfiguracji Tomcata).

## Rozwój
W miarę rozbudowy projektu można stopniowo wprowadzać nowe elementy:
- Walidację danych po stronie serwera.
- Paginację i filtrowanie, by radzić sobie z większą liczbą rekordów.
- Funkcjonalności logowania, autoryzacji i rozbudowanego zarządzania rolami.
