domains
    disease,symptom = symbol
    Patient,name = string
    
    
predicates
    assumption (string,disease)
    indicator (name,symptom)
    treatment(disease)
    response (char)
    run
clauses
    run :-

        clearwindow,
        write("Mental Health DIAGNOSTICSYSTEM"),nl,
        write("patient's name? "),nl,
        readln(Patient),
        assumption(Patient,Disease),
        write(Patient," probably has "),nl,
        write(Disease,"."),nl,
        treatment(Disease),nl.
    run :-
        write("The diagnose was not found.").
       
        
 

 
    indicator(Patient,specch):-
        write("Does ",Patient," have "),nl,
        write("unusal speech problem"),nl,
        write("and find difficult "),nl,
        write("to understant other(y/n)?"),
        response(Reply),
        Reply='y'.
 
    indicator(Patient,trouble_reading):-
        write("Does ",Patient," have "),nl,
        write("difficulty to read(y/n)?"),
        response(Reply),
        Reply='y'.

    indicator(Patient,worry):-
        write("Does ",Patient," fear "),nl,
        write("on performance related situation(y/n)?"),
        response(Reply),
        Reply='y'.
    indicator(Patient,socialife):-
        write("Does ",Patient," worry "),nl,
        write("constantly(y/n)?"),
        response(Reply),
        Reply='y'.

    indicator(Patient,repeated):-
        write("Does ",Patient," perform "),nl,
        write("excessive and repetitive "),nl,
        write("cleaning rearranging things(y/n)?"),
        response(Reply),
        Reply='y'.
   indicator(Patient,upset):-
        write("Does ",Patient," get "),nl,
        write("every upset changing"),nl,
        write("of daily routine (y/n)?"),
        response(Reply),
        Reply='y'.

    indicator(Patient,friend):-
        write("Does ",Patient," afraid "),nl,
        write("of making friend (y/n)?"),
        response(Reply),
        Reply='y'.

   
    indicator(Patient,falsebeliefs):-
            write("Does ",Patient," have "),nl,
            write("false beliefs that "),nl,
            write("are not based in reality(y/n)?"),
            response(Reply),
            Reply='y'.
   indicator(Patient,hallucinations):-
            write("Does ",Patient," see "),nl,
            write("or hear things "),nl,
            write("that don't exist(y/n) ?"),
            response(Reply),
            Reply='y'.

   indicator(Patient,growth):-
            write("Does ",Patient," has "),nl,
            write("delayed pysical growth? "),
            response(Reply),
            Reply='y'.
    indicator(Patient,face):-
            write("Does ",Patient," have "),nl,
            write("face feature of long "),nl,
            write(" and narrow?"),
            response(Reply),
            Reply='y'.
    indicator(Patient,ear):-
            write("Does ",Patient," have"),nl,
            write(" ear is large?"),
            response(Reply),
            Reply='y'.
    indicator(Patient,intellecul):-
            write("Does ",Patient," lack"),nl,
            write(" of intellecul disability (y/n)?"),
            response(Reply),
            Reply='y'.

    indicator(Patient,hallucinations):-
            write("Does ",Patient," see"),nl,
            write(" or hear things"),nl,
            write(" that don't exist(y/n) ?"),
            response(Reply),
            Reply='y'.
    indicator(Patient,isomania):-
            write("Does ",Patient," have"),nl,
            write(" sleeping problem"),nl,
            write(" (y/n) ?"),
            response(Reply),
            Reply='y'.
   
   assumption(Patient,down_syndrome) :-
       indicator(Patient,growth),
        indicator(Patient,face),
        indicator(Patient,ear),
        indicator(Patient,intellecul).

    assumption(Patient,ocd) :-
        indicator(Patient,repeated).

    assumption(Patient,gad) :-
        indicator(Patient,worry),
        indicator(Patient,socialife),
        indicator(Patient,isomania).

    assumption(Patient,autism) :-
        indicator(Patient,specch),
        indicator(Patient,upset),
        indicator(Patient,friend).

    assumption(Patient,schizophrenia) :-
        indicator(Patient,falsebeliefs),
        indicator(Patient,hallucinations).

    assumption(Patient,dyslexia) :-
        indicator(Patient,trouble_reading).
    
    treatment(dyslexia):-
         write("Treatment Suggestion:"),
         write("Apply new reading skill,"),
         write(" Contact with Psychologists,"),
         write("Neuropsychologists, Neurologists,"),
         write("Speech language pathologists.").
  


    treatment(autism):-
         write("Treatment Suggestion:"),
         write("Therapy on behavior "),
         write("and communication,"),
         write(" family support,medication."),
         write("Referred doctor:"),
         write(" Dr. Bijoy Kumar Dutta"),
         write(" Mental Diseases,Appointment:"),
         write(" +8801686640540."),
         write(" Prof. Dr. Basana Muhuri ,"),
         write("Appointment: +88031652378.").

     treatment(gad):-
     write("Treatment Suggestion:"),
     write("Cognitive behavioral therapy"),
     write(" (CBT),medication"),
     write(" Referred doctor:"),
     write(" Dr. Waziul Alam Chowdhury,"),
     write(" Appointment: +8801686640540."),
     write(" Prof. Dr. Basana Muhuri ,"),
     write(" Appointment: +88031652378.").
  

    treatment(schizophrenia):-
        write("Treatment Suggestion:"),
        write("Initially clinical medication"),
        write(" on Second-generation "),
        write("antipsychotics i.e, "),
        write("Aripiprazole (Abilify)"),
        write(" Asenapine (Saphris) if "),
        write("not cure First-"),
        write(" generation antipsychotics "),
        write("i.e, Chlorpromazine, Fluphenazine "),
        write("Referred doctor:"),
        write(" Dr. Kumrul Hasan,"),
        write(" Appointment: +8809610010616."),
        write(" Ms. Sharmin akter,"),
        write(" Appointment: +8809666710678.").

    treatment(down_syndrome):-
        write("Treatment Suggestion:"),
        write("Physical therapy, "),
        write("Speech-language therapy, "),
        write("Occupational therapy, "),
        write("Assistive Devices. "),
        write("Referred hospital: "),
        write("Chittagong Chapter, "),
        write("Down Syndrome Society "),
        write("of Bangladesh, "),
        write("Phone: 01729-226123. "),
        write("AMDA Bangladesh, "),
        write("Phone: 02-55124415. ").

    treatment(ocd):-
        write("Treatment Suggestion:"),
        write("Cognitive-behavioral "),
        write("therapy (CBT), Medication. "),
        write("Referred hospital: "),
        write("OCD Clinic - BSMMU, "),
        write("Phone: 01729-226123. "),
        write("AMDA Bangladesh, "),
        write("Phone:01776375945.").

 response(Reply) :-
        readchar(Reply),
        write(Reply),nl.

 
