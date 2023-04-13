Pada halaman sebelumnya, kita sudah mencoba menjalankan Docker Container. Pada halaman ini, kita akan belajar beberapa istilah atau komponen lain dalam Docker selain image dan container.

Docker terdiri dari beberapa komponen utama selain image dan container, yaitu:

#### Daemon

Docker daemon: Komponen utama dari Docker yang bertanggung jawab untuk mengontrol operasi container dan image. Docker daemon menjalankan proses container di dalam host dan mengelola proses komunikasi antara host dan container.

#### Client

Docker client: Komponen yang digunakan untuk berinteraksi dengan Docker daemon. Docker client dapat berupa command-line interface (CLI) atau GUI, yang memungkinkan pengguna untuk membuat, menjalankan, dan mengelola container dan image.

#### Registry

Docker registry: Repositori yang digunakan untuk menyimpan dan mengelola Docker image. Docker registry dapat berupa registry publik seperti Docker Hub atau registry pribadi yang di-host sendiri.

#### Network

Docker network: Komponen yang memungkinkan container berkomunikasi satu sama lain. Docker network dapat diatur dalam berbagai konfigurasi, seperti network terisolasi atau network terbuka yang dapat diakses dari host ataupun dari luar.

#### Volume

Docker volume: Komponen yang memungkinkan data persisten dan berkelanjutan di antara container dan mesin host. Docker volume memungkinkan data untuk disimpan di luar container sehingga data dapat dipertahankan bahkan jika container dihapus atau dihentikan.

Dalam keseluruhan, Docker terdiri dari beberapa komponen ini yang bekerja sama untuk membantu pengguna membuat, menjalankan, dan mengelola aplikasi dan layanan dalam container.

> komponen - komponen diatas akan dibahas dalam exercise lainnya
