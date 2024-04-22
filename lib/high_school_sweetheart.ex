defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.first(String.trim(name))
  end

  def initial(name) do
    String.upcase(first_letter(name))
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    first_name = List.first(String.split(full_name))
    last_name = List.last(String.split(full_name))
    initial(first_name) <> " " <> initial(last_name)

  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
   **            *            **
    **                         **
   **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """

  end
end
