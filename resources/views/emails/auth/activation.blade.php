@component('mail::message')
# Activation Email

Berikut Kode OTP Anda <b>{{$user->otp}}</b>
Silahkan Masukkan kode OTP tersebut untuk verifikasi
akun anda.

@component('mail::button', ['url' => ''])
Activation
@endcomponent

Thanks,<br>
Developer - Fandi Aji Wibowo
@endcomponent
