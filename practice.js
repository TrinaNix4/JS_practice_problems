//given two strings, write a function to determine if the second string is an anagram of the first. an anagram is a word or phrase formed by rearranging the letters of another e.g. cinema formed from iceman

function validAnagram(first, second) {
  //first check if the first string and second string are equal in length. cannot be an anagram if not equal
  if (first.length !== second.length) {
    return false;
  }

  //create new object
  const lookup = {};
  //iterate over the first string
  for (let i = 0; i < first.length; i++) {
    //declaring variable called letter just to keep code looking neat (instead of putting first[i] everywhere)
    let letter = first[i];
    //if letter exists in the object lookup, add 1 to the total; otherwise set the letter equal to 1
    lookup[letter] ? (lookup[letter] += 1) : (lookup[letter] = 1);
  }
  console.log(lookup);

  //iterate over second string
  for (let i = 0; second.length; i++) {
    let letter = second[i];
    //if we can't find the letter or letter is zero then it's not an anagram
    if (!lookup[letter]) {
      return false;
      //if letter is present, minus one from the total count
    } else {
      lookup[letter] -= 1;
    }
  }
  return true;
}

validAnagram("anagrams", "nagaramm");
