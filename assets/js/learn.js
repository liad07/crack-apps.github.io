function serchallfonts(){


function styleInPage(css, verbose){
    if(typeof getComputedStyle== "undefined")
        getComputedStyle= function(elem){
            return elem.currentStyle;
        }
    var who, hoo, values= [], val,
        nodes= document.body.getElementsByTagName('*'),
        L= nodes.length;
    for(var i= 0; i<L; i++){

        who= nodes[i];
        if(who.style){
            hoo= '#'+(who.id || who.nodeName+'('+i+')');
            val= who.style.fontFamily || getComputedStyle(who, '')[css];
            if(val){
                if(verbose) values.push([hoo, val]);
                else if(values.indexOf(val)== -1) values.push(val);
            }
            val_before = getComputedStyle(who, ':before')[css];
            if(val_before){
                if(verbose) values.push([hoo, val_before]);
                else if(values.indexOf(val_before)== -1) values.push(val_before);
            }
            val_after= getComputedStyle(who, ':after')[css];
            if(val_after){
                if(verbose) values.push([hoo, val_after]);
                else if(values.indexOf(val_after)== -1) values.push(val_after);
            }
        }
    }

    return values;
}

// var downloading =styleInPage('fontFamily');
// downloading
// console.log(styleInPage('fontFamily'));// returns array:
var x=styleInPage('fonts');
console.log(x);
}
function aaa(){
    function styleInPage(css, verbose){
        if(typeof getComputedStyle== "undefined")
            getComputedStyle= function(elem){
                return elem.currentStyle;
            }
        var who, hoo, values= [], val,
            nodes= document.body.getElementsByTagName('*'),
            L= nodes.length;
        for(var i= 0; i<L; i++){

            who= nodes[i];
            if(who.style){
                hoo= '#'+(who.id || who.nodeName+'('+i+')');
                val= who.style.fontFamily || getComputedStyle(who, '')[css];
                if(val){
                    if(verbose) values.push([hoo, val]);
                    else if(values.indexOf(val)== -1) values.push(val);
                }
                val_before = getComputedStyle(who, ':before')[css];
                if(val_before){
                    if(verbose) values.push([hoo, val_before]);
                    else if(values.indexOf(val_before)== -1) values.push(val_before);
                }
                val_after= getComputedStyle(who, ':after')[css];
                if(val_after){
                    if(verbose) values.push([hoo, val_after]);
                    else if(values.indexOf(val_after)== -1) values.push(val_after);
                }
            }
        }

        return values;
    }

// var downloading =styleInPage('fontFamily');
// downloading
// console.log(styleInPage('fontFamily'));// returns array:
    var x=styleInPage('fonts');
    var y;
    var d;
    var fonts;
    y=x.length;
    y=y-1;
// console.log(x.length)
    for (var i2=0;y>i2;i2++){
        x[i2]=x[i2].replaceAll("-variable","")
        x[i2]=x[i2].replace("blank","")
        x[i2]=x[i2].replaceAll(",","")
        d=x[i2].indexOf(" ");
        x[i2]=x[i2].substring(0,d);
        console.log(x[i2])
        font=x[i2];
        //
        // const wfonts2=["thin","light","ultralight","regular","medium","demibold","bold","ultrabold","black","ultrablack"]
        for (var i3=0;i3<1;i3++){
            // var wfont=wfonts2[i3]
            window.open("https://alefalefalef.co.il/wp-content/fonts/"+font+"/"+font+"-"+"regular"+"-aaa.woff2");
        }
    }
}
function fontimonim() {

    function styleInPage(css, verbose){
        if(typeof getComputedStyle== "undefined")
            getComputedStyle= function(elem){
                return elem.currentStyle;
            }
        var who, hoo, values= [], val,
            nodes= document.body.getElementsByTagName('*'),
            L= nodes.length;
        for(var i= 0; i<L; i++){

            who= nodes[i];
            if(who.style){
                hoo= '#'+(who.id || who.nodeName+'('+i+')');
                val= who.style.fontFamily || getComputedStyle(who, '')[css];
                if(val){
                    if(verbose) values.push([hoo, val]);
                    else if(values.indexOf(val)== -1) values.push(val);
                }
                val_before = getComputedStyle(who, ':before')[css];
                if(val_before){
                    if(verbose) values.push([hoo, val_before]);
                    else if(values.indexOf(val_before)== -1) values.push(val_before);
                }
                val_after= getComputedStyle(who, ':after')[css];
                if(val_after){
                    if(verbose) values.push([hoo, val_after]);
                    else if(values.indexOf(val_after)== -1) values.push(val_after);
                }
            }
        }

        return values;
    }

// var downloading =styleInPage('fontFamily');
// downloading
// console.log(styleInPage('fontFamily'));// returns array:
    var x=styleInPage('fonts');
    y=x.length;
    var  y=y-1;
    var font
    for (var i2=0;y>i2;i2++) {
        x[i2] = x[i2].replaceAll(",", "")
        x[i2] = x[i2].replace(" ", "")
        x[i2] = x[i2].replace("TahomaMyFonts", "")
        console.log(x[i2])
        font = x[i2];

        for (var i3=0;i3<1;i3++){
            // var wfont=wfonts2[i3]
            window.open("https://fontimonim.co.il/wp-content/fonts/"+font+"/"+font+"-"+"regular"+"-fm.woff2");
        }
    }
}