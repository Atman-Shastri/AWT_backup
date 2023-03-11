var currencyConverter = require('./Currency_Converter_module.js');
var rupees = currencyConverter.dollarsToRupees(1);
var dollars = currencyConverter.rupeesToDollars(1);

console.log("1 dollar to rupees as of 22nd Feb 2023: "+ rupees);
console.log("100 rupees to dollar as of 22nd Feb 2023: " + dollars);