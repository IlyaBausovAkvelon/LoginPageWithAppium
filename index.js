const wdio = require("webdriverio");

const opts = {
    path: '/wd/hub',
    port: 4723,
    capabilities: {
        app: "/Users/admin/git/LoginPageWithAppium/Products/LoginPageWithAppium/Build/Products/Debug-iphonesimulator/LoginPageWithAppium.app",
        automationName: "XCUITest",
        deviceName: "iPhone 11",
        noReset: true,
        platformName: "iOS",
        platformVersion: "14.0",
        newCommandTimeout: 0,
        connectHardwareKeyboard: true
    }
};

async function main () {
    const client = await wdio.remote(opts);

    const field = await client.$("//XCUIElementTypeSecureTextField[@value=\"required\"]");
    await field.setValue("QWERTY");
    client.takeScreenshot();

    await client.deleteSession();
}

main();