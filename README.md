# Introductie
Deze code traint een ML model door middle van Mllib en Hadoop in een Docker omgeving. Het traint een RandomForestRegressor op de classificatie van auto’s. 

# Installatie 
Zorg ervoor dat je een werkende Docker omgeving hebt (gebruikte versie: v20.10.6).

# Hoe de image te draaien
 1. Bouw het image. Voer het volgende commando uit op de commandline om het image te bouwen: 
docker build --tag image_analysis .
2. Draai het image. Voer het volgende commando uit om het image te draaien: 
docker run image_analysis

# Model kwaliteit / validatie

Evaluatie

RMSE\
Ter evaluatie van het model kunnen we kijken naar verschillende statistieken, hiervoor hebben wij besloten gebruik te maken van de RMSE. De RMSE is een maatstaaf om de kwaliteit van een model aan te geven en doet dit door aan te geven hoe groot de fout gemiddeld was. Deze berekening berust op de fouten die gemaakt zijn op de testset te kwadrateren en vervolgens het gemiddelde hiervan te pakken. Dit geeft de spreiding aan van de voorspellingen ten opzichte van de waarheid, vergelijkbaar aan de standaarddeviatie.

Bij ons valt de RMSE binnen de standaard deviatie. Wij hebben de standaard deviatie (van het label MSRP) vastgesteld op 40594,73703, en de RMSE berekend door het model kwam neer op 35492,26. Hiermee valt de RMSE binnen 1 standaard deviatie van het gemiddelde, wat neerkomt op een redelijke kwaliteit van het model naar onze beschouwing. 

De Mean Absolute Error (MAE) is een methode om een model te evalueren met behulp van regressie. De MAE van een model is het gemiddelde van de voorspellingsfouten (het verschil tussen berekende waarde en echte waarde) op een test set. De mean absolute error van dit model was 9598.26. Dit is veel lager dan de RMSE dus er is sprake van een hoge variatie in de grootte van de fouten binnen de data. Gezien de MAE een stuk lager uitvalt dan de RMSE valt er te argumenteren dat er een aanzienlijke variantie is in de error marge. Dit betekent dat de errors die gemaakt zijn vrij uiteenlopend zijn. Hier valt met het finetunen van het model nog een hoop te winnen.

Determinatiecoëfficiënt (R^2) \
De determinatiecoëfficiënt geeft aan in hoeverre er correlatie is tussen variabelen. In statistische modellen wordt dit gebruikt om aan te geven hoe vaak het model de waarden goed voorspeld, door de afwijking in voorspellingen weer te geven. Hierin is 1 de beste waarde, en ons model heeft een waarde van 0.788. De waarde wordt als significant beschouwd vanaf 0.50, wat erop wijst dat ons model adequaat genoeg voorspelt om als significant goed te worden beschouwd.

# Conclusie
Bij het bekijken van de statistieken hebben wij de conclusie getrokken dat dit model gemiddeld presteert. Hoewel dit goed genoeg is voor de eisen die wij er aan stellen zouden er nog stappen kunnen worden ondernomen om dit model te verbeteren, zoals het verder finetunen van de hyperparameters die gebruikt zijn om het model te trainen.