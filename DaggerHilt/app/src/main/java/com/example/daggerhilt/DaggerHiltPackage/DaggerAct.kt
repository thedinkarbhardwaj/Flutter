package com.example.daggerhilt.DaggerHiltPackage

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import com.example.daggerhilt.R
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

//@AndroidEntryPoint
class DaggerAct : AppCompatActivity() {

//     @Inject
    lateinit var car:Car
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dagger)

        car.startCar()
    }

    class Engine() {

        fun startEngine() {
            Log.d("TAG", "Start Engine")

        }
    }

    class Car(var engine: Engine) {

        fun startCar() {
            engine.startEngine()

            Log.d("TAG", "Start Car")
        }
    }


}



