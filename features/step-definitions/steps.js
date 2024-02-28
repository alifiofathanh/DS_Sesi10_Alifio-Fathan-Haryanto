const { Given, When, Then } = require ('@wdio/cucumber-framework');

const LoginPage = require ('../pageobjects/login.page.js');
const HomePage = require ('../pageobjects/home.page.js');
const DetailProductPage = require ('../pageobjects/detailProduct.page.js')
const CartPage = require ('../pageobjects/cart.page.js')

Given(/^Alifio is on the login page$/, async () => {
    await LoginPage.open()
});

When(/^Alifio login with "(.*)" credential$/, async (username) => {
    await LoginPage.login(username)
});

When(/^Alifio click detail button on random product at home page$/, async () => {
    await DetailProductPage.open()
});

When(/^Alifio click cart button on home page$/, async() => {
    await CartPage.open()
});

Then(/^Alifio should see home page$/, async () => {
    await HomePage.validateHomePage()
});

Then(/^Alifio should see error "(.*)"$/, async (message) => {
    await LoginPage.validateLockedOutUserError(message)
});

Then(/^Alifio should see detail product page$/, async() => {
    await DetailProductPage.validateDetailProductPage()
});

Then(/^Alifio should see cart page$/, async() => {
    await CartPage.validateCartPage()
});

