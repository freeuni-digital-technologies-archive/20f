---
title: 15. ვებ აპლიკაცია 3 - მონაცემთა შენახვა
parent: სემინარები
---

ამ რესურსის გამოყენების რჩევები იხილეთ სემინარების გვერდზე.

**მონაცემთა შენახვის გამოყენება არ შევა ფინალურ გამოცდაში**. არც დავალებაში. ფინალურ პროექტშიც ცოტა წილი ექნება. ამიტომ თუ არ გაინტერესებთ აუცილებელი არაა ისწავლოთ და გესმოდეთ. სემინარში სხვა ახალ მასალასაც ვისწავლით და იმაზე კონცენტრირდით.

- [საწყისი კოდი](https://codesandbox.io/s/seminar15-webapp3-starter-mhw39)
- [საბოლოო შედეგი](https://codesandbox.io/s/seminar15-webapp3-final-nmctl)

## ავტორიზაციის გვერდი

### მომზადება
შექმენით ახალი ფაილი `index.hml` და დაამატეთ ორი input ელემენტი, ერთის id იყოს username, მეორის კი password. 
დაამატეთ ორი ღილაკი, შესაბამისი id და onclick ფუნქციებით - login, register. ბარემ script თეგიც დავამატოთ და ფუნქციის ჩონჩხები გავამზადოთ.


> search: html hide password


```html
    <input id="username" placeholder="username" />
    <input id="password" placeholder="password" type="password"/>
    <button id="login" onclick="login()">log in</button>
    <button id="register" onclick="register()">register</button>
    <script>
        function login() {}
        function register() {}
    </script>
```

### სხვა გვერდზე გადამისამართება
მოდი ჯერ პატარა მიზანი დავისახოთ: login ღილაკზე დაჭერისას ყველა შევუშვათ პოსტების გვერდზე. თუ ეს გამოგვივიდა, შემდეგ ერთი `if()`-ის ჩამატებაღა დაგვრჩება.

> search: javascript change page

```js
document.location.href = 'index.html'; // ჩაწერეთ login() ფუნქციაში
```

### პაროლის შემოწმება
ახლა კი დროა input-ების მნიშვნელობა წავიკითხოთ. იმის დასადასტურებლად, რომ პაროლი სწორია, დეკომპოზიციას გამოვიყენებ და ამ საქმეს სხვა ფუნქციას გადავაბარებ.

```js
function login() {
    let username = document.getElementById('username').value
    let password = document.getElementById('password').value       
    if (correctPassword(username, password)) {
        document.location.href = 'index.html';
    } else {
        alert('password is incorrect');
    }
}
```

რა ტიპის სტრუქტურა გამოვიყენოთ მონაცემების შესანახად?
- ბევრი მომხმარებელი გვყავს - სია
- თითოეულ მომხმარებელზე რამდენიმე სხვადასხვა მნიშვნელობა გვჭირდება - ობიექტი ატრიბუტებით (username, password)

გვერდის დასაწყისში შექმენი ახალი სია, რეგისტრირებული მომხმარებლებით:
```js
let users = [
   { username: 'iarigby', password: '12345678' },
   { username: 'joe', password: 'pass'}
]
```
ახლა კი პაროლის შემოწმებისას უნდა ვიპოვოთ ისეთი ობიექტი სიაში, რომლის username არის input ელემენტში შეყვანილი მნიშვნელობის ტოლი და შევადაროთ, ემთხვევა თუ არა შეყვანილი პაროლი ამ ობიექტში შენახულ პაროლს.

> search: javascript find element in array

> !!! `find`-ის გამოყენება გამოცდაზე არ მოვა

```js
function correctPassword(username, password) {
    let found = users.find(element => element.username === username)
    return found.password === password;
}
```

### ახალი მომხმარებლის დამატება
> search: javascript add element to array

```js
function register() {
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    let user = {
        username: username,
        password: password
    };
    users.push(user);
}
```

### მონაცემთა ბაზის გამოყენება
იმისთვის, რომ ჩვენი ობიექტები მეხსიერებაში მყოფი სიის მაგივრად (რომელიც ყოველ დარესტარტებაზე წაიშლება) უფრო სტაბილურ და გამძლე ადგილას შევინახოთ, გვაქვს რამდენიმე დამხმარე ფუნქცია.
ეს ნაწილი ამ სემესტრში სავალდებულო არ არის და დროში შეზღუდვის გამო დეტალურ ახსნას ვერ დავურთავ. 

გამოყენება: html დოკუმენტში ჩასვით `<script src="database.js"></script>` შემდეგ სასურველ js ფაილში:

```js
let posts = new Database('posts') // ქმნის ახალ ცხრილს, სადაც შეინახავთ პოსტებს
let post = posts.create({ user: 'student', text: ''}) // დაბრუნებულ post ობიექტს ავტომატურად აქვს id
posts.getAll() // ყველა შენახული პოსტის სიად მიღება
posts.getById(id) // პოსტის მოძებნა, რომლის id არის id
posts.get('user', 'student') // პირველი ობიექტის პოვნა, რომლის user ატრიბუტი არის 'student' ტოლი
posts.update(obj) // ობიექტის id-ს მქონე პოსტს ჩაანაცვლებს ამ ობიექტით
posts.delete(postId) // postId id-ის მქონე პოსტს წაშლის ცხრილიდან

```

ჩვენს `<script>` თეგში სადაც ფუნქციები გვიწერია, დასაწყისში შევქმნათ ახალი ბაზა. სიის შექმნის ხაზები კი წავშალოთ

ახალი მომხმარებლის დასამატებლად სიის `push()` ფუნქციის მაგივრად მონაცემთა ბაზის `create()` ფუნქცია გამოვიყენოთ. არსებულის პოვნისას კი users.get().

```js
let users = new Database("users");
// ....
function correctPassword(username, password) {
    let found = users.get("username", username);
    return found.password === password;
}
//...
function register() {
    // ...
    users.create(user);
}
```

ბოლოს, register() ფუნქციაში გავამზადოთ პაროლის ვალიდურობის შემოწმების ნაწილი - ბევრი საიტი დარეგისტრირებისას ითხოვს ხოლმე, რომ პაროლი მინიმუმ 8 სიმბოლო იყოს, ან შეიცავდეს ერთ რიცხვს ა.შ.

```js
if (satisfies(password)) {
  let user = { username: username, password: password};
  users.create(user);
} else {
  alert("bad password");
}
```

## news feed
პოსტების გვერდს დავუბრუნდეთ. ჩვენი ღირებული და მნიშვნელოვანი აზრები აქაც ყოველ გადატვირთვაზე ქრება. html დოკუმენტში `<script src="database.js"></script>` და `index.js`-ში პირველ ხაზზე `let posts = new Database('posts')` დაამატე. login-ის მსგავსად ორ ადგილას გვჭირდება 'ბაზასთან' დაკავშირება - პოსტების წაკითხვისას და მათ გამოჩენისას. ასევე პოსტის წაშლისას. 

რა შევინახოთ პოსტის ობიექტში? არ არის აუცილებელი ყველაფერი თავიდანვე მოვიფიქროთ. ახლა რასაც ვიყენებთ მხოლოდ ის: ტექსტი, ავტორი, ლაიქები. id-იც გვჭირდება, მაგრამ მონაცემთა ბაზის `create()` ფუნქცია ავტომატურად შექმნის და გაზრდის ამ რიცხვს. ამიტომ `let POSTID=...` ხაზი წაშალეთ. 

```js
function newPost() {
  // ...
  let post = posts.create({
    username: username,
    text: input,
    likes: 0
  })
  createNewPost(post);
}
```

createNewPost() ფუნქციაც შესაცვლელია. წარმოიდგინეთ, პოსტის ყველა ატრიბუტისთვის ცალკე არგუმენტი რომ ქონდეს. ადრე თუ გვიან გადაიქცევა ასეთ ფუნქციად: `createNewPost(userId, text, likes, comments, shares...)`. ასეთ დროს ყოველთვის სჯობს ერთი ობიექტი გადააწოდოთ ბევრი ატრიბუტით. ფუნქციაში ძველი არგუმენტებიც ახალი ობიექტის ატრიბუტებით უნდა ჩავანაცვლოთ

```js
function createNewPost(post) {
  let elem = `
    <div id="post${post.id}" class='post'>
    <div><span class="post_user">${post.username}</span></div>
        <div class="post_text">${post.text}</div>
    <div class="post_actions">
      <span class="post_like_count">${post.likes}</span> likes
      <button class="post_like" onclick="like(${post.id})">like</button>
      <button class="post_delete" onclick="deletePost(${post.id})">delete</button>
    </div>
    </div>`;
  document.getElementById("posts").insertAdjacentHTML("afterbegin", elem);
}
```


### შენახული პოსტების გამოჩენა გვერდის ჩატვირთვისას
გამოაქვეყნეთ პოსტი და გადატვირთეთ გვერდი. თითქოს არ შეინახა. ან - შეინახა, მაგრამ ჩვენ არსად ვკითხულობთ და ვაჩვენებთ შენახულ პოსტებს. ამისთვის გვერდის ჩატვირთვისას (დავუშვათ, მეორე ხაზზე) რამე ფუნქცია უნდა გამოვიძახოთ, ყველა შენახულ პოსტს createNewPosts()-ს გადააწვდის.

```js
function displayPosts() {
    let allPosts = posts.getAll()
    for (let post of allPosts) {
        createNewPost(post)
    }   
}

// არ დაგავიწყდეთ გამოძახება
displayPosts();
```


### ლაიქების შენახვა
```js
function like(postId) {
    let postObject = posts.getById(postId);
    let newLikeCount = postObject.likes + 1;
    postObject.likes = newLikeCount
    let LikeCountElem = post.querySelector("span.post_like_count");
    likeCountElem.innerText = newLikeCount;
}
```

## დუპლიკატი ლაიქები
იმისთვის, რომ მომხმარებელმა ორჯერ ვერ გაზარდოს ლაიქების რაოდენობა, გვჭირდება შევამოწმოთ, ამ მომხმარებელმა უკვე დაალაიქა თუ არა პოსტი. ანუ, გვჭირდება შევინახოთ იმ მომხმარებლების სახელი, ვინც დაალაიქეს.
 
newPost() ფუნქციაში ახალი ობიექტის შექმნისას `likes: 0,` ჩაანაცვლე `likes: [],`-ით.

displayPost() ფუნქციაში `${post.likes}` ჩაანაცვლე `${post.likes.length}`-ით.

ახლა გადავიდეთ like() ფუნქციაზე. აქ რამდენიმე რაღაც არის შესაცვლელი.

```js
function like(postId) {
  let postObject = posts.getById(postId);
  let username = document.getElementById("username");
  if (postObject.likes.includes(username)) {
    // თუ უკვე არსებობს ასეთი იუზერი პოსტის ლაიქებში, დავბრუნდეთ ფუნქციიდან (აღარ შევასრულოთ ამის შემდეგი ხაზები)
    return;
  }
  let post = document.getElementById("post" + postId);
  let likeCountElem = post.querySelector("span.post_like_count");
  // რიცხვის გაზრდის მაგივრად სიაში ობიექტს ვამატებთ
  postObject.likes.push(username);
  // ამის შეცვლაც არ დაგავიწყდეთ
  likeCountElem.innerText = postObject.likes.length;
  posts.update(postObject);
}
```

**!!! არ დაგავიწყდეს** ობიექტისთვის არსებული ატრიბუტის ტიპის შეცვლისას გამოიძახოთ posts.clear() კონსოლიდან, რომ ძველი, სხვა ფორმატის ობიექტები წაშალოთ. ფინალურ პროექტში ტესტები ავტომატურად აკეთებს ამას, ამიტომ თუ დაგავიწყდათ არ იქნება პრობლემა. ამ სავარჯიშოში რომ არ დაიბნეთ ამის გამო არის ეს მესიჯი.

## news feed sorting
> search: javascript sort array

ეს ასევე არ მოგეთხოვებათ არც ფინალურ პროექტში და არც გამოცდაზე. მხოლოდ ერთი ხაზი არის.

```js
allPosts.sort((post1, post2) => post1.likes - post2.likes);
```
