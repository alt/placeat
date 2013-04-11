-- 
--  This is file `placeat.lua',
--  generated with the docstrip utility.
-- 
--  The original source files were:
-- 
--  placeat.dtx  (with options: `lua')
--  
--  EXPERIMENTAL CODE
--  
--  This package is copyright © 2013 Arno L. Trautmann. It may be distributed and/or
--  modified under the conditions of the LaTeX Project Public License, either version 1.3c
--  of this license or (at your option) any later version. This work has the LPPL mainten-
--  ance status ‘maintained’.
function pdf_print (...)
  for _, str in ipairs({...}) do
    pdf.print(str .. " ")
  end
  pdf.print("\string\n")
end

function move (p1,p2)
  pdf_print(p1,p2,"m")
end

function line (p1,p2)
  pdf_print(p1,p2,"l")
end

function linewidth (w)
  pdf_print(w,"w")
end

function stroke ()
  pdf_print("S")
end
-- 
--  End of File `placeat.lua'.
