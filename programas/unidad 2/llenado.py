import pyautogui
import time

for resp in ["¿Tu animalito tiene bigotes?","¿Tu animalito camina en dos patas?","¿Tu animalito tiene caparazon?","¿Tu animalito es carnivoro?","¿Tu animalito tiene cola anillada?","¿Tu animalito tiene escamas?","¿Tu animalito tiene garras?","¿Tu animalito es hervivoro?","¿Tu animalito ladra?","¿Tu animalito toma leche?","¿Tu animalito nada?","¿Tu animalito es omnivoro?","¿Tu animalito tiene pelo?","¿Tu animalito repta?","¿Tu animalito ronronea?",0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1,0,1,1,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,0,0,1,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,1,0,1,0,1,1,0,0,1,0,0,1,0,1,1,1,0,1,0,0,1,1,0,0,1,0,1,0,0,1,1,1,1,0,0,0,1,0,0,0,0,1,1,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,1,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,1,0,1,0,1,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,0,0]:
    pyautogui.write(str(resp))
    #print(resp)
    pyautogui.press('enter')
    #print("Se esta imprimiendo")
    time.sleep(0.2)
