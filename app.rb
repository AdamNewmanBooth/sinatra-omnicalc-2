require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f 
  @second_num =  params.fetch("first_number").to_f 
  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @sub_first_num = params.fetch("sub_first_number").to_f
  @sub_second_num = params.fetch("sub_second_number").to_f

  @sub_result = @sub_first_num - @sub_second_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard multiply") do

  @mult_first_num = params.fetch("sub_first_number").to_f
  @multsecond_num = params.fetch("sub_second_number").to_f

  @mult_result = @sub_first_num - @sub_second_num

  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  erb(:div_result)
end
