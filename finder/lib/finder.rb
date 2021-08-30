class Finder
  def index_of(list, value)
    list.each_with_index.map { |e, i| e.include?(value) ? i : nil }.compact
  end
end
