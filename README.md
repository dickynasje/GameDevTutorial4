# Proses pengerjaan level baru
## Tilemapping
Pertama-tama saya melakukan kembali langkah-langkah dalam membuat tilemap dan menggunakan sprite baru
## Spawner
Untuk spawner saya berusaha untuk mengimplementasikan Command Pattern (walaupun tidak jadi dipakai karena godot ternyata bisa attach script yang sama). Dan melakukan modifikasi dalam spawner agar tidak melakukan spawn secara random di level. Selain itu, juga mengimplementasikan sebuah sistem timer agar tidak terlalu banyak ikan ada di dalam level.
## Out of bounds, Next Level, dan Finish Area2D
Untuk ini saya memanfaatkan Signals yang ada dalam Node Area2D
Untuk implementasi handling out of bounds saya mengimplementasikan agar player teleport kembali ke posisi awal level.
Untuk Next Level menggunakan fitur in built godot untuk mengubah scene ke Level 2.
Untuk Finish sama mengubah scene ke scene untuk finish.