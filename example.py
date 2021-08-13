# coding=utf-8
from selenium import webdriver


def main():
    url = 'https://www.baidu.com/'
    driver.get(url=url)
    print(driver.title)
    driver.quit()


if __name__ == "__main__":
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--no-sandbox')
    driver = webdriver.Chrome(executable_path= '/root/chromedriver', options=chrome_options)
    main()