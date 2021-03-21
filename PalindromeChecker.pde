public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(normalize(word).equals(reverse(normalize(word))))
    return true;
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    
    for(char c: str.toCharArray())
    {
      sNew = c + sNew;
    }
    
    return sNew;
}

public String normalize(String word)
{
  String normalizedWord = word.toLowerCase().replaceAll(" ", "").replaceAll("\\p{Punct}", ""); //i learned regex a year ago and this is all i remember
  
  return normalizedWord;
}
