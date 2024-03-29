---
title: 03. კომპიუტერები
parent: ლექციები
---

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}



ამ ლექციაში შევეცდებით კარგად გავიგოთ, რას ნიშნავს, როდესაც ვამბობთ რომ კომპიუტერში ყველაფერი არის რიცხვი. როგორ შეიძლება, რომ მხოლოდ და მხოლოდ ციფრების მიმდევრობით მუშაობდეს ყველა ციფრული პროგრამა, რომელსაც ვიყენებთ?


## ბიტი და ბაიტი
ჩათვალეთ, რომ ციფრულ ტექნიკას შეუძლია 'უჯრიანი' ფურცლის ტიპის რიცხვების წაკითხვა. თითოეულ უჯრაში შეგვიძლია ჩავწეროთ ერთი ციფრი. ამ ციფრს (უჯრის ზომას) ვუწოდოთ ბიტი. ათობით სისტემაში საკმაოდ პატარა რიცხვი გამოდის (მით უფრო ნაკლები ორობითში), ამიტომ სტანდარტულად ერთი რიცხვი კომპიუტერში შედგება 8 ციფრისგან. თუ 10000000-ზე ნაკლებია, წინ 0-ები წერია მაინც. ეს გვეხმარება რიცხვების დასაწყისი და დასასრულის გაგებაში.  

მიუხედავად იმისა, რომ დღეს ჩვენი მაგალითები ათობითში იქნება და 1-ებს და 0-ებს არ გამოვიყენებთ, მთავარი პრინციპი იგივეა. ვისაც უფრო დეტალურად გაინტერესებთ ორობითი სისტემის გაგება, შეგიძლიათ უყუროთ crash course-ის ან სხვა youtube არხის ვიდეოს.

## კომპიუტერის ნაწილები
### პროცესორი
კალკულატორი. შეუძლია რამდენიმე რიცხვზე მარტივი ოპერაციების ჩატარება. პროცესორში ოპერაციიაც რიცხვით არის გამოსახული. მაგალითად, თუ გვაქვს 4 ბაიტიანი რიცხვები (8-ის მაგივრად, გრძელი რომ არ გამოვიდეს), 0-დან 1990-მდე იქნებოდა რიცხვი, ხოლო 1990-დან - მიმატება, გამოკლება და ა.შ.

ერთადერთი განსხვავება ისაა, რომ ჯერ ოპერაცია იწერება, შემდეგ კი რიცხვები. ეს იმიტომ არის, რომ ზოგ ოპერაციას ერთი რიცხვი აქვს 

ანუ `2+331` ჩაიწერებოდა, როგორც `0002199100331`

რეალობაში ბევრად უფრო მეტი ინსტრუქცია არსებობს. 

### მეხსიერება
თუ რამდენიმე რიცხვზე მეტის დამახსოვრება გვჭირდება, ცალკე რვეულივით გვაქვს და იქ ვწერთ. პროცესორში შეგვიძლია ჩავიწეროთ ბოლოს რომელი რიცხვი ჩავწერეთ. რვეულში შეგვიძლია (რიცხვების სახით) ჩავწეროთ რა ოპერაციები გვჭირდება. 


## ოპერატიული სისტემები
### მთავარი პასუხისმგებლობები
- პროცესების მართვა: რომელი პროგრამის გაშვების ჯერია, რომელმა პროგრამამ გაჭედა
- ფიზიკური ნაწილების მართვა და დაცვა:
    + რომელ პროგრამას რა მეხსიერებაზე აქვს წვდომა
    + პერიფერიების (usb, disk, ethernet, wifi card, sound card) დაკავშირება
- ფაილების მართვა

სხვა ყველაფერი არის დამატებითი პროგრამა (მაგალითად, ფაილის შესაბამისი პროგრამის პოვნა, რომ პროგრამის გახსნის გარეშე ჩაირთოს)


### ლინუქსი
windows-ზე ეს პროგრამები ავტომატურად არის დაყენებული და მისი შეცვლა ან კონფიგურაცია თითქმის შეუძლებელია. ლინუქსზე ყველაფერი სხვანაირადაა - არის ბევრი ალტერნატივა იმის, თუ როგორი არის ოპერატიული სისტემა და ხშირ შემთხვევაში ყველაფერზე კონტროლი გაქვს. თუ უველაფრის სათითაოდ არჩევა არ გინდა, არსებობს ბევრი წინასწარ შერჩეული Desktop Environment, რომლებიც unified experience-ს სთავაზობენ მომხმარებელს.

#### დამატებითი პროგრამები
- **display manager**
- **window manager**
- **panel**
- **file explorer**
- **notification service**

## ფაილები და ფორმატები
### extension
### ტექსტური

#### word
სცადეთ ახალი word ფაილის შექმნა და მასში ჩაწერეთ რამე სიტყვა ინგლისურად. კიდევ რამდენიმე სცადეთ და დააკვირდით ცვლილებებს
- დაამატეთ სათაური
- რომელიმე სიტყვა გახადეთ ბოლდი 
- ჩაწერეთ ქართული სიტყვები

### სურათი
- რა არის პიქსელი
![https://images.ctfassets.net/1khq4uysbvty/3ilqI18qg7SJCwSvj52GWr/6a6a08e458503ed55db4651035763b49/pixel_density.png?&w=736]

- როგორ მუშაობს rgb
- სურათის შენახვის ყველაზე მარტივი გზა არის rgb მნიშვნელობის (ანუ სამი ციფრის) პიქსელებად შენახვა, მაგრამ ეს დიდ მეხსიერებას წაიღებს ტყუილად. ამიტომ სურათები ძირითადად არის რომელიმე *კომპრესირებულ* ფორმატში 


### ვიდეო
- მარტივი: სურათების სერია
- კომპრესირებული: ცვლილებების სერია

ფაილში ხმაც შენახული უნდა იყოს (ამიტომ იყო ხოლმე, რომ windows media player-ში შეიძლება ვიდეო ჩართულიყო და ხმა არა, extension-ის გადმოწერის შემდეგ კი ორივე მუშაობდა).

### არქივი 
ცნობილი ფორმატები: zip, rar, tar.gz

ორი მიზნისთვის გამოიყენება
- კომპრესირება (ნებისმიერი ფაილის, ეს ხომ უბრალოდ რიცხვების თანმიმდევრობაა)
- ბევრი ფაილის ერთ ფაილად გარდაქმნა (როგორც წესი )
- ორივე ერთად (რაც უფრო დიდია რიცხვბის მიმდევრობა, უფრო ეფექტურად იმუშავებს ალგორითმი). ცალ-ცალკე ბევრი ფაილის დაკომპრესირების მაგივრად ერთი იმავე ზომის რომ დავაკომპრესიროთ, შეიძლება უფრო სწრაფიც იყოს და თან საბოლოოდ მეტი სივრცე დავზოგოთ.

მაგალითისთვის დაარქივეთ რამდენიმე ტექსტური ფაილი (დაიმახსოვრეთ შიგნით რა წერია, რა ქვია ფაილებს) და გახსენით notepad ან რამე მსგავსი პროგრამით

## შემაჯამებელი კითხვები
ამ კვირის განმავლობაში იფიქრეთ იმაზე, თუ ვინ როგორ მონაწილეობს (ოპერატიული სისტემა, პროგრამა, კომპიუტერის ნაწილი) ოპერაციებში, რომელსაც გააკეთებთ. შეეცადეთ წარმოიდგინოთ, მოაგროვეთ კითხვები და მომავალ ლექციაზე ვისაუბროთ.

რა ხდება კომპიუტერში, როდესაც:
- ვაჭერთ ჩართვის ღილაკს
- ვხსნით/ვხურავთ JSKarel-ს. ვინახავთ კოდის ფაილს
- ვხსნით word დოკუმენტს
- აღვადგენთ შემთხვევით გათიშულ დოკუმენტს


## დამატებითი რესურსები
- [კომპიუტერების ისტორია](https://www.youtube.com/watch?v=O5nskjZ_GoI)
- [ვიზუალური ტური კომპიუტერში](https://www.youtube.com/watch?v=AkFi90lZmXA)
- [კომპიუტერის მეხსიერების მუშაობის პრინციპი უფრო დეტალურად](https://www.youtube.com/watch?v=TQCr9RV7twk)
- [კომპრესირების მარტივი ახსნა](https://www.youtube.com/watch?v=OtDxDvCpPL4)
- [კომპრესირების ახსნა პროფესორისგან](https://www.youtube.com/watch?v=Lto-ajuqW3w)
- [png და jpeg ფაილებს შორის განსხვავება](https://www.youtube.com/watch?v=Ba89cI9eIg8)

თუ რამე საინტერესოს იპოვით, დაპოსტეთ კომენტარებში ან კლასრუმზე :)
