(defun search-ejiro-region (start end)
  (interactive "r")

  (let* ((word (buffer-substring start end))
    (url (concat "http://eow.alc.co.jp/search?q=[" word "]")))
    (browse-url url)))
