public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String basicString(String word)
{
  String bob = "";
  for(int w = 0; w < word.length(); w++)
  {
    if(word.charAt(w) != ' ' && Character.isLetter(word.charAt(w)) )
    {
      bob = bob + word.charAt(w);
    }
  }
  bob = bob.toLowerCase();
  return bob;
}

public String reverseString(String bob)
{
  String reverseBob = "";
  for(int q = bob.length() - 1; q >= 0; q--)
  {
    reverseBob = reverseBob + bob.substring(q,q+1);
  }
  return reverseBob;
}


public boolean palindrome(String bob)
{
  bob = basicString(bob);
  System.out.println(bob);
  String reverseBob = reverseString(bob);
  System.out.println(reverseString(bob));

  if(bob.equals(reverseBob))
  {
    return true;
  }
  else 
  {
    return false;
  }

}

