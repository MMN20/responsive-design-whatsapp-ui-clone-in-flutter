const data = [
  {
    'name': 'Mustafa mahmood',
    'message': 'Hey, how are you doing?',
    'time': '3:53 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'John Doe',
    'message': 'Hello, whats up',
    'time': '2:25 pm',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
  },
  {
    'name': 'Aiman',
    'message': 'Hello, I want to sleep.',
    'time': '1:03 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'Dad',
    'message': 'Call me, have some work',
    'time': '12:06 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'Mom',
    'message': 'You ate food?',
    'time': '10:00 am',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
  },
  {
    'name': 'Jurica',
    'message': 'Yo!!!!! Long time, no see!?',
    'time': '9:53 am',
    'profilePic':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Albert Dera',
    'message': 'Am I fat?',
    'time': '7:25 am',
    'profilePic':
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Joseph',
    'message': 'I am from International Olym...',
    'time': '6:02 am',
    'profilePic':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Sikandar',
    'message': 'Lets Code!',
    'time': '4:56 am',
    'profilePic':
        'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Ian Dooley',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
];

const messages = [
  {"isMe": false, "text": "Hey, how's your day going!!", "time": "10:00 am"},
  {
    "isMe": true,
    "text": "Not bad, just the usual grind. How about yours?",
    "time": "11:00 am"
  },
  {
    "isMe": false,
    "text": "Pretty good, thanks! Anything exciting happening",
    "time": "11:01 am"
  },
  {
    "isMe": false,
    "text":
        "Not really, just work and errands. But I'm looking forward to the weekend. Any plans?",
    "time": "11:01 am"
  },
  {
    "isMe": true,
    "text": "Yeah, thinking of catching a movie. Any recommendations?",
    "time": "11:03 am"
  },
  {
    "isMe": false,
    "text":
        " Well, I saw this new thriller that was pretty intense. If you're into suspense, you might like it",
    "time": "11:04 am"
  },
  {
    "isMe": true,
    "text":
        " Sounds intriguing! I'll check it out. By the way, did you hear about the new coffee shop that opened downtown?",
    "time": "11:05 am"
  },
  {
    "isMe": false,
    "text": "Oh, really? I hadn't heard. Is it any good?",
    "time": "11:06 am",
  },
  {
    "isMe": true,
    "text":
        "Yeah, the atmosphere is great, and they have amazing pastries. We should go together sometime.",
    "time": "11:15 am",
  },
  {
    "isMe": false,
    "text": "That sounds like a plan! How about Saturday afternoon?",
    "time": "11:17 am"
  },
  {
    "isMe": false,
    "text":
        "Saturday works for me. I'll text you the details. On a different note, have you started reading any interesting books lately?",
    "time": "11:16 am"
  },
  {
    "isMe": true,
    "text":
        "Actually, yes! I just started a sci-fi novel, and it's captivating. The plot twists are keeping me hooked.",
    "time": "11:17 am"
  },
  {
    "isMe": false,
    "text":
        "Nice! I've been meaning to get back into reading. Maybe I'll pick up that book after the movie.",
    "time": "11:18 am",
  },
  {
    "isMe": true,
    "text":
        "Definitely! We can compare notes when you're done. Hey, did you ever try that new recipe I shared with you?",
    "time": "11:19 am",
  },
  {
    "isMe": false,
    "text":
        "Oh, the pasta one? Yeah, I made it last night. It was delicious! Thanks for sharing.",
    "time": "11:21 am",
  },
  {
    "isMe": true,
    "text":
        "Awesome! I'm glad you liked it. It's a family recipe. Speaking of which, my mom's birthday is coming up. Any gift ideas?",
    "time": "11:22 am",
  },
  {
    "isMe": false,
    "text":
        "Hmm, maybe a personalized photo album or a spa day? Something to make her feel special.",
    "time": "11:23 am",
  },
  {
    "isMe": true,
    "text":
        "Great suggestions! I'll look into that. Thanks for the help. Anyway, got to get back to work now. Catch you later?",
    "time": "11:24 am",
  },
  {
    "isMe": false,
    "text":
        "Sure thing! Take care, and we'll plan that movie and coffee outing soon.",
    "time": "11:25 am",
  },
];
