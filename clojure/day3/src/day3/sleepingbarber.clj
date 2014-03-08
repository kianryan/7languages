(ns day3.sleepingbarber)

  ;atoms
  ;agents

  ;A barber shop takes customers.
  ;Customers arrive at random intervals, 10 to 30 ms.
  ;Three chairs in the waiting room.
  ;One barber one barber chair.
  ;barber chair empty -> customer sits in chair, wakes up barber, gets haircut.
  ;If the chairs are occupied, customers turn away.
  ;Haircits take 20 miliseconds.
  ;Customer receives haircut, gets up and leaves.

(def chairs (ref 0))
(def haircuts (ref 0))

  ; Design a dispatcher to dispatch a new customer every n milliseconds.
;

(def customers (agent 0))
(def barber_chair (agent 0))

(defn cut_hair [x]
  (do
    (Thread/sleep 20))
    (inc x))

