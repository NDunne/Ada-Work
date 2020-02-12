with Ada.Text_IO; use Ada.Text_IO;

procedure Increment is 
  A, B : Integer;

  -- Helper Increment Function
  function Do_Inc 
    ( I : Integer; add : Integer := 1) 
    return Integer is
      result : Integer;
  begin
    result := I + add;
    Put_Line ("In:  " & Integer'Image (I)
            & ","     & Integer'Image (add));
    Put_Line ("Out: " & Integer'Image (result) );

    Put_Line("-");
    return result;
  end Do_Inc;

-- Start of Increment Body
begin
 A := 10; 
 A := do_inc (A);

 B := 5;
 A := do_inc (A,B); 

end Increment;
