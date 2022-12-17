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
    "Pengertian bahasa CSS yang benar adalah...",
    [
      Answer(
          "Bahasa pemrograman yang digunakan untuk pengembangan website agar lebih dinamis",
          false),
      Answer(
          "Sebuah bahasa yang menggunakan markup atau penanda untuk membuat halaman web",
          false),
      Answer(
          "Sebuah bahasa untuk mengatur tampilan web sehingga terlihat lebih menarik dan indah",
          true),
      Answer(
          "Bahasa pemrograman web yang digunakan untuk memanipulasi elemen HTML dan membuat interaksi",
          false),
    ],
  ));

  list.add(Question(
    "Format penulisan sintaks CSS yang benar adalah...",
    [
      Answer("Selector {Property: value;}", true),
      Answer("Property {Selector: value;}", false),
      Answer("Value {Property: selector;}", false),
      Answer("Selector {value: property;}", false),
    ],
  ));

  list.add(Question(
    "Pada CSS, untuk menambahkan background color untuk semua <h1> adalah?",
    [
      Answer("all.h1 {background-color:#FFFFFF }", false),
      Answer("#h1 {background-color:#FFFFFF }", false),
      Answer(".h1 {background-color:#FFFFFF }", false),
      Answer("h1 {background-color:#FFFFFF }", true),
    ],
  ));

  list.add(Question(
    "Manakah sintaks CSS yang benar?",
    [
      Answer("body:color=black;", false),
      Answer("{body;color:black;}", false),
      Answer("{body:color=black;}", false),
      Answer("body {color:black;}", true)
    ],
  ));

  list.add(Question(
    "Manakah yang merupakan properti untuk mengatur ketebalan font?",
    [
      Answer("font-weight", true),
      Answer("font-height", false),
      Answer("font-width", false),
      Answer("font-dimensional", false),
    ],
  ));

  list.add(Question(
    "Manakah dibawah ini yang merupakan sintaks javascript untuk mengambil elemen HTML secara spesifik pada atribut ID?",
    [
      Answer("document.getElementById(“demo”);", true),
      Answer("document.getElementByName(“demo”);", false),
      Answer("document.getElementsByClassName(“demo”);", false),
      Answer("document.getElementsByTagName(“demo”);", false),
    ],
  ));

  list.add(Question(
    "Bagaimana membuat komentar di javascript?",
    [
      Answer(" <!–ini komentar–>", false),
      Answer("*ini komentar*", false),
      Answer("//ini komentar", true),
      Answer("/* ini komentar */", false),
    ],
  ));

  list.add(Question(
    "Perintah di javascript yang berfungsi untuk menampilkan data/informasi dalam bentuk POP UP adalah",
    [
      Answer("alert()", true),
      Answer("show()", false),
      Answer("write()", false),
      Answer("pop_up()", false),
    ],
  ));

  list.add(Question(
    "Bagaimana membuat perulangan while di javascript",
    [
      Answer("while (i<=10) then", false),
      Answer("while : i<=10", false),
      Answer("while {i<=10}", false),
      Answer("while (i<=10)", true),
    ],
  ));

  list.add(Question(
    "Berikut adalah jenis-jenis array di javascript, KECUALI",
    [
      Answer("Array Numerik", false),
      Answer("Array Assosiatif", false),
      Answer("Array Boolean", true),
      Answer("Array Campuran", false),
    ],
  ));

  return list;
}
