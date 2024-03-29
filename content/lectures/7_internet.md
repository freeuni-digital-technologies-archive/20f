---
title: 06. ინტერნეტი
parent: ლექციები
---

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}


## შესავალი
### ისტორია
1969 წელს UCLA-ის სტუდენტი ARPANET-ის ქსელში სტენფორდს [დაუკავშირდა](https://thisdayintechhistory.com/10/29/first-message-on-the-internet/).და მეორე ცდაზე მესიჯი "login" გააგზავნა. 

(რამდენი ბაიტი იქნებოდა ეს მესიჯი?)

ARPANET არის პირველი კომპიუტერული ქსელი. ამ დროს მასში ოთხი უნივერსიტეტის კომპიუტერი იყო ჩართული.
დაკავშირების შემდეგ შეეცადა სისტემაში შესულიყო, და login-ბრძანების აკრეფვისას სტენფორდის სისტემა 'დაიქრაშა'. დაახლოებით ერთ საათში მიმღები კომპიუტერის პარამეტრების შეცვლის შემდეგ მცდელობა წარმატებით დასრულდა. სურათზე ხედავთ მიმღები კომპიუტერის მსგავს მოდელს. 

![sigma9](./img/sigma9.jpg) 

### მოცემულობა და შეზღუდვები
4 ცალი კომპიუტერიდან 50 მილიარდამდე:

- დღეში 8 ბაიტიდან [წამში 100 000](https://www.internetlivestats.com/one-second/) გეგაბაიტამდე
- 100 000 000 000 000-ჯერ მეტი

ანუ დღეს ერთ წამში ას ტრილიონჯერ მეტი მონაცემები გაიგზავნა, ვიდრე ინტერნეტის პირველ დღეს. დღის რიცხვს ჩვენი ტვინი კიდევ უფრო ვერ აღიქვამს (ასევე მაგდენ ნოლიანს რა ქვია, ვერ ვიხსენებ). დღეში კი კიდევ 60x60x24=86,400-ჯერ უფრო მეტი.

ერთი ინტერნეტ პაკეტი პლანეტის ერთი ბოლოდან მეორემდე 10-20 კომპიუტერს გაივლის და ამას 0.1 მილიწამსაც კი არ ანდომებს

და მნიშვნელოვანია ისიც, რომ ამ ყველა კომპიუტერს შორის სხვადასხვა კავშირია. ჯერ wifi-თ უკავშირდები შენს როუტერს, რომელიც სახლში დგას. როუტერი უკავშირდება მოდემს, რომელიც ანაწილებს ინტერნეტ კავშირს შენობაში. შეიძლება ქუჩაზე ჯერ ოპტიკური კაბელი არ არის, ანუ რაღაც მომენტში გადაერთვება ერთიდან მეორეზე. თუ ოკეანის გადაღმა გზავნით, თითქმის მთელი ევროპის პაკეტებთან ერთად იგზავნება უზარმაზარი ტრანს ატლანტიკური კაბელით.

![](https://mocomi.com/wp-content/uploads/2016/10/MOC_GIFO_INTERNET.gif)



### მთავარი პრინციპები
როგორ არის შესაძლებელი, რომ ინტერნეტი ასეთი მასშტაბური, მრავალფეროვანი და სწრაფი იყოს? და უფრო მეტიც, ნახევარი საუკუნის წინ შექმნილი მოდელს დღეს მილიარდობით მოწყობილობა უპრობლემოდ იყენებდეს? მთავარი მიზეზი ის არის, რომ ინტერნეტისთვის საჭირო ფუნქციები დაყოფილია ერთმანეთისგან მკაცრად იზოლირებულ შრეებად, ისე, რომ სხვადასხვა გადაჭრებმა ერთმანეთს ხელი არ შეუშალონ. ამ შრეების გაცნობის შემდეგ უკეთ გაიგებთ რაზე ვსაუბრობ. ნებისმიერი დიდი და რთული სისტემის შექმნისას აუცილებელია შემადგენელი ელემენტები რაც შეიძლება მინიმალისტური იყოს. ეს სტრატეგია ხშირად გამოიყენება კომპიუტერულ მეცნიერებებში (გაიხსენეთ დეკომპოზიცია). 

თითოეულ შრეს აქვს ორი მთავარი კომპონენტი

#### ინტერფეისი
პასუხისმგებლობა, რომლის შესრულებასაც პირდება შრე (ან სერვისი, ფუნქცია). ინტერფეისი პასუხობს კითხვას **რა** და არა **როგორ**. ინტერფეისს სრული თავისუფლება აქვს, როგორც უნდა ისე შეასრულოს ნაკისრები ვალდებულება. განსაზღვრული (რასაც უნდა დაემორჩილოს) არის მხოლოდ მოცემულობა და შედეგი. რაც უფრო პატარა და კარგად განსაზღვრულია პასუხისმგებლობა, უფრო მეტ სხვადასხვა პრობლემაზე შეგვიძლია გამოვიყენოთ ეს სერვისი. 

#### პროტოკოლი
წინასწარ შეთანხმებული პრინციპები, რომლითაც ერთი შრის ორი სუბიექტი ერთმანეთს უკავშირდება. მაგალითად, იმისთვის, რომ wifi კავშირი გვგქონდეს, გვჭირდება wifi სიგნალის გამცემი და ჩვენს კომპიუტერზე ან ტელეფონზე მისი მიმღები. Wifi-ს bluetooth-ით ვერ დავუკავშირდებით. მიუხედავად იმისა, რომ ეს ორი პროტოკოლი ერთი და იმავე პასუხისმგებლობას ასრულებს (მონაცემთა გადაცემა ერთი მოწყობილობიდან მეორეში), მათ ერთმანეთის არ ესმით.

## ინტერნეტის დონეები (OSI model)
ქვემოთ ჩამოწერილია თითოეული შრის პასუხისმგებლობა (ინტერფეისი) და პროტოკოლები

### 1. physical - ფიზიკური
თუ გვჭირდება 50 მილიარდი კომპიუტერი დავაკავშიროთ, პირველი, რასაც უნდა შევაცადოთ, არის 2 კომპიუტერის დაკავშირება.

- ინფორმაციის (რიცხვების) გაგზავნა ერთი კომპიუტერიდან მეორეში

პროტოკოლები: შნური (ethernet), ტალღების სხვადასხვა გადამცემი/მიმღები (wifi, bluetooth), 3G/4G/LTE/5G


### 2. data link - ბმული
- რამდენიმე სხვადასხვა გზავნილის დაჯგუფება (და შემდეგ განცალკევება), რომ ფიზიკური კავშირი მაქსიმალური ეფექტურობით იყოს გამოყენებული. 
- ფიზიკურ შრეზე დაშვებული შეცდომების გამოსწორება იმის გათვალისწინებით, თუ რომელი პროტოკოლი გამოიყენება ფიზიკურ შრეზე. wifi ტალღები ბევრად უფრო მარტივად დაზიანებადია (შესაბამისად მესიჯის ნაწილები იკარგება გზაში), ვიდრე კაბელში გამავალი ნაკადი. მათემატიკურად შესაძლებელია გადაცემისას დაფიქსირებული შეცდომების პოვნა და გამოსწორება, თუმცა ამისთვის საჭიროა მესიჯისთვის დამატებითი ინფორმაციის დართვა (იმის მიხედვით, რამდენად დიდ დაზიანებასთან გამკლავება გვსურს). თუ კავშირი სანდოა (შნური), უაზროდ გამოვიყენებდით ამ ალგორითმებს და გავზრდიდით ყველა მესიჯის ზომას.

### 3. network - ქსელი
![](https://i.gifer.com/L6dm.gif)

- ქსელის ორ წერტილს (კომპიუტერს) შორის ყველაზე მოკლე (სწრაფი) გზის პოვნა
- ქსელის დატვირთვის გადანაწილება 

რადგანაც ფიზიკური კავშირის პრობლემა მოგვარებულია, შეგვიძლია დავივიწყოთ, ქსელში რომელი ორი წყვილი რა გზითაა დაკავშირებული. აქ უბრალოდ იმაზე უნდა ვიფიქროთ, ყველაზე სწრაფი გზით როგორ მოვაგვაროთ ჩამოთვლილი პრობლემები. 

ყველაზე მნიშვნელოვანი გზის გამოთვლაა. ყველა გადამრთველმა რომ ყველა დანარჩენთან გზა გამოთვალოს და დაიმახსოვროს, ორ პრობლემას წააწყდება:
- არ ეყოფა დრო და ადგილი მეხსიერებაში 
- ეს გზა ყოველ წამს იცვლება და ასეულობით წელი რომც არ ჭირდებოდეს ამ გამოთვლას, ერთ წამში უკვე უსარგებლო იქნებოდა. 

ამიტომ იმის მაგივრად, რომ მთლიანი გზა დაიმახსოვრონ, ინტერნეტში თითოეულ გადამრთველს აქვს ცხრილი სხვა მისამართების და იმახსოვრებს მხოლოდ შემდეგ გაჩერებას ამ მისამართის (ან მისამართების ჯგუფის გზაზე). დაფიქრდით, ერთი ქალაქიდან მეორეში ქალაქში კონკრეტულ მისამართზე რომ მიდიოდეთ. გაგიჭირდებათ ვინმეს პოვნა, ვინც მთლიანი გზა დეტალურად იცის. ეს გადამრთველები ასევე პერიოდულად ამოწმებენ, რამდენად გადატვირთული არიან მათი მეზობლები და მხოლოდ ახლო გარემოზე დაკვირვების გზით ცდილობენ პაკეტთა ნაკადის განაწილებას. 

#### პროტოკოლები
აქამდე განხილული შრეები მხოლოდ ორი კომპიუტერის დაკავშირებას ეხება. ქსელში ბევრი კომპიუტერი შედის და ერთმა მესიჯმა რამდენიმე მათგანი უნდა გაიაროს. ამისთვის მნიშნველოვანია, რომ ყველამ იცოდეს სად გადააგზავნოს მესიჯი. ამიტომ ინტერნეტში ქსელის ერთი პროტოკოლი არსებობს - IP მისამართი, უნიკალური იდენთიფიკატორი, რომელიც ქსელში ჩართულ ყველა კომპიუტერს აქვს. 


## რას ვერ მოაგვარებს ქსელი
- დაკარგული პაკეტების თავიდან გაგზავნა

ორი მიზეზის გამო არ გვაწყობს: 1) ძალიან დიდი მეხსიერება დაჭირდება რამდენიმე მილიარდ გადამრთველს, რომ გამავალი პაკეტები შეინახონ. ასევე, დიდი ზომის მონაცემთა დისკზე შესანახად ჩაწერა/წაშლა წამში ასჯერ არც ისე სწრაფია.
2) ყველა გადართვა ორჯერ უფრო მეტ ხანს გაგრძელდება, რადგან შეფერხება იქნება დასტურის მოლოდინში. ამის გამო, ეს პრობლემა შემდეგი შრის მოსაგვარებელია.


რაც შეეხება გზავნილის ზომას, დიდი გზავნილის პატარებად დაყოფა ნიშნავს, რომ ქსელში სხვადასხვა გზით შეძლებენ წასვლას და უფრო მალე მივა ყველა ერთად, ვიდრე ერთი მეორის დალოდებისას. კიდევ რამდენიმე სხვა მიზეზის გამო, ინტერნეტ პაკეტები საკმაოდ მცირეა და მესიჯების დიდი (მაგრამ არა ყველა) ნაწილი უნდა დაიშალოს და მიღებისას აიწყოს.

## 4. ტრანსპორტი
- პაკეტების დანომვრა, აწყობა
- დაკარგული პაკეტების აღმოჩენა და თავიდან გაგზავნა

ამ პრობლემის მოგვარების ორი მთავარი გზა (პროტოკოლი) არსებობს:

### TCP
- ინფორმაციის მიმოცვლამდე კომპიუტერები ამოწმებენ კავშირს (3 way handshake)
- თითოეული ინტერნეტ პაკეტის გაგზავნის შემდეგ ელოდები დასტურს (ასევე ინტერნეტ პაკეტად გამოგზავნილ მესიჯს). 

### რა შემთხვევებში არის ეს პროცედურა ზედმეტი?
- ვიდეო ზარი - 2 წამის წინანდელი ნათქვამი რაში გვჭირდება?

კავშირის და ყოველი პაკეტის დასტურის გზავნა და ლოდინი დროის მხრივ ძვირი ოპერაციებია და ყოველთვის არ ღირს.

### UDP
ინტერნეტ პაკეტს აგზავნი და წარმატებებს უსურვებ :)

თუ არ ვამოწმებთ მივიდა თუ არა, აბა საიდან იგებენ აპლიკაციები, რომ ცუდი კავშირი გვაქვს?

განსხვავების უკეთ გასაგებად რამდენიმე მაგალითი:
- <https://images-cdn.9gag.com/photo/an5d7xV_700b.jpg>
- <https://i.redd.it/duv11av99nm11.png>

## 5. აპლიკაცია
კომპიუტერულ პროგრამებს ახლა ისღა დარჩენიათ, გადაწყვიტონ რომელი პროტოკოლი უნდათ - tcp თუ udp და როგორმე გაიგონ მესიჯის მიმღების IP მისამართი. სხვა ყველაფერი მათი საზრუნავი (და აწი თქვენიც) აღარაა.




