package com.example.daggerhilt

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        // We also said manual injection
        // this is constructor injection but the issue is if we need to use in 10 places we need to do same in 10 places
//        val userReg = UserRegisterationService(USerRepositery(),EmailService())
//        userReg.registerUser("dinkar@gmaill.com","123456")
    }
}