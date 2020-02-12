with Ada.Text_IO;
use  Ada.Text_IO;

procedure typeEx is 

  subtype Day_T   is Integer range    1 .. 31;
  type Month_T is (Jan, Feb, Mar, Apr, May, Jun,
                   Jul, Aug, Sep, Oct, Nov, Dec);
  subtype Year_T  is Integer range 1900 .. 2100;

  type Date is record
    Day   : Day_T;
    Month : Month_T;
    Year  : Year_T;
  end record;

  d : Date := (14, Feb, 2020);

begin
  Put_Line("Day:"     & Day_T'Image(d.Day) 
         & " | Month: " & Month_T'Image(d.Month)
         & " | Year:"   & Year_T'Image(d.Year)
  ); 
end typeEx;

