def horizantalLogic(arr,symbol,i)
    if arr[i][0] == symbol && arr[i][1] == symbol && arr[i][2] == symbol
      return true
    end 
  end
  
  #print horizantalLogic([[0,0,0],[1,1,1],[7,7,7]],7,2)
  
  def colIntoRow(arr)
  result = []
    for i in 0..2
      col = []
      for j in 0..2
        col.push(arr[j][i])
      end
      result.push(col)
    end
  return result
  end
  
  def verticalLogic(arr,symbol,i)
     col = colIntoRow(arr)
     return  horizantalLogic(col,symbol,i)
  end
  
  #puts verticalLogic([[0,1,2],[0,1,2],[0,1,2]],2,2)
  
  def interSectingLogicA(arr,symbol)
    if arr[0][0] == symbol && arr[1][1] == symbol && arr[2][2] == symbol
      return true
    end
  end
  
  def interSectingLogicB(arr,symbol)
    if arr[2][0] == symbol && arr[1][1] == symbol && arr[0][2] == symbol
      return true
    end
  end
  
  #puts interSectingLogicB([[0,1,1],[1,1,2],[1,2,0]],1)
  
  
  
  