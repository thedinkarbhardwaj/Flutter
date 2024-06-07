package com.example.daggerhilt

import android.util.Log
import javax.inject.Inject

class USerRepositery @Inject constructor() {

    fun saveUser(email:String,pass:String){
        Log.d("TAG","$email  pass--- $pass")
    }
}