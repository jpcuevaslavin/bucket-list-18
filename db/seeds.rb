9.times do |i|
  Todo.create(
    title: "Tarea #{i+1}",
    image: "https://picsum.photos/400/400?image=#{i+40}"
  )
end