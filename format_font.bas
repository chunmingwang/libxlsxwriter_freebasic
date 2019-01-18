/'
 * Example of writing some data with font formatting to a simple Excel
 * file using libxlsxwriter.
 *
 * Copyright 2014-2017, John McNamara, jmcnamara@cpan.org
 *
 * translated by Lee June by using https://github.com/retsyo/libxlsxwriter_freebasic
 '/

#include "auto_xlsxwriter.bi"

function main() as Integer

    /' Create a new workbook. '/
    var workbook  = workbook_new("format_font.xlsx")

    /' Add a worksheet. '/
    var worksheet = workbook_add_worksheet(workbook, NULL)

    /' Widen the first column to make the text clearer. '/
    worksheet_set_column(worksheet, 0, 0, 20, NULL)

    /' Add some formats. '/
    var format1   = workbook_add_format(workbook)
    var format2   = workbook_add_format(workbook)
    var format3   = workbook_add_format(workbook)

    /' Set the bold property for format 1. '/
    format_set_bold(format1)

    /' Set the italic property for format 2. '/
    format_set_italic(format2)

    /' Set the bold and italic properties for format 3. '/
    format_set_bold  (format3)
    format_set_italic(format3)

    /' Write some formatted strings. '/
    worksheet_write_string(worksheet, 0, 0, "This is bold",    format1)
    worksheet_write_string(worksheet, 1, 0, "This is italic",  format2)
    worksheet_write_string(worksheet, 2, 0, "Bold and italic", format3)

    /' Close the workbook, save the file and free any memory. '/
    workbook_close(workbook)

    return 0
End Function

main()