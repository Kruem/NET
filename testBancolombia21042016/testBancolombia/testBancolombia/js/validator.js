$('#loginForm').bootstrapValidator({
 
    message: 'Este valor no es valido',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
          
    },
    fields: {
        txtusuario: {
            validators: {
                notEmpty: {
                    message: 'El nombre de usuario es requerido'
                }
            }
        },
        password: {
            validators: {
                notEmpty: {
                    message: 'La contraseña es requerida'
                }
            }
        }
    }
});