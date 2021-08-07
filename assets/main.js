/*====================================== ======================================*/
/*=================================== CLOCK ===================================*/
const hour = document.getElementById('clock-hour'),
      minute = document.getElementById('clock-minute'),
      second = document.getElementById('clock-second')

const clock = () =>{
    let date = new Date()

    let hh = date.getHours() * 30,
        mm = date.getMinutes() * 6,
        ss = date.getSeconds() * 6

    // We add a totation to the element
    hour.style.transform = `rotateZ(${hh + mm / 12}deg)`
    minute.style.transform = `rotateZ(${mm}deg)`
    second.style.transform = `rotateZ(${ss}deg)`
}

setInterval(clock, 1000) // 1000=1s