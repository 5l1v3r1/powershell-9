# Powershell'de If Else Kullanımı

**if else koşul ifadelerinin nasıl kullanıldığına dair,günün saatine göre farklı mesaj veren bir script.**

```
echo "İsminiz:";
$isim=Read-Host;
$saat=(Get-Date).Hour;

if(($saat -gt 5) -and !($saat -gt 18)){
    echo ("İyi günler "+$isim);

}else {
 echo ("İyi akşamlar "+$isim);
}
```