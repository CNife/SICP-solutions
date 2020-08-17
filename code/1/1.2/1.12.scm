#lang sicp

; 计算杨辉三角（帕斯卡三角）第 row 行第 column 个数字
(define (pascals-triangle-value row column)
  (if (or (= column 1) (= row column))
      1
      (+ (pascals-triangle-value (- row 1) (- column 1))
         (pascals-triangle-value (- row 1) column))))

(pascals-triangle-value 5 1) ; 1
(pascals-triangle-value 5 5) ; 1
(pascals-triangle-value 5 3) ; 6
