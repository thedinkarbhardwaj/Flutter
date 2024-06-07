package com.example.daggerhilt

import dagger.Component

@Component
interface UserRegisterComponent {

    fun getUserRegService():UserRegisterationService
}