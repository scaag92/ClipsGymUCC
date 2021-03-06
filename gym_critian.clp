;----------------------------------
;-- Presentado por               --
;-- Cristian Arturo Arias G.     --
;-- Marco Antonio Zamora cuervo  --
;-- Oscar orlando León alvarado  --
;-- Katherin Tatiana Suárez Lache--
;-- Esther Cecilia Alvarado Lenis--
;-- Defrule datos-> Regla creada --
;-- para obtener los datos       --
;-- basicos del usuario          -- 
;----------------------------------

(clear)

(defrule datos
      (initial-fact)
=>
      (printout t "BIENVENIDO AL GYM NO PAIN NO GAIN" crlf)
      (printout t "HOLA" crlf)
      (printout t "Ingrese su nombre:     " crlf)
      (assert (Nombre (read)))
      (printout t "Ingrese su Edad:       " crlf)
      (assert (Edad (read)))
      (printout t "Ingrese su Estatura(MTS):   " crlf)
      (assert (est (read)))
      (printout t "Ingrese su Peso (KG)   :" crlf)
      (assert (peso (read)))
      (printout t "Ingrese su genero F o M:" crlf)
      (assert (gen (read)))
      (printout t "Objetivo: Tonificar (T), Adelgazar(A), Aumentar(S)" crlf)
      (printout t "Tonificar  (T)" crlf)
      (printout t "Adelgazar  (A)" crlf)
      (printout t "Aumentar   (S)" crlf)
      (assert (objetivo (read)))
      (printout t "Restriccion: Ninguna (N), Espalda(E), Rodilla (R)" crlf)
      (printout t "Ninguna    (N)" crlf)
      (printout t "Espalda    (E)" crlf)
      (printout t "Rodilla    (R)" crlf)
      (assert (restric (read)))
      )

;------------------------------------------------
;-- El programa clasifica las rutinas          --
;-- según el objetivo y el tipo de restricción --
;------------------------------------------------

(defrule tonifN
      (objetivo T)(restric N)
=>
      (printout t "Rutina para tonificar " crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PIERNAS Y BICEPS" crlf)
      (printout t "Sentadillas          * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Zancada Lateral      * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Femoral sobre banco  * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Curl alterno de pie  * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "PECHO HOMBROS Y ESPALDA" crlf)
      (printout t "Flexiones             * Series: 5    * Repeticiones: 15" crlf)
      (printout t "Espalda en el suelo   * Series: 5    * Repeticiones: 15" crlf)
      (printout t "Elevaciones Frontales * Series: 5    * Repeticiones: 15" crlf)
      (printout t "Rotaciones cubanas    * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "GLUTEOS Y ABDOMINALES" crlf)
      (printout t "Zancadas                * Series: S3    * Repeticiones: 10" crlf)
      (printout t "Patada Trasera          * Series: S4    * Repeticiones: 12" crlf)
      (printout t "Elevacion de cadera     * Series: S4    * Repeticiones: 12" crlf)
      (printout t "Elevacion de piernas    * Series: S3    * Repeticiones: 25" crlf)
      (printout t "Encogimiento alterno    * Series: S4    * Repeticiones: 30" crlf)
      )


(defrule adelN
      (objetivo A)(restric N)
=>
      (printout t "Rutina para Adelgazar " crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PECHO Y HOMBRO" crlf)
      (printout t "Kickboxing o Tae Bo  30 min" crlf)
      (printout t "Remo con mancuerna   * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Jalon tras la nuca   * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Jalon Frontal        * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Press Mancuerna      * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Aperturas Planas     * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pull Over            * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "BICEP Y TRICEPS" crlf)
      (printout t "Bicicleta Fija  20 Min" crlf)
      (printout t "Press con mancuerna   * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion Lateral     * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion Frontal     * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Alterno          * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Martillo         * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Concentrado      * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "PIERNA Y ABDOMEN" crlf)
      (printout t "Burpie  20 Min" crlf)
      (printout t "Extension en polea     * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Patada                 * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Press Frances          * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Sentadilla             * Series: 3    * Repeticiones: 25" crlf)
      (printout t "Extension Cuadriceps   * Series: 4    * Repeticiones: 30" crlf)
      (printout t "Aductor Abductor       * Series: 4    * Repeticiones: 30" crlf)
      (printout t "Peso Muerto            * Series: 4    * Repeticiones: 30" crlf)
      )

(defrule subirN
      (objetivo S)(restric N)
=>
      (printout t "Rutina para subir de peso " crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PECHO Y TRICEP" crlf)
      (printout t "Estiramiento" crlf)
      (printout t "Press Inclinado           * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Press Banca Plano         * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Aperturas con Mancuernas  * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Press Declinado           * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pull Over                 * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Extension Triceps         * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Press Frances             * Series: 3    * Repeticiones: 10" crlf)
      (printout t "FOndos                    * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "ESPALDA Y BICEPS" crlf)
      (printout t "Dominadas        * Series: 3    * Repeticiones: 9" crlf)
      (printout t "Jalon Tras       * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Jalon al Pecho   * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Remo con Barra   * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Remo Mancuerna   * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Curl Biceps      * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Curl Martillo    * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Curl Inclinado   * Series: 3    * Repeticiones: 8" crlf)
      (printout t "Curl Concentrado * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "HOMBROS Y ANTEBRAZOS" crlf)
      (printout t "Press con Mancuerna          * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Elevacion Frontal            * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Elevacion de cadera          * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Elevacion lateral            * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pajaros                      * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Encogimiento con mancuerna   * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Remo al cuello               * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Curl Supinacion Frontal      * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Curl pronacion traser        * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Dia 4:" crlf)
      (printout t "PIERNA" crlf)
      (printout t "Sentadillas              * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Elevacion Frontal        * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Extension de cuadriceps  * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Peso Muerto              * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Curl Femoral             * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Gemelos de pie           * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Gemelos sentado          * Series: 3    * Repeticiones: 10" crlf)
      )

(defrule tonifE
      (objetivo T)(restric E)
=>
      (printout t "Rutina para tonificar con restriccion de espalda" crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PIERNAS Y BICEPS" crlf)
      (printout t "Sentadillas          * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Zancada Lateral      * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Femoral sobre banco  * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Curl alterno de pie  * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "PECHO HOMBROS Y ESPALDA" crlf)
      (printout t "Flexiones             * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Espalda en el suelo   * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Elevaciones Frontales * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "GLUTEOS Y ABDOMINALES" crlf)
      (printout t "Zancadas                * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Patada Trasera          * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Elevacion de cadera     * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Encogimiento alterno    * Series: 2    * Repeticiones: 30" crlf)
      )


(defrule adelE
      (objetivo A)(restric E)
=>
      (printout t "Rutina para Adelgazar con restriccion de espalda" crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PECHO Y HOMBRO" crlf)
      (printout t "Kickboxing o Tae Bo  30 min" crlf)
      (printout t "Remo con mancuerna   * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Jalon Frontal        * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Press Mancuerna      * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Aperturas Planas     * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pull Over            * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "BICEP Y TRICEPS" crlf)
      (printout t "Bicicleta Fija  20 Min" crlf)
      (printout t "Press con mancuerna   * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion Lateral     * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion Frontal     * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Alterno          * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Martillo         * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Concentrado      * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "PIERNA Y ABDOMEN" crlf)
      (printout t "Burpie  20 Min" crlf)
      (printout t "Extension en polea     * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Patada                 * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Press Frances          * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Sentadilla             * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Extension Cuadriceps   * Series: 4    * Repeticiones: 30" crlf)
      (printout t "Aductor Abductor       * Series: 2    * Repeticiones: 10" crlf)
      )

(defrule subirE
      (objetivo S)(restric E)
=>
      (printout t "Rutina para subir de peso con restriccion de espalda" crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PECHO Y TRICEP" crlf)
      (printout t "Estiramiento" crlf)
      (printout t "Press Inclinado           * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Press Banca Plano         * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Aperturas con Mancuernas  * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Press Declinado           * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pull Over                 * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Extension Triceps         * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Press Frances             * Series: 3    * Repeticiones: 10" crlf)
      (printout t "FOndos                    * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "ESPALDA Y BICEPS" crlf)
      (printout t "Dominadas        * Series: 1    * Repeticiones: 9" crlf)
      (printout t "Jalon Tras       * Series: 1    * Repeticiones: 10" crlf)
      (printout t "Jalon al Pecho   * Series: 1    * Repeticiones: 10" crlf)
      (printout t "Remo con Barra   * Series: 1    * Repeticiones: 10" crlf)
      (printout t "Remo Mancuerna   * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Curl Biceps      * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Curl Martillo    * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Curl Inclinado   * Series: 3    * Repeticiones: 8" crlf)
      (printout t "Curl Concentrado * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "HOMBROS Y ANTEBRAZOS" crlf)
      (printout t "Press con Mancuerna          * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pajaros                      * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Encogimiento con mancuerna   * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Remo al cuello               * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Curl Supinacion Frontal      * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Curl pronacion traser        * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Dia 4:" crlf)
      (printout t "PIERNA" crlf)
      (printout t "Curl Femoral             * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Gemelos de pie           * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Gemelos sentado          * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Sentadillas              * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Elevacion Frontal        * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Extension de cuadriceps  * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Peso Muerto              * Series: 3    * Repeticiones: 10" crlf)
      )

(defrule tonifP
      (objetivo T)(restric R)
=>
      (printout t "Rutina para tonificar con restriccion de Rodilla" crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PIERNAS Y BICEPS" crlf)
      (printout t "Extensión Maquina    * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Zancada Lateral      * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Femoral sobre banco  * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Curl alterno de pie  * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Gluteos              * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "PECHO HOMBROS Y ESPALDA" crlf)
      (printout t "Flexiones             * Series: 4    * Repeticiones: 15" crlf)
      (printout t "Pull Over             * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevaciones Frontales * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Remo Mancuernas       * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "GLUTEOS Y ABDOMINALES" crlf)
      (printout t "Cruch Invertido         * Series: 4    * Repeticiones: 15" crlf)
      (printout t "Patada Trasera          * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion de cadera     * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Encogimiento alterno    * Series: 3    * Repeticiones: 30" crlf)
      (printout t "Femoral Maquina         * Series: 3    * Repeticiones: 30" crlf)
      )


(defrule adelP
      (objetivo A)(restric R)
=>
      (printout t "Rutina para Adelgazar con restriccion de Rodilla" crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PECHO Y HOMBRO" crlf)
      (printout t "Hitt 10 min" crlf)
      (printout t "Remo con mancuerna   * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Jalon Frontal        * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Press Mancuerna      * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Aperturas Planas     * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Pull Over            * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "BICEP Y TRICEPS" crlf)
      (printout t "Escalador  15 Min" crlf)
      (printout t "Press con mancuerna   * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion Lateral     * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Elevacion Frontal     * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Alterno          * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Martillo         * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Curl Concentrado      * Series: 3    * Repeticiones: 15" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "PIERNA Y ABDOMEN" crlf)
      (printout t "Bailar  20 Min" crlf)
      (printout t "Extension en polea     * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Patada                 * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Press Frances          * Series: 4    * Repeticiones: 12" crlf)
      (printout t "Extension Cuadriceps   * Series: 4    * Repeticiones: 30" crlf)
      (printout t "Aductor                * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Gemelos                * Series: 2    * Repeticiones: 10" crlf)
      )

(defrule subirP
      (objetivo S)(restric R)
=>
      (printout t "Rutina para subir de peso con restriccion de Rodilla" crlf)
      (printout t "Dia 1:" crlf)
      (printout t "PECHO Y TRICEP" crlf)
      (printout t "Estiramiento" crlf)
      (printout t "Press Inclinado           * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Press Banca Plano         * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Aperturas con Mancuernas  * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Press Declinado           * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pull Over                 * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Extension Triceps         * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Press Frances             * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Fondos                    * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Dia 2:" crlf)
      (printout t "ESPALDA Y BICEPS" crlf)
      (printout t "Dominadas        * Series: 2    * Repeticiones: 9" crlf)
      (printout t "Jalon Tras       * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Jalon al Pecho   * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Remo con Barra   * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Remo Mancuerna   * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Curl Biceps      * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Curl Martillo    * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Curl Inclinado   * Series: 3    * Repeticiones: 8" crlf)
      (printout t "Curl Concentrado * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Dia 3:" crlf)
      (printout t "HOMBROS Y ANTEBRAZOS" crlf)
      (printout t "Press con Mancuerna          * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Pajaros                      * Series: 2    * Repeticiones: 10" crlf)
      (printout t "Encogimiento con mancuerna   * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Remo al cuello               * Series: 3    * Repeticiones: 12" crlf)
      (printout t "Curl Supinacion Frontal      * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Curl pronacion traser        * Series: 4    * Repeticiones: 10" crlf)
      (printout t "Dia 4:" crlf)
      (printout t "PIERNA" crlf)
      (printout t "Curl Femoral             * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Gemelos de pie           * Series: 2    * Repeticiones: 12" crlf)
      (printout t "Gemelos sentado          * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Elevacion Frontal        * Series: 3    * Repeticiones: 10" crlf)
      (printout t "Extension de cuadriceps  * Series: 3    * Repeticiones: 10" crlf)
      )