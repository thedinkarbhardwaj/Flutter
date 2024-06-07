package com.example.daggerhilt

import android.provider.ContactsContract.CommonDataKinds.Email
import android.util.Log
import javax.inject.Inject

class EmailService @Inject constructor() {

    fun emailSent(email:String,userName:String){

        Log.d("TAG","Email sent")
    }
}