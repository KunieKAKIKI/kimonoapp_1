# 以下にクイックソートを行う関数を定義
def quick_sort(sort_number)
  return sort_number if sort_number.length < 2 #要素が1つのみの場合はそのまま返却
  target = sort_number.shift #shift:配列の先頭を取得
  smallers = []
  biggers = []
  sort_number.each do |sort_numbers|
    if sort_numbers < target
      smallers << sort_numbers
    else
      biggers << sort_numbers
    end
  end
  quick_sort(smallers) + [target] + quick_sort(biggers)
    #smallersとbiggersをそれぞれソートして統治
end

numbers = [4,8,6,5,2,1,3,9,7]

p quick_sort(numbers)
