pragma solidity ^0.5.0;

contract DReddit {

  struct Post {
    uint creationDate;   
    bytes description;   
    address owner;
  }

  Post [] public posts;

  function createPost(bytes memory _description) public {
    uint postId = posts.length++;
    posts[postId] = Post({
      creationDate: block.timestamp,
      description: _description,
      owner: msg.sender
    });
  }
}

