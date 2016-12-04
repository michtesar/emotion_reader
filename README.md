# EmotionReader
Hackaton Hack-The-Brain project of reading emotion in real time with Biosemi ActiveTwo EEG.
Emotion recognition could be done from the text, speech, facial expression or gesture. In this project, we concentrate on recognition of “inner” emotions from EEG signals. We propose real-time fractal dimension based algorithm of quantification of basic emotion using Valence emotion model. The subject emotions are recognized and visualized in real time on avatar’s head through LED diodes which simulate every single electrode.

## Why we choose this project...
Our project could by used at many cases of medical field, professional or every day life. Generally BCI could be used for pilots or drivers and it could improve their professional skills. Avoid and prevent losing focus by visualizing valence and arousal during their work performance. It could be also useful as some kind of feedback for gaming, music, interactive arts, relaxation or books to show valence reactions to those stimuli in real time. In the medical field it could be used in psychotherapy of shows pathology at perception, processing information, recognition and reaction to positive or negative (pleasant, unpleasant) visual stimuli.

## Alpha Asymmetry
The most directly associated with emotions are prefrontal areas. Specifically ventrolateral region of prefrontal cortex and dorsolateral cortex which is most likely directly reflected in the scalp signals (Fp1 and Fp2 electrodes) from which metrics of functional prefrontal asymmetry are constructed. 

Frontal asymmetry in alpha oscillations is assumed to be associated with individual differences in emotional responding. Brain activity based feedback is a promising tool for the modulation of cortical activity. It refers to the average difference in brain activity between the left and right frontal areas, measured as hemispheric differences in alpha power in electroencephalography recordings across several minutes.  Activity in the left frontal hemisphere has been linked to an approach system that is activated when an individual is moving towards goals or experiences positive emotions. Conversely, a right lateralised withdrawal system is involved in negative affect or the motivation to move away from potentially dangerous situations or stimuli.
 

## Process

## How does it work...?

## Stimuli
For affective stimulation were used series of visual stimuli with different valence values. Those visual stimuli were taken from NAPS database which was was standardized on a set of 300 people. Stimuli were represented by 60 pictures which have been selected according to these values for three groups, 20 images for every group. Generally labeled as a positive, negative and neutral pictures. Subject was exposure for each picture until they rate it as negative, positive or neutral by pressing specific key. Between every picture was showed for 1 s. fixation cross to relax and move subject’s intention from previous picture to another one. 
Valence could reach values from 0 to 10. Visual stimuli for the experiment have been selected according to these values. Pictures with high level of valence (v>6.32) were tagged as positive. Pictures with level of valence (<3.66) were tagged as negative. The neutral pictures had neutral level of valence (=5). Pictures were equally divided according to their valence values. During distribution of pictures was taken into account that set includes the 5 types of pictures – faces, people, animals, objects and landscapes

## Hardware & Software
### Hardware
Acquistion of electroencephalographic (EEG) cerebral activity is recorded by Biosemi ActiveTwo system. It was collected scalp signal from 32 active channels. EEG montage was performed by ten-twenty international electrode placement system of measurement with Cz as central electrode and two CMS and DRL reference channels (recording is reference free). 

For online visualization was used LED diodes belt specifically changed and adapted for our project. Every single LED diode simulate at avatar’s head one of 32 active EEG channels. Reference electrodes included.
###Programming Languague
OpenVibe, Python, Arduino, OpenSesame, CodeLite, C++ 

## Interpretation

