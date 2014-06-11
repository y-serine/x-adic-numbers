;; it works only when "num" is larger than 1.
(defun x-adic (num base)
  (x-adic-down (* (mod (mod num base) 1) base) base (x-adic-up num  base "." ))
  )


(defun x-adic-up (num base str)
  (setq box (floor (mod num base)))
  (if (= 0 (setq next  (floor (/ num base)))) 
	  (concatenate 'string (number-to-string box) str) 
	(x-adic-up next base ( concatenate 'string (number-to-string box )  str) )
	))


(defun x-adic-down (num base str)
  (cond
   ((> (length str) 32) str)
   ((= num 0) str)
   (t (x-adic-down (mod (* num base ) base) base (concatenate 'string str (number-to-string (floor (/ (* num base) base) ) )) ))
   ))
