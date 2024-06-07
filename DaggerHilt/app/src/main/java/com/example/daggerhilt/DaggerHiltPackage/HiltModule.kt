package com.example.daggerhilt.DaggerHiltPackage

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

//@InstallIn(SingletonComponent::class)
//@Module
object HiltModule {

//    @Provides
    fun provideEngine(): DaggerAct.Engine {

        return DaggerAct.Engine()
    }

//    @Provides
    fun provideCar(engine: DaggerAct.Engine): DaggerAct.Car {

        return DaggerAct.Car(engine)
    }

}