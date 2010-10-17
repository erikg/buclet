;;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-
;;;;
;;;; buclet.lisp
;;;;
;;;; author: Erik Winkels (aerique@xs4all.nl)
;;;;
;;;; See the LICENSE file in the Buclet root directory for more info.

(in-package :buclet)


;;; Bullet Foreign Libraries

(define-foreign-library bullet-dynamics
  (:windows "libBulletDynamics.dll")
  (:darwin "libBulletDynamics.dylib")
  (:unix "libBulletDynamics.so")
  (t "libBulletDynamics"))

(define-foreign-library bullet-collision
  (:windows "libBulletCollision.dll")
  (:darwin "libBulletCollision.dylib")
  (:unix "libBulletCollision.so")
  (t "libBulletCollision"))

(define-foreign-library linear-math
  (:windows "libLinearMath.dll")
  (:darwin "libLinearMath.dylib")
  (:unix "libLinearMath.so")
  (t "libLinearMath"))


;;; Functions

(defun load-foreign-libraries ()
  ;; The order is important!
  (use-foreign-library linear-math)
  (format t "~&[buclet] foreign library linear-math loaded~%")
  (use-foreign-library bullet-collision)
  (format t "~&[buclet] foreign library bullet-collision loaded~%")
  (use-foreign-library bullet-dynamics)
  (format t "~&[buclet] foreign library bullet-dynamics loaded~%"))


(defun quit ()
  (cl-user::quit))


;;; Loading the libraries

(load-foreign-libraries)
