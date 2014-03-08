(ns day1.core)

(defn big [st n] (> (count st) n))

(defn collection-type
  "Determines a collection type"
  [col]
  (cond
    (list? col) :list
    (vector? col) :vector
    (map? col) :map
    :else :unknown))
