### Docker

Mari kita mulai dengan memahami, apa itu Docker?
Secara sederhana, Docker adalah platform perangkat lunak yang mempermudah proses membangun, menjalankan, mengelola, dan mendistribusikan aplikasi. Ini dilakukan dengan melakukan virtualisasi sistem operasi komputer di mana Docker diinstal dan dijalankan.

Dengan kata lain, Docker memungkinkan pengguna untuk menjalankan aplikasi di mana saja dengan mudah, tanpa perlu khawatir tentang perbedaan lingkungan sistem operasi atau konfigurasi yang dapat mempengaruhi kinerja aplikasi.

### Studi Kasus

#### Masalah

Misal, seorang pengembang telah membangun aplikasi pada lingkungan yang menggunakan sistem operasi Windows. Ketika aplikasi tersebut dikirimkan ke tim IT untuk dijalankan pada lingkungan yang menggunakan sistem operasi Linux, aplikasi tersebut mungkin tidak dapat berjalan dengan baik karena adanya ketidakcocokan sistem operasi. Bagaimana cara memastikan aplikasi ini berjalan dengan baik di lingkungan berbeda ?

#### Solusi

Solusinya, dengan menggunakan Docker, kita dapat membuat lingkungan virtual yang sama pada sistem operasi Linux, dengan menyiapkan image untuk aplikasi tersebut. Untuk menyiapkan aplikasi dalam bentuk Docker image, kita dapat menuliskan file Dockerfile yang berisi base image, perintah instalasi dependensi, konfigurasi seperti environment variable dan port. Setelah itu, Docker image dapat didistribusikan dan dapat dijalankan pada lingkungan Docker lainnya, hanya dengan mendownload image dan menjalankan perintah run menggunakan Docker. Dengan demikian, Docker dapat membantu pengembang dan tim IT untuk menjalankan aplikasi secara konsisten pada lingkungan yang berbeda tanpa perlu khawatir tentang perbedaan lingkungan dan sistem operasi yang digunakan.

> Solusi di atas terdengar mirip dengan virtual machine, namun virtual machine memiliki banyak kekurangan dibandingkan dengan Docker pada banyak aspek, seperti penggunaan sumber daya yang lebih besar, kinerja yang lebih lambat, dan kurang mudah digunakan.

### Istilah

#### Image

Docker image adalah sebuah template atau blueprint yang berisi semua informasi dan instruksi yang diperlukan untuk membuat sebuah container Docker. Image bisa dianggap sebagai paket lengkap yang berisi semua dependensi, file, konfigurasi, dan kode aplikasi yang diperlukan untuk menjalankan suatu aplikasi. Image ini dapat digunakan untuk membuat banyak instance dari container yang sama dengan cepat dan mudah.

> Kita akan membahas lebih detail dalam exercise Docker Image

#### Container

Docker Container adalah sebuah lingkungan yang terisolasi yang berjalan di atas sistem operasi host, yang dapat dijalankan dengan Docker. Container ini dikemas dalam Docker Image, yang berisi segala sesuatu yang diperlukan untuk menjalankan aplikasi atau layanan tertentu.

Secara sederhana, Image Docker dapat dibandingkan dengan cetakan dari sebuah benda, seperti cetakan kue atau cetakan mainan. Ketika cetakan dibuat, kita dapat membuat banyak benda dengan bentuk yang sama menggunakan cetakan yang sama. Begitu juga dengan Docker Image, kita dapat membuat banyak container dengan konfigurasi yang sama menggunakan Docker Image yang sama.

Pada halaman selanjutnya, kita akan mencoba menjalankan container di sistem operasi Linux.
