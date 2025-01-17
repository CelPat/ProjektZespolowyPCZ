# ProjektZespolowyPCZ
Projekt Zespołowy PAI 

### Dokumentacja techniczna: Instrukcja pracy z projektem

#### **1. Wymagania sprzętowe**
Przed rozpoczęciem pracy upewnij się, że Twój sprzęt spełnia następujące wymagania:

- **Procesor:** Min. dwurdzeniowy, 2.0 GHz lub wyższy.
- **Pamięć RAM:** Min. 8 GB (zalecane 16 GB dla płynnej pracy z emulatorami).
- **Przestrzeń dyskowa:** Min. 10 GB wolnego miejsca na dysku SSD.
- **System operacyjny:**
  - Windows 10/11 (64-bit).
  - macOS Catalina lub nowszy.
  - Dystrybucja Linux z wsparciem dla Git i narzędzi programistycznych.
- **Dodatkowe oprogramowanie:**
  - Visual Studio Code / IntelliJ IDEA / Android Studio (lub inne preferowane IDE).
  - Zainstalowane środowisko **Flutter** (wersja kompatybilna z projektem).
  - Zainstalowany Git (wersja 2.30 lub nowsza).

---

#### **2. Instalacja i konfiguracja środowiska**
1. **Pobranie repozytorium:**
   - Otwórz terminal lub aplikację Git Bash.
   - Sklonuj repozytorium za pomocą komendy:
     ```bash
     git clone https://github.com/CelPat/ProjektZespolowyPCZ
     ```
   - Przejdź do pobranego folderu:
     ```bash
     cd ProjektZespolowyPCZ
     ```

2. **Instalacja zależności projektu:**
   - Upewnij się, że Flutter jest poprawnie zainstalowany i skonfigurowany:
     ```bash
     flutter doctor
     ```
   - Zainstaluj zależności projektu:
     ```bash
     flutter pub get
     ```

3. **Uruchomienie projektu:**
   - Aby uruchomić aplikację na emulatorze lub fizycznym urządzeniu, użyj:
     ```bash
     flutter run
     ```

#### **3. Zalecenia dla deweloperów**
1. **Praca na gałęziach:**
   - Nigdy nie pracuj bezpośrednio na głównej gałęzi (`main` lub `master`).
   - Stwórz nową gałąź dla swoich zmian:
     ```bash
     git checkout -b nazwa-funkcji
     ```

2. **Zalecenia dotyczące commitów:**
   - Używaj zwięzłych, opisowych wiadomości commitów. Przykład:
     ```
     git commit -m "Dodano funkcję logowania użytkowników"
     ```

3. **Przygotowanie kodu do Pull Requesta:**
   - Sprawdź formatowanie kodu:
     ```bash
     flutter format .
     ```
   - Wypchnij zmiany na zdalne repozytorium:
     ```bash
     git push origin nazwa-funkcji

     
---

#### **4. Struktura projektu**
Poniżej przedstawiono kluczowe foldery i ich funkcje:
- **`lib/`** – Główna logika aplikacji.
- **`assets/`** – Zasoby aplikacji (grafiki, czcionki itp.).
- **`pubspec.yaml`** – Plik zarządzający zależnościami projektu.

---

#### **5. Rozwiązywanie problemów**
- **Problem z zależnościami:**  
  Jeśli wystąpią błędy podczas instalacji zależności, spróbuj:  
  ```bash
  flutter clean
  flutter pub get
  ```

- **Niekompatybilna wersja Fluttera:**  
  Sprawdź wymaganą wersję Fluttera w pliku `pubspec.yaml`. Jeśli potrzebujesz konkretnej wersji:
  ```bash
  flutter downgrade wersja
  ```

- **Brak emulatora:**  
  Upewnij się, że masz skonfigurowany emulator w Android Studio lub użyj fizycznego urządzenia z włączonym trybem debugowania USB.

---

#### **6. Dodatkowe zasoby**
- Oficjalna dokumentacja Fluttera: [flutter.dev](https://flutter.dev)
- Dokumentacja projektu: Sprawdź plik `doc/api/index.html` w repozytorium.
