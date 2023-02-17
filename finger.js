    // Initialize the agent at application startup.
    const fpPromise = import('https://fpcdn.io/v3/wfrmFURupVJWpBpWGWJ3')
    .then(FingerprintJS => FingerprintJS.load({
    region: 'eu'
}))

    // Get the visitor identifier when you need it.
    fpPromise
    .then(fp => fp.get())
    .then(result => {
    // This is the visitor identifier:
    const visitorId = result.visitorId
    console.log(visitorId)
})

    const response = await fetch('https://ipapi.co/json/');
    const data = await response.json();
    fetch('https://www.hebcal.com/shabbat?cfg=i2&city='+data.city+'&b=18&M=on&lg=he-x-NoNikud&tgt=_top')
        .then(response => response.text())
        .then(data => {
            const parser = new DOMParser();
            const doc = parser.parseFromString(data, 'text/html');
            const firstStrong = doc.querySelectorAll('strong');
            let cnisahour = firstStrong[0].textContent.split(":")[0];
            const cnisaminute = firstStrong[0].textContent.split(":")[1];

            const outhour = firstStrong[1].textContent.split(":")[0];
            const outminute = firstStrong[1].textContent.split(":")[1];

            const now = new Date();
            let currentHour = now.getHours();
            const currentMinute = now.getMinutes();
            const day=now.getDay()
            if (currentHour < cnisahour || (currentHour === cnisahour && cnisaminute < currentMinute&&day==5)) {
var d=false;
            }
     else {
             if (currentHour > outhour || (currentHour === outhour && currentMinute >= outminute&&day==6)){
                 var d=false
                }
                else {
                    document.writeln("יהודי יקר,\n" +
                        "\n" +
                        "האתר בו הנך מבקר שומר שבת , ולכן הגלישה בו אינה מתאפשרת שבת קודש .\n" +
                        "\n" +
                        "'כִּי אֶשְׁמְרָה שַׁבָּת אֵל יִשְׁמְרֵנִי אוֹת הִיא לְעוֹלְמֵי עַד בֵּינוֹ וּבֵינִי'");
                }
            }


        });
