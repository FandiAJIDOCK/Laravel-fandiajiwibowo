@component('mail::message')
# Activation Email


Here is your OTP Code
Please enter the OTP code for verification
your account.

OTP : <a style="font-size:15px;"><b>{{$user->otp}}</b></a>

@component('mail::button', ['url' => ''])
@endcomponent

Thanks,<br>
Developer - Fandi Aji Wibowo
@endcomponent
