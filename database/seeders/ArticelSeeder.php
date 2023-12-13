<?php

namespace Database\Seeders;

use Ramsey\Uuid\Uuid;
use App\Models\artikel;
use Illuminate\Database\Seeder;

class artikelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        artikel::create([
            'id_artikel' => Uuid::uuid4()->toString() . "\n",
            'name_artikel' => 'Membantu Pendidikan dan Meningkatkan Minat Baca',
            'desc_artikel' => 'Buku adalah salah satu sumber pengetahuan yang penting untuk meningkatkan kualitas pendidikan dan membuka wawasan. Namun, tidak semua orang memiliki akses mudah ke buku, terutama bagi mereka yang kurang mampu atau tinggal di daerah terpencil. Oleh karena itu, donasi buku adalah salah satu cara yang efektif untuk membantu meningkatkan aksesibilitas buku dan membantu meningkatkan minat baca masyarakat.

            Donasi buku dapat dilakukan oleh siapa saja dan dari mana saja. Buku-buku yang didonasikan bisa berupa buku pelajaran, buku fiksi, buku non-fiksi, buku anak-anak, majalah, dan lain sebagainya. Namun, penting untuk memastikan bahwa buku yang didonasikan masih dalam kondisi yang layak baca dan tidak rusak.',
        ]);

        artikel::create([
            'id_artikel' => Uuid::uuid4()->toString() . "\n",
            'name_artikel' => 'Kegiatan yang bisa membantu memperluas akses ke literasi dan pengetahuan bagi masyarakat yang membutuhkan.',
            'desc_artikel' => 'Kegiatan donasi buku bisa dilakukan oleh individu, kelompok masyarakat, maupun lembaga sosial. Donasi buku juga dapat dilakukan melalui program-program sosial, seperti program bantuan pendidikan atau program bantuan sosial lainnya.

            Manfaat donasi buku bukan hanya bagi penerima donasi, tetapi juga bagi para donatur. Dengan berdonasi buku, donatur dapat berkontribusi pada peningkatan literasi dan pendidikan masyarakat. Selain itu, donasi buku juga dapat membantu penghematan lingkungan, karena buku-buku yang tidak terpakai dapat didaur ulang dan digunakan oleh orang lain.
            
            Sementara itu, bagi penerima donasi buku, donasi buku bisa membantu memperluas pengetahuan dan meningkatkan literasi. Buku-buku yang diterima melalui donasi bisa membantu meningkatkan kemampuan membaca, menulis, serta meningkatkan pemahaman tentang berbagai macam topik.',
        ]);

        artikel::create([
            'id_artikel' => Uuid::uuid4()->toString() . "\n",
            'name_artikel' => 'Beberapa langkah yang dapat dilakukan dalam mengadakan acara donasi Buku',
            'desc_artikel' => 'Berikut adalah beberapa langkah yang dapat dilakukan dalam mengadakan acara donasi buku:

            Persiapan
            Persiapan meliputi menentukan tujuan acara, mengajak dan menyusun tim, serta menyiapkan tempat pengumpulan buku. Pastikan tempat pengumpulan mudah diakses oleh masyarakat dan terlihat menarik untuk menarik perhatian lebih banyak orang.
            
            Promosi
            Untuk memperoleh banyak buku, promosi menjadi hal yang penting. Gunakan media sosial, poster, atau spanduk untuk mempromosikan acara donasi buku yang diadakan. Beritahu masyarakat tentang tujuan acara dan kapan dan di mana buku dapat disumbangkan.
            
            Pengumpulan buku
            Setelah promosi dilakukan, pengumpulan buku dapat dimulai. Pastikan bahwa buku yang disumbangkan dalam kondisi yang layak untuk dibaca, tidak rusak atau sobek.
            
            Penyortiran dan pembersihan buku
            Setelah semua buku terkumpul, lakukan penyortiran dan pembersihan. Pisahkan buku berdasarkan kategori dan periksa apakah ada buku yang tidak layak untuk dibaca atau rusak. Buang buku yang tidak layak atau bisa digunakan sebagai daur ulang kertas.
            
            Distribusi buku
            Setelah penyortiran selesai, buku dapat didistribusikan kepada pihak yang membutuhkan. Pastikan buku yang didistribusikan cocok dengan kebutuhan pihak yang menerima, seperti buku pelajaran untuk sekolah atau buku anak untuk komunitas yang lebih muda.
            
            Terima kasih
            Jangan lupa untuk mengucapkan terima kasih kepada masyarakat yang telah menyumbangkan buku dan tim yang telah bekerja keras untuk mengadakan acara donasi buku.
            
            Dalam kesimpulan, acara donasi buku dapat menjadi cara yang efektif untuk meningkatkan literasi di masyarakat. Dengan persiapan yang baik, promosi yang efektif, dan pengumpulan buku yang tepat, acara ini dapat memberikan manfaat yang besar bagi masyarakat yang membutuhkan.',
        ]);
    }
}
