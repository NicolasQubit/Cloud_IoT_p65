function hello(){
    setTimeout(()=>{
        console.log('Hola mundo desde Docker')
        hello();

    },2000);
}

hello();