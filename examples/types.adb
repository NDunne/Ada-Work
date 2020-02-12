with Ada.Text_IO; use Ada.Text_IO;
procedure Types is

  type Weekday is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
  subtype Hour_T   is Integer range 0 .. 23;
  subtype Min_Sec_T is Integer range 0 .. 59;
  type Slot is
    record
      S : Min_Sec_T;
      M : Min_Sec_T;
      H : Hour_T;
      D : Weekday;
    end record;
  type Slot_Access is access Slot;

  Exmpl : Slot_Access;
  Mins : Float := 34.1;

-- Types Body
begin
  Exmpl := new Slot'(Min_Sec_T'First, Integer(Mins),
                     Hour_T'Last, Fri);
  Put_Line(Weekday'Image(Exmpl.D) 
           & " " & Integer'Image(Exmpl.H)
           & ":" & Integer'Image(Exmpl.M)
           & ":" & Integer'Image(Exmpl.S));
end Types;
