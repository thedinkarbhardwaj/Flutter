package com.example.daggerhilt

import javax.inject.Inject

class UserRegisterationService @Inject constructor(val userRespositery: USerRepositery,
                               val emailService: EmailService
) {

    fun registerUser(email:String,pass:String){
        userRespositery.saveUser(email,pass)
        emailService.emailSent(email,"Usernameee")
    }

}