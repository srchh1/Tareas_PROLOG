(defvar *Lara Croft*
  '((Habilidades
      (Aventurera
          (Genero
              (Mujer
                  (Stats
                      (Fuerte
                          (Caza fortunas
                              (Rareza_4
                                  (Islas)
                              )
                              (Rareza_5
                                  ()
                              )
                          )
                      )
                      (Otros
                          (Rareza_4
                              (Montañas)
                          )
                          (Rareza_5
                              ()
                          )
                      )
                  )
                  (Otros
                      (Rareza_4
                          (Cuevas)
                      )
                      (Rareza_5
                          ()
                      )
                  )
              )
              (Arma
                  (Calibre .42
                      (negro
                          (Rareza_4
                              ()
                          )
                          (Rareza_5
                              ()
                          )
                      )
                      (Otros
                          (Rareza_4
                              ()
                          )
                          (Rareza_5
                              (Barcos)
                          )
                      )
                  )
              )
          )
      )
  ))

(defun getInput()
  (defvar res)  
  (setq res (read))
  (if (and (not (string= res "Y")) (not (string= res "N")))
      (progn
          (format t "INTENTA DE NUEVO-> ")
          (getInput)
      )
      res
  )
)

(defun getNodo(puntero)
  (defvar res)
  (if puntero
      (progn
          (format t "¿Tu personaje es ~a? " (car puntero))
          (force-output)
          (setq res (getInput))
          (cond
              ((string= res "Y") 
                  (car puntero)
              )
              ((string= res "N") 
                  (getNodo (cdr puntero))
              )
          )
      )
      ()
  )
)

(defun entra_nuevo(arbol list)
  (defvar lista)
  (defvar nodo)
  (defvar arbol_nuevo)
  (defvar res)
  (setq lista (mapcar #'car arbol))
  (setq nodo (getNodo lista))
  (if (not nodo)
      (progn
          (format t "¿Cómo se llama tu personaje?")
          (force-output)
          (setq res (read))
          (nconc 
              (assoc (car(cddddr list))(cdr (assoc (cadddr list) (cdr (assoc (caddr list) (cdr (assoc (cadr list) (cdr (assoc (car list) *bob-esponja*)))))))))
              (list (list res))
          )
          (terpri)
          (format t "Personaje añadido. Vuelve a buscarlo por favor.")
          (terpri)
          (adivina)
      )
      (setq list (append list (list nodo)))
  ) 
  (setq arbol_nuevo (cdr (assoc nodo arbol)))
  (if arbol_nuevo
      (entra_nuevo arbol_nuevo list)
      nodo
  )
)

(defun adivina()
  (defvar Lara Croft)
  (defvar res)
  (setq bob-esponja (entra_nuevo *Lara Croft* '()))
  (terpri)
  (format t "El personaje que pensaste es ~a" Lara Croft)
  (terpri)
  (format t "¿Quieres jugar de nuevo?")
  (setq res (getInput))
  (cond
      ((string= res "Y") 
          (adivina)
      )
  )
)

(adivina)
