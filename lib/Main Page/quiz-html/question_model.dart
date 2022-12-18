class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Perintah yang digunakan untuk mengosongkan kolom pada HTML adalah…",
    [
      Answer("&nbsp", true),
      Answer("tr", false),
      Answer("submit", false),
      Answer("br", false),
    ],
  ));

  list.add(Question(
    "#**# merupakan karakter yang terdapat pada type data...",
    [
      Answer("text", false),
      Answer("point", false),
      Answer("password", true),
      Answer("radio", false),
    ],
  ));

  list.add(Question(
    "Berikut ini perintah untuk mengganti baris pada HTML adalah...",
    [
      Answer("br", true),
      Answer("tr", false),
      Answer("td", false),
      Answer("p", false),
    ],
  ));

  list.add(Question(
    "Untuk memasukkan perintah berupa gambar yang dapat diklik dan fungsinya hampir sama dengan submit adalah?",
    [
      Answer("Hidden", false),
      Answer("File", false),
      Answer("Image", true),
      Answer("Submit", false),
    ],
  ));

  list.add(Question(
    "Untuk pembuatan HTML, software yang dapat digunakan adalah...",
    [
      Answer("Microsoft Word", false),
      Answer("Notepad", true),
      Answer("Photoshop", false),
      Answer("Adobe Premiere", false),
    ],
  ));

  list.add(Question(
    "HTML merupakan singkatan dari...",
    [
      Answer("Hyper Tech Markup Language", false),
      Answer("Hyper Team Markup Laguage", false),
      Answer("Hyper Test Markup Laguage", true),
      Answer("Hyper Tool Markup Laguage", false),
    ],
  ));

  list.add(Question(
    "Salah satu type yang berfungsi untuk menerima masukan berupa teks dari pengguna berikut ini adalah...",
    [
      Answer("Text", true),
      Answer("Checkbox", false),
      Answer("List", false),
      Answer("Submit", false),
    ],
  ));

  list.add(Question(
    "Atribut NAME digunakan sebagai...",
    [
      Answer("Menandai lingkaran", false),
      Answer("Menandai teks", false),
      Answer("Menentukan panjang maksimun teks", false),
      Answer("Menamai kotak", true),
    ],
  ));

  list.add(Question(
    "Untuk menerima masukan berupa pilihan, pilihan yang dapat dipilih bias atau lebih dari satu yaitu...",
    [
      Answer("Text", false),
      Answer("Submit", false),
      Answer("Radio", false),
      Answer("Checkbox", true)
    ],
  ));

  list.add(Question(
    "Berikut ini perintah untuk melakukan break pada pembuatan situs HTML adalah...",
    [
      Answer("BR", true),
      Answer("HR", false),
      Answer("LI", false),
      Answer("OL", false),
    ],
  ));

  list.add(Question(
    "Untuk membuat tabel biasanya menggunakan tag...",
    [
      Answer("<table>", true),
      Answer("<html>", false),
      Answer("<head>", false),
      Answer("<small>", false),
    ],
  ));

  list.add(Question(
    "Fungsi dari <center> adalah...",
    [
      Answer("Menampilkan informasi", false),
      Answer("Mengubah tulisan menjadi Strong", false),
      Answer("Rata tengah", true),
      Answer("Mempertebal tulisan", false),
    ],
  ));

  list.add(Question(
    "Properti <li> pada list-ing berguna untuk...",
    [
      Answer("Membuat bullet point atau baris baru pada list", true),
      Answer("Membuat teks miring", false),
      Answer("Membuat teks tebal", false),
      Answer("Pindah baris", false),
    ],
  ));

  list.add(Question(
    "Type yang berfungsi untuk menerima masukan berupa teks dari penguna dalam formulir adalah...",
    [
      Answer("Submit", false),
      Answer("Reset", false),
      Answer("Radio", false),
      Answer("Text", true),
    ],
  ));

  list.add(Question(
    "HTML dibuat oleh Tim Berners-Lee, seorang ahli...",
    [
      Answer("Networking", false),
      Answer("Komputer", false),
      Answer("Fisika", true),
      Answer("IT", false),
    ],
  ));

  return list;
}
