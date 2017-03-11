(defun search-ejiro-region-i ()
  (interactive)
  (unless (region-active-p)
    (forward-word)
    (backward-word)
    (mark-word))
  (let* ((word (buffer-substring (region-beginning) (region-end)))
         (url (concat "http://eow.alc.co.jp/search?q=[" word "]")))
    (deactivate-mark)
    (browse-url url)))
