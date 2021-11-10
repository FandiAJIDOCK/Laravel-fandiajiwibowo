@component('mail::message')
# Activation Email


Here is your OTP Code
Please enter the OTP code for verification
your account.

OTP : <a style="font-size:15px;"><b>{{$user->otp}}</b></a>


Thanks,<br>
Developer - Fandi Aji Wibowo
@endcomponent
