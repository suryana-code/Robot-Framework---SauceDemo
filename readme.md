# Robot Framework Automation – SauceDemo

Project ini berisi automation testing menggunakan **Robot Framework + SeleniumLibrary** untuk website **SauceDemo**.
Dirancang agar **mudah dijalankan**, **stabil**, dan **siap digunakan di local maupun CI/CD**.

---

## Tech Stack

- **Robot Framework**
- **Python 3**
- **SeleniumLibrary**
- **Google Chrome & ChromeDriver**

---

## Project Structure

```
project-root/
│
├── resources/
│   ├── keywords.robot        # Reusable keywords (Open browser, login, logout, dll)
│   ├── variables.robot       # Global variables (URL, credentials, browser)
│
├── tests/
│   ├── cart.robot            # Add to chat test cases
│   ├── checkout.robot        # Checkout test cases
│   ├── login.robot           # Login test cases
│   ├── logout.robot          # Checkout test cases
│   ├── product.robot         # Product page test cases
│
├── README.md
```

---

## Prerequisites

Pastikan sudah terinstall:

- Python 3.x
- Google Chrome
- ChromeDriver (versi sesuai Chrome)
- Robot Framework & SeleniumLibrary

Install dependency:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

---

## Configuration

### Browser & URL

Di `resources/variables.robot`:

```robot
*** Variables ***
${URL}      https://www.saucedemo.com
${BROWSER}  chrome
```

Untuk **tanpa tampilan browser (headless)**:

```robot
${BROWSER}  headlesschrome
```

---

## ▶️ How to Run Test

> project ini secara default di config agar running secara headless, di setting pada [variables.robot](resources/variables.robot)

### Run semua test

```bash
robot tests/
```

### Run test tertentu

```bash
robot tests/login.robot
```

### Run headless dari terminal

```bash
robot --variable BROWSER:headlesschrome tests/
```

---

## Browser Setup (Global)

Browser dibuka melalui keyword berikut (digunakan di semua test):

```robot
*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
```

Dengan pendekatan ini:

- Tidak perlu setup browser di setiap test
- Mudah switch antara headless & non-headless
- Test lebih konsisten dan mudah dirawat

---

## Notes

- Project ini menggunakan **keyword reusable** untuk menghindari duplikasi kode
- Headless mode direkomendasikan untuk:
  - Running via terminal
  - CI/CD

- Non-headless cocok untuk debugging

---

## Test Result

Setelah test selesai, hasil dapat dilihat di:

```
results/log.html
results/report.html
```

---

## Author

QA Engineer
Automation Testing – Robot Framework
