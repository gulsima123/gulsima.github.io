<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8" />
  <title>Günlük Görevler</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #e6f0ff;
      margin: 20px;
      color: #333;
    }
    header {
      text-align: center;
      margin-bottom: 20px;
    }
    h1 {
      color: #0066cc;
    }
    section {
      background: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      max-width: 500px;
      margin: auto;
    }
    ul {
      list-style: none;
      padding-left: 0;
      font-size: 18px;
    }
    li {
      margin-bottom: 15px;
      display: flex;
      align-items: center;
    }
    input[type="checkbox"] {
      transform: scale(1.4);
      margin-right: 12px;
      cursor: pointer;
    }
  </style>
</head>
<body>

  <header>
    <h1>Bugünkü Görevler</h1>
  </header>

  <section>
    <ul>
      <li><input type="checkbox" id="gorev1" /><label for="gorev1">Uyan</label></li>
      <li><input type="checkbox" id="gorev2" /><label for="gorev2">Kahvaltı yap</label></li>
      <li><input type="checkbox" id="gorev3" /><label for="gorev3">Kısa egzersiz</label></li>
      <li><input type="checkbox" id="gorev4" /><label for="gorev4">Sosyal aktiviteler</label></li>
      <li><input type="checkbox" id="gorev5" /><label for="gorev5">Oyun</label></li>
      <li><input type="checkbox" id="gorev6" /><label for="gorev6">Ders çalışma</label></li>
      <li><input type="checkbox" id="gorev7" /><label for="gorev7">Kitap okuma</label></li>
      <li><input type="checkbox" id="gorev8" /><label for="gorev8">Aile içi aktiviteler</label></li>
      <li><input type="checkbox" id="gorev9" /><label for="gorev9">Gece hazırlığı</label></li>
      <li><input type="checkbox" id="gorev10" /><label for="gorev10">Uyku</label></li>
    </ul>
  </section>

  <script>
    window.onload = function() {
      for(let i=1; i<=10; i++) {
        let cb = document.getElementById('gorev' + i);
        let saved = localStorage.getItem('gorev' + i);
        if(saved === 'true') cb.checked = true;
        cb.addEventListener('change', function() {
          localStorage.setItem('gorev' + i, this.checked);
        });
      }
    }
  </script>

</body>
</html>
