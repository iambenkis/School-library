class Trimmer
  def nameable(name)
    name = name[0..9] if name.length > 10
    name
  end
end