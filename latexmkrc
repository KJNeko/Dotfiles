$pdflatex = 'xelatex -file-line-error -synctex=1 -interaction=nonstop -shell-escape %S %O -verbose';
$pdf_viewer = "start xpdf -remote %R %0 %S";
$pdf_update_method = 4;
$pdf_update_command = "xpdf -remote %R -reload";
