@component('mail::message')
# Activation Email

Berikut Kode OTP Anda <b>{{$user->name}}</b>
Silahkan Masukkan kode OTP tersebut untuk verifikasi
akun anda.

@component('mail::button', ['url' => ''])
Activation
@endcomponent

Thanks,<br>
Developer - Fandi Aji Wibowo
@endcomponent
