import { Given, When, Then } from '@cucumber/cucumber';
import {Page, Browser,chromium} from 'playwright';
import {expect} from '@playwright/test';

let page: Page;
let browser: Browser;

       Given('the user is on the login page', async function () {
             browser = await chromium.launch({ headless: false });
             page = await browser.newPage();
             await page.goto('https://test.fitnessbi.com/login')
         }); 

          When('the user enters valid username {string}', async function (string) {
                await page.locator('#email').fill(string);
         });

          When('the user enters valid password {string}', async function (string) {
                await page.locator('#password').fill(string);
         });    
                  
        When('I click on the login button', async function () {
              await page.locator('button:has-text("LOG IN")').click();
         });

        Then('the user should be redirected to the home page', async function () {
            await page.waitForTimeout(4000);
            expect(page.locator(':text("Home")')).toBeTruthy();
            await page.close();
            await browser.close()
         });

        

  



