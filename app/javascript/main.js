// Apagar notificação de cadastro
$(document).ready(function () {
  console.log("main.js carregado!");

  // Seleciona o alerta pelo ID 'notice'
  const notice = $('#notice');

  // Verifica se o alerta existe
  if (notice.length) {
    // Oculta o alerta após 2 segundos
    setTimeout(() => {
      notice.fadeOut('slow', () => {
        notice.remove(); // Remove o alerta do DOM após o fadeOut
      });
    }, 2000);
  }
});





  

 
