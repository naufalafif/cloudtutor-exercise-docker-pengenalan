### Menjalankan Docker Container

Sebagai contoh, kita akan menggunakan image "nginx" untuk menjalankan website atau aplikasi web. Image "nginx" ini berisi server web open-source yang siap digunakan.

#### Mencari Image Nginx

Pertama-tama, gunakan terminal disebelah kanan dan jalankan perintah berikut untuk mencari image "nginx" di Docker Hub:

```{.sh .copy}
docker search nginx
```

Perintah di atas berfungsi menampilkan daftar image yang terkait dengan "nginx".

#### Mengunduh Image Nginx

Setelah menemukan image "nginx", jalankan perintah berikut untuk mengunduh image yang diinginkan:

```{.sh .copy}
docker pull nginx
```

Perintah pull akan mengunduh image `nginx` dari Docker registry (https://hub.docker.com/) dan menyimpannya di local atau komputer kita.

Untuk memastikan image sudah berhasil terunduh, jalankan perintah berikut

```{.sh .copy}
docker images
```

Perintah tersebut akan menampilkan daftar image yang ada di komputer kita. Pastikan image `nginx` ada didalamnya. berikut contoh outputnya

```sh
REPOSITORY                                   TAG       IMAGE ID       CREATED        SIZE
python                                       latest    f92346e0c39e   4 weeks ago    925MB
nginx                                        latest    3f8a00f137a0   4 weeks ago    142MB

```

#### Membuat Container Menggunakan Image Nginx

Setelah image berhasil terunduh, jalankan container dengan perintah berikut:

```{.sh .copy}
docker run --name my-nginx -p 80:80 -d nginx
```

Perintah diatas akan menghasilkan output berupa id dari container yang dijalankan seperti contoh dibawah yang artinya container berhasil dijalankan.

```sh
9fbb59687e0879ab911cb4a24e70e76ef61c57433db4f215b0b263fdb1da9c98
```

Keterangan:

- "--name my-nginx" memberikan nama "my-nginx" pada container yang akan dijalankan.
- "-p 80:80" memetakan port 80 pada host ke port 80 di container.
- "-d" menjalankan container dalam mode detach/background.

#### Mengecek Status container

Untuk memastikan container sudah berjalan, jalankan perintah berikut:

```{.sh .copy}
docker ps
```

```sh
CONTAINER ID   IMAGE            COMMAND                  CREATED         STATUS         PORTS                    NAMES
5a66766ebb05   nginx            "/docker-entrypoint.…"   3 minutes ago   Up 3 minutes   0.0.0.0:80->80/tcp     eloquent_sutherland
```

Output di atas menunjukkan bahwa container nginx telah berhasil dijalankan pada port 80.

#### Mengecek Aplikasi Web

Untuk mengecek aplikasi, silahkan buka halaman web menggunakan link dibawah.
gunakan web disebelah kanan atau gunakan tab baru pada browser.

```{.sh .copy}
https://#ID#.host.cloudtutor.io
```

> Ketika menjalankan docker di system anda, container dapat di akses melalui `localhost`

#### Menghentikan Container

Jika ingin menghentikan container, jalankan perintah berikut:

```{.sh .copy}
docker stop my-nginx
```

#### Menghapus Container

Jika ingin menghapus container, jalankan perintah berikut:

```{.sh .copy}
docker rm my-nginx
```
