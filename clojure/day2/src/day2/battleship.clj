(ns day2.battleship)

(defprotocol Battleship
  (start [c])
  (play [c x])
  (win [c]))

(defrecord BattleshipGame [board]
  Battleship

  (start [_] (BattleshipGame. (vec (take 9 (repeatedly #(rand-int 2))))))

  (play [_ x] (BattleshipGame. (if (= (nth board x) 1) (assoc board x 2) board)))

  (win [_] (if (not-any? (fn [s] s == 1) board) :win :no-win))
  
