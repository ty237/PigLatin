public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  char[] vowels = {'a', 'e', 'i', 'o', 'u'};
  for (int i2 = 0; i2 < word.length(); i2++) {
    for (int i = 0; i < vowels.length; i++) {
      if (word.charAt(i2) == vowels[i]) return i2;
    }
  }
  return -1;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if(findFirstVowel(sWord) == 0) {
    return sWord + "way";
  } else if (sWord.substring(0, 2).equals("qu")) {
    return sWord.substring(2, sWord.length()) + "qu" + "ay";
  } else if (findFirstVowel(sWord) != -1) {
    int index = findFirstVowel(sWord);
    return sWord.substring(index, sWord.length()) + sWord.substring(0, index) + "ay"; 
  }
  else
  {
    return "ERROR!";
  }
}
