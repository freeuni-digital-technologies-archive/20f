---
title: 14. ვებ აპლიკაცია 2 - ლაიქი, პოსტის წაშლა
parent: სემინარები
---


ამ რესურსის გამოყენების რჩევები იხილეთ სემინარების გვერდზე

+ [საწყისი კოდი](https://codesandbox.io/s/seminar14-webapp2-starter-fsxgv)
+ [საბოლოო კოდი](https://codesandbox.io/s/seminar14-webapp2-final-fsxgv)

- TOC
{:toc}


ჩვენი მიზანია ყოველ პოსტს დავუმატოთ ორი ღილაკი - მოწონების და წაშლის. 


პირველი, რასაც ამ დავალების წაკითხვისას უნდა მივხვდეთ - დაგვჭირდება ორი შესაბამისი ფუნქცია, რომელსაც ამ ღილაკებს მივაბამთ. 

## მოწონება
### ღილაკის დამატება და ფუნქციის მიბმა
დაპოსტვის ღილაკისგან განსხვავებით, ღილაკს index.html-ში ვერ დავამატებთ - ყველა პოსტს ცალკე ჭირდება. ნათელია, რომ ეს ღილაკი `createNewPost()` ფუნქციაში უნდა ჩავსვათ. ტრადიციულად პოსტის რეაქციები ტექსტის ქვემოთაა, ამიტომ `post_text div`-ის შემდეგ დავამატოთ ახალი div და იქ ჩავსვათ ღილაკი. ღილაკამდე კი ეწეროს რამდენი ლაიქი აქვს

```html
<div class="post_actions">
    <span class="post_like_count">0</span> likes
    <button class="post_like" onclick="like()">like</button>
</div>
```

ახლა დავფიქრდეთ, რა უნდა გააკეთოს `like()` ფუნქციამ. ჩვენ გვჭირდება post_like_count-ის innerText-ის შეცვლა. ამიტომ მოდი ვიპოვოთ ეს ელემენტი. დასაწყისისთვის, ორ რამეზე ერთდროულად რომ არ ვიფიქროთ, უბრალოდ რამე ნებისმიერი რიცხვით შევცვალოთ. ამ ეტაპზე ჩვენი მიზანი მხოლოდ ის არის, რომ სწორი ელემენტი ვიპოვოთ.

```js
function like() {
    // იპოვე პირველი span ელემენტი, რომელსაც აქვს კლასი post_like_count
    let like_count = document.querySelector('span.post_like_count');
    like_count.innerText = 2;
}
```

როდის იმუშავებს და როდის არ იმუშავებს ეს ფუნქცია? წესით არასწორია, მაგრამ რთული ზუსტად ის არის, რომ ზოგჯერ 'სწორად' იმუშავებს და თუ მარტო პირველ ვერსიას შეამოწმებთ, შეიძლება შეცდომაში შეგიყვანოთ.

ეს კოდი ყოველთვის ბოლო (ყველაზე ზემოთ) მყოფი პოსტის like_count-ს შეცვლის, რადგან ასეთი კლასით ბევრი ელემენტიდან პირველი სწორედ ის იქნება. `like()` ფუნქციამ უნდა იცოდეს, რომელი პოსტი დაალაიქეს - ანუ მას ჭირდება არგუმენტი. ამ არგუმენტის მნიშვნელობა კი `postId` უნდა იყოს.


### სწორი პოსტის like_count-ის გაზრდა

```js
function like(postId) {
    let post =  document.getElementById('post' + postId); 
    // პოსტი ვიპოვეთ. ამ პოსტში მხოლოდ ერთი post_like_count ელემენტი იქნება. 
    let like_count = post.querySelector('span.post_like_count');
    like_count.innerText = 2;
}
```

არ დაგვავიწყდეს, რომ ღილაკზე მიმაგრებულ ფუნქციაში ეს არგუმენტი გადავაწოდოთ. 

```html
<button class="post_like" onclick="like(${postId})">like</button>
```

codesandbox ედიტორში ერთი პრობლემაა - თუ ღილაკს გვინდა ფუნქცია მივაბათ, აუცილებელია კოდის ბოლოს დავწეროთ

```js
window.like = like
```

### like_count-ის ინკრემენტაცია
ახლა დროა მოწონებების რაოდენობა ყოველ ჯერზე ერთით გავზარდოთ. თავიდან ალბათ ამას ვცდიდით.

```js
like_count.innerText = like_count.innerText + 1;
```

რას გააკეთებს ეს ხაზი? რატომ? innerText სტრინგია, სტრინგებისთვის კი `+` ოპერატორი მიკერებას ნიშნავს და არა მიმატებას. გვინდა ჯავასკრიპტს ვუთხრათ, რომ ეს სტრინგი რიცხვად აღიქვას.

> search: javascript convert string to number

სამი შემოთავაზებული ვარიანტიდან `Number()` ყველაზე მარტივი ჩანს.

```js
like_count.innerText = Number(like_count.innerText) + 1;
```

## წაშლა
თუ მოწონებას მიხვდით, წაშლა ბევრად უფრო მარტივი„ა. ღილაკზე მიმაგრებულ ფუნქციაში იმავე პრინციპით ვიპოვოთ პოსტის ელემენტი და წავშალოთ.

> search: javascript delete html element

```html
<div class="post_actions">
    <span class="post_like_count">0</span> likes
    <button class="post_like" onclick="like(${postId})">like</button>
    <button class="post_delete" onclick="deletePost(${postId})">delete</button>
</div>
```

```js
function deletePost(postId) {
    let post = document.getElementById('post' + postId);
    post.parentNode.removeChild(post); // კი, უკუღმართი პრინციპია. ასე ხდება როცა 10 დღეში შექმნილი პროგრამირების ენა სტანდარტი ხდება. 
}
```