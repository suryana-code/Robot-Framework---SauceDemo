# 🤖 Robot Framework - SauceDemo Automation

Automation testing project for SauceDemo web application using Robot Framework and SeleniumLibrary.

This project demonstrates:

- Modular keyword design
- Page-based resource separation
- Tag-based test execution
- Scalable folder structure
- Clean and maintainable automation framework

---

## 📌 Tech Stack

- Robot Framework
- SeleniumLibrary
- Python 3.x
- Chrome Browser

---

## 📂 Project Structure

```
project-root/
│
├── resources/
│   ├── keywords/
│      ├── chart_keywords.robot
│      ├── checkout_keywords.robot
│      ├── keywords.robot
│      ├── login_keywords.robot
│   ├── variables/
│      ├── global_variables.robot
│   ├── locator.robot
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

Di `resources/variables/variables.robot`:

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

### Run test with Tag

```bash
robot -i [tag]
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
