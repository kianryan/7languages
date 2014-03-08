(ns day3.vectoraccounts)

(defn create
  []
  (ref []))

(defn get
  [bank key]
  (@bank key))

(defn debit
  [bank key value]
  (dosync (alter bank assoc key (- (bank key) value))))

(defn credit
  [bank key value]
  (dosync (alter bank assoc key (+ (bank key) value))))
