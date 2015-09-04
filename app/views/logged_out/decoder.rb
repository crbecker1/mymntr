class Views::LoggedOut::Decoder < Views::Base
  def content

    row(class:'logo-hero hero-image-logo full-width small-12') {

    }

    row(class:'white-container full-width decoder-page') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {

        h1 "lingoDECODER"

        p "We want to help you understand the lingo of the brain, so we’ve put together a glossary of terms and basic brain structures that come up throughout the video conversations, questions, and profiles. You will never have to navigate away from mymntr! Find all you need to know in the lingoDECODER!"
        p {
          text ""
          strong "Bold"
          text " words and phrases in the definitions are also explained in the lingoDECODER."
        }
        p {
          text "If you do not see a term that you would like to know more about, "
          a(onclick: "$('#feedbacklite img').click()") {
            text "let us know"
          }
          text " and we will add it for you!"
        }
        hr
        p(class: 'body-copy__small') {
          text "#ourNeuroFriends: For the neuroscientists who have stopped by, this is a pilot website. With your help we can make it even better. We are building our glossary but do not yet have an exhaustive set of definitions and links, only those we felt were the most relevant for the content we have."
        p(class: 'body-copy__small') {
          text "Please "
          a(onclick: "$('#feedbacklite img').click()") {
            text "let us know"
          }
          text " what links/primary papers and resources we could include. We will acknowledge you! We're all in this together and through collaboration, we can mentor those beyond our classrooms and labs!"
        }
        }

        hr
        br
        h2 "Amygdala"
        p {
          text "A "
          strong "subcortical"
          text " structure located deep within the "
          strong "temporal lobe"
          text " involved in different aspects of emotion processing, memory, decision making, and face processing."
        }

        h2 "Axon"
        p {
          text "Projections, or nerve fibers, that send electrical impulses away from the "
          strong "cell body"
          text" to other neurons or groups of neurons in order to communicate with them."
        }

        h2 "Cell Body"
        p {
          text "Often referred to as ‘soma,’ which is Greek for body, the cell body contains a bunch of different proteins and molecules that (a) determine the particular type of neuron and (b) aid in the transmission of messages that are specific to that particular type of neuron. "
          strong "Dendrites"
          text " also branch off of the cell body."
        }

        h2 "Cognitive control"
        p {
          text "The management of executive processes such as working memory, task flexibility, reasoning, and problem solving. "
          a(href:'//gazzaleylab.ucsf.edu', target: '_blank') {
              text "Adam Gazzaley’s lab at UCSF"
          }
          text " is a great resource to learn more."
        }

        h2 "Convergent thinking"
        p {
          text "In contrast to "
          strong "divergent thinking"
          text ", this is more of a linear type of thinking (that is, ‘within the box’) that leads to a correct answer or solution. So, for the SATs or GREs, this type of thinking leads you to the correct answer for a standardized test. However, it most likely will not win you the Nobel Prize or bring you to the solution for curing cancer. "
        }

        h2 "Cytoarchitecture"
        p {
          text "In biology, ‘cyto’ means cell. Architecture loosely means the construction or structure of something – could be a house or building or the brain! So, cytoarchitecture is the construction or structure of the cells – particularly along the 3mm cortical ribbon of "
          strong "gray matter "
          text "on the outer surface of the "
          strong "cortex"
          text ". Different regions of the brain have different cytoarchitecture meaning that different structures of the gray matter in particular locations of the brain perform different functions.Our very own Dr. Weiner has contributed to understanding how the cytoarchitecture of the "
          strong "fusiform gyrus"
          text" contributes to face perception."
        }

        h2 "Cerebral Cortex"
        p {
          text "Cortex is latin for ‘bark’ or ‘rind.’ Cerebral cortex is a term referring to the outer surface of the brain, which consists of both gray and white matter. "
          strong "Gyri"
          text " and "
          strong "sulci"
          text " are both located in the cortex. The cerebral cortex consists of four lobes: "
          strong "Frontal, Parietal, Occipital,"
          text " and "
          strong "Temporal"
          text ". ‘"
          strong "Subcortical"
          text "’ structures such as parts of the reward system are located underneath the cortex, but still communicate with it via "
          strong "white matter"
          text"."
        }

        h2 "Dendrite"
        p {
          text "Think of these as the tentacles or antennae of the neuron. They are branches extending from the "
          strong "cell body"
          text " of the neuron. They receive messages from other neurons and send them to the cell body, which in turn, communicate a response down the axon to the next neuron or sets of neurons."
        }

        h2 "Divergent thinking"
        p {
          text "A type of thinking that considers many possible solutions. Rather than a single solution that follows a set of linear sequential or logical steps like "
          strong "convergent thinking"
          text ", this type of thinking occurs in a non-linear (or ‘out of the box’ type of manner). Puzzle master of the New York Times, "
          a(href:'//wordplay.blogs.nytimes.com/author/gary-antonick/', target: '_blank') {
            text "Gary Antonick"
          }
          text ", is a divergent thinker. Or "
          a(href:'//www.youtube.com/watch?v=00q71VOOu2s', target: '_blank') {
            text "watch our conversation with Lorne Lanning"
          }
          text " to learn more about divergent thinking."
        }

        h2 "Dopamine"
        p {
          text "A great neurotransmitter and pleasure-producer. It's neurobiologically taxing because our brain needs to make it and we can’t take a drug that gives us straight dopamine. For example, patients with Parkinson’s disease cannot take straight dopamine – they take L-dopa, which is a precursor to dopamine that helps the brain kickstart production of dopamine. All in all, we really need dopamine – it helps us learn, feel great, move, and emote. "
          a(href:'//www.youtube.com/watch?v=00q71VOOu2s', target: '_blank') {
           text "Watch our conversation with Lorne Lanning"
          }
          text ", where we talk about dopamine."
        }


        h2 "Embodied cognition"
        p "A theory stressing the role of the environment in the development of cognitive processes. For example, reading the word ‘kick’ would activate portions of your brain that move the leg/foot."
        p {
          text "Related to the videos, embodied cognition would be linked to how an expertise of dancing may help problem-solving. Because Nathalia had experience in dancing, she voiced her experience of ‘dancing around problems.’ This is an example of embodied cognition – how experience with one thing could be applied in a novel way to a different aspect of cognition such as problem solving. "
          a(href:'//www.youtube.com/watch?v=ehQltJJehNs', target: '_blank') {
            text "Watch our conversation with Nathalia"
          }
          text " for more about embodied cognition."
        }
        p {
          text "Or see the most recent summary of embodied cognition from "
          a(href:'//www.wjh.harvard.edu/~caram/publications.html', target: '_blank'){
            text "Alfonso Caramazza’s"
          }
          text " lab at Harvard University."
        }

        h2 "Fusiform gyrus"
        p "A part of the brain that is critical for recognizing objects, perceiving faces, and also reading. Fusiform is german for ‘spindle.’ The German neuroanatomist Emil Huschke first labeled the fusiform in 1854 due to its spindle shape. You also have cells in your brain that are named fusiform due to their spindle shape as well. This is Dr. Weiner’s favorite part of the brain and he has been measuring anatomical and functional features of the fusiform for the last 15 years! Fun fact: The fusiform gyrus is specific to hominoids. Humans are hominoids and so are chimpanzees, gorillas, bonobos, and orangutans. Primates that are not humanoids such as macaque monkeys do not have fusiform gyri! Watch our conversation with Lorne where the fusiform is mentioned."
        p {
          text "Check out Kevin’s research and the rest of Kalanit Grill-Spector’s lab at Stanford University who have been "
          a(href:'//vpnl.stanford.edu/', target: '_blank'){
            text "pioneering measurements of the fusiform"
          }
          text "."
        }


        h2 "Frontal lobe"
        p {
          text "One of the four major lobes of the "
          strong "cerebral cortex"
          text ". Roughly, it extends from just above your eyes until just before your ears. It is separated from the temporal lobe by the lateral "
          strong "sulcus"
          text " and the parietal lobe by the central sulcus. It contains many different "
          strong "gyri"
          text " and "
          strong "sulci"
          text ", each with functional roles spanning language, decision making, emotions, movement, and memory!"
        }

        h2 "Gray matter"
        p {
          text "The brain consists of what is referred to as gray matter and white matter. Gray matter is packed densely with cell bodies and is about 3mm thick on the outer surface of the brain (see "
          strong "cortex"
          text "). These 3mm of gray matter are organized into 6 different layers of cells (see "
          strong "cytoarchitecture"
          text "). These 3mm of gray matter are sometimes referred to as a cortical ‘ribbon’ because it wraps the outline of the cortex like a ribbon or band."
        }

        h2 "Gyrus"
        p "The brain is folded up inside the skull. Due to this folding process, there are indentations and bumps, or hills. These hilly parts of the brain are known as gyri (singular: gyrus)."

        h2 "Hippocampus"
        p {
          text "Latin mixed with mythology, greek, and fun indicates that hippocampus is starfish with some fore-feet. From a neuroscientific perspective, it’s a structure that’s crucial for memory – which is also fun because who wouldn’t love some spiraling memories zigzagging through the ocean within our brain?? People with damage to the hippocampus have trouble with memory. Monica, however, does not have trouble with memory and we talk about her hippocampus and memory during "
          a(href:'//www.youtube.com/watch?v=hGHnEUDlsvw', target: '_blank') {
            text "Kevin’s conversation with her"
          }
          text "."
        }

        h2 "Medial prefrontal cortex (mPFC)"
        p {
          text "A sub-portion of the medial aspect of the frontal lobe that has many different functions such as self-knowledge, action monitoring, person perception, mentalizing, and outcome monitoring. Portions of mPFC are also different in expert meditators compared to novice meditators. There is differential activation in mPFC before and after going for a walk in nature compared to a more urban location. We mention the mPFC in "
          a(href:'//www.youtube.com/watch?v=Hh7cbTmYrwI', target: '_blank') {
            text "our conversation with J"
          }
          text "."
        }

        h2 "Memory consolidation"
        p {
          text "Though under debate (especially in recent years), it is still widely accepted that sleep plays a crucial role in consolidating memories. For example, during sleep, a large body of studies show that memories are consolidated from the "
          strong "hippocampus"
          text " to "
          strong "cortex"
          text ". We talk about this (and incorporate some Candy Crush) in "
          a(href:'//www.youtube.com/watch?v=hGHnEUDlsvw', target: '_blank') {
            text "our conversation with Monica"
          }
          text "."
        }

        h2 "Mindset"
        p {
          text "A concept relating achievement and success. There are two different types: fixed and growth. A fixed mindset is: Talent and intelligence are fixed and cannot be developed. A growth mindset is: Ability is developed through growth and hard work. This type of mindset incorporates motivation and hard work. "
          a(href:'//www.youtube.com/watch?v=ehQltJJehNs', target: '_blank') {
          text "Watch our conversation with Nathalia"
        }
          text " where growth and fixed mindsets are mentioned."
        }
        p {
          a(href:'//mindsetonline.com/whatisit/about/', target:'_blank'){
            text "Learn more about both mindsets"
          }
          text " based on work pioneered by Carol Dweck at Stanford University."
        }

        h2 "Multisensory integration"
        p "How information from different modalities – such as sight, sound, taste, and touch,  are integrated. Sound and sight are integrated in a place above your ear, which also has been involved in touch perception as well!"
        p {
          text "Michael Beauchamp’s lab at the Baylor college of Medicine is "
          a(href:'//openwetware.org/wiki/Beauchamp'){
            text "pioneering research about multisensory integration in the human brain"
          }
          text "."
        }

        h2 "Myelin"
        p {
          text "A mixture of proteins and fat that insulate axons (see "
          strong "white matter"
          text "). This insulation speeds up the conduction of impulses down the axon, and therefore speeds up communication. Think of the myelin covering as the white covering of your power cord for your iPhone. You don’t see the wires on the inside, you just see the outer covering. Different than this covering though, the myelin sheath around an axon skips certain parts. So, part of the axon are naked and others are covered. This enables "
          strong "saltatory conduction"
          text "."
        }

        h2 "Neuron"
        p {
          text "A type of cell that processes and communicates information using both electrical and chemical signals. Also known as a brain cell. A neuron consists of a "
          strong "cell body"
          text ", an "
          strong "axon"
          text ", and "
          strong "dendrites"
          text "."
        }

        h2 "Occipital lobe"
        p {
          text "One of the four major lobes of the "
          strong "cerebral cortex"
          text ". It is separated from the temporal lobe by the posterior transverse collateral "
          strong "sulcus"
          text " and the parietal lobe by transverse occipital sulcus. It contains many different "
          strong "gyri"
          text " and "
          strong "sulci"
          text ", each with functional roles in different aspects of vision such as processing information about position, movement, and color. Also, different aspects related to reading, as well as scene, object, and face processing."
        }

        h2 "Parietal lobe"
        p {
          text "One of the four major lobes of the "
          strong "cerebral cortex"
          text ". It is separated from the temporal lobe by the posterior aspects of the superior temporal "
          strong "sulcus"
          text ", the occipital lobe by transverse occipital "
          strong "sulcus"
          text ", and the frontal lobe by the central "
          strong "sulcus"
          text ". It contains many different "
          strong "gyri"
          text " and "
          strong "sulci"
          text ", each with functional roles in different aspects of vision, eye movements, hand movements, memory, the sense of touch, as well as complex processing such as the integration of information across different modalities and even interpreting the intention of others. "
          a(href:'//www.youtube.com/watch?v=ehQltJJehNs', target: '_blank') {
            text "Watch Kevin's conversation with Nathalia"
          }
          text " to learn more about the parietal lobe!"
        }

        h2 "Perceptron"
        p "A machine learning algorithm that learns to classify one object from another. In the context of our questions, ‘perceptronic’ refers to this classification ability and specifically, the way to classify a new set of characters (such as Lorne Lanning’s aliens in Oddworld) from another."

        h2 "Perceptual expertise"
        p {
          text "Bird experts. Car experts. We all know them. They are examples of people with a particular type of perceptual expertise, which is best defined as an enhanced ability to discriminate fine-grained differences between stimuli based off extensive experience. Also, the players of Lorne’s Oddworld have developed a type of perceptual expertise defining each of Lorne’s characters that he has created. "
          a(href:'//www.youtube.com/watch?v=00q71VOOu2s', target: '_blank') {
          text "Watch Kevin’s conversation with Lorne"
        }
          text " to find out how this perceptual expertise is linked to the Fusiform gyrus."
        }
        p {
          a(href:'//global.oup.com/academic/product/perceptual-expertise-9780195309607?cc=us&lang=en&', target: '_blank'){
            text "Read this book"
          }
          text " for a comprehensive survey of perceptual expertise in visual object recognition.  And "
          a(href:'http://gauthier.psy.vanderbilt.edu/', target: '_blank'){
            text "Isabel Gauthier’s lab at Vanderbilt University"
          }
          text " is pioneering this type of research."
        }

        h2 "Reward system"
        p {
          text "A system of both cortical and subcortical structures involved in behavioral reinforcement. This system is activated throughout our everyday lives from getting a good grade on a test to buying something online to getting a text message to having sex or even learning a new way to get home after work. "
          strong "Dopamine"
          text " is a major neurotransmitter of this system."
        }

        h2 "Saltatory conduction"
        p "Nerve impulses of a neuron skip, or hop, along an axon in order to increase the speed of communication compared to if the impulse just traveled in a straight fashion. Think of throwing a rock across the water. It will go farther (and it’s easier on your shoulder) if you skip it as opposed to throwing it up as hard as you can. So your neurons send impulses just like the way you skip rocks! (for the Latin geeks out there like Dr. Weiner: Saltare is Latin for ‘hop’ or ‘leap’)."

        h2 "Sulcus"
        p "While the gyri are the hills of the brain, sulci (singular: sulcus) are the indentations of the brain due to the folding process."


        h2 "Subcortical"
        p {
          text "Refers to structures that are literally below, or under, the cortex. While cortical regions are important for different senses and cognition, subcortical structures are also crucial for different senses and cognition. Both "
          strong "cortical"
          text " and subcortical structures are connected through anatomical tracts that are made of "
          strong "white matter"
          text "."
        }

        h2 "Temporal lobe"
        p {
          text "One of the four major lobes of the "
          strong "cerebral cortex"
          text ". It is separated from the frontal lobe by the lateral "
          strong "sulcus"
          text " and the occipital lobe by the posterior transverse collateral "
          strong "sulcus"
          text ". It contains many different "
          strong "gyri"
          text " and "
          strong "sulci"
          text ", each with functional roles spanning memory, vision, color processing, face perception, object perception, reading, "
          strong "multisensory integration"
          text ", and much much more!"
        }

        h2 "White matter"
        p {
          text "While gray matter consists of the neuronal cell bodies packed together in 6 layers, white matter consists of the long range axons which appear white due to the outer covering of these axons (see "
          strong "myelin"
          text ")."
        }

        h2 "Working memory"
        p "Maintenance of information for a goal to guide a behavior."

      }
    }

































  end

end