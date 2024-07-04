function calculateBmi() {
var weight = document.BMI.weight.value
var height = document.BMI.height.value
if(weight > 0 && height > 0){	
var finalBmi = weight/(height/100)**2
document.BMI.bmi.value = finalBmi.toFixed(3);
if(finalBmi < 18.5){
document.BMI.meaning.value = "UNDERWEIGHT....You are unhealthy, too thin."
    }
if(finalBmi > 18.5 && finalBmi < 25){
document.BMI.meaning.value = "HEALTY...You are healthy enough."
    }
if(finalBmi > 25 &&  finalBmi <30){
document.BMI.meaning.value = "OVERWEIGHT....You have overweight."
    }
if(finalBmi > 30){
document.BMI.meaning.value ="OBISETY...Your condition is serious. "
    }
    }
    else{
    alert("Data you've entered might be incorrect. Please check and try again.")
    }

    }