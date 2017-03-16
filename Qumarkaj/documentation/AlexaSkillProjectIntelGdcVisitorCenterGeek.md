# Skill: Geek

- __Invocation Name__: Open Geek, Ask Geek to...
  - __Intents__
    - GetNewFactIntent a fact
    - GetNewFactIntent facts
    - GetNewFactIntent an Intel fact
    - GetNewFactIntent tell me a fact
    - GetNewFactIntent tell me an Intel fact
    - GetNewFactIntent give me a fact
    - GetNewFactIntent give me an Intel fact
- __Answer__

```js
const languageStrings = {
    'en-US': {
        translation: {
            FACTS: [
                'Intel was founded in 1968 by physicist Robert Noyce and chemist Gordon Moore',
                'Robert Noyce and Gordon Moore had previously worked together at the Shockley Semiconductor Laboratory and then Fairchild Semiconductor',
                'Robert Noyce shares credit with Jack Kilby for inventing the integrated circuit, aka the microchip',
                'Moore\'s eponymous law: the number of transistors affordably placed on a microchip will double every two years',
                'Gordon Moore\'s 1965 prediction was for an annual change; he updated it to every other year in 1975',
                'Many believe that Moore\'s Law will cease to be true by 2014; Moore says the end of the trend is near',
                'Intel\'s initial name, "Moore Noyce" was scrapped, allegedly because it sounded a too much like "more noise',
                'The name Intel derives from INTegrated ELectronics, but they had to pay a hotel chain $15,000 for exclusive use of it',
                'Intel\'s first year revenues: $2,672',
                'An estimated 10,000,000,000,000,000,000 transistors were shipped annually by 2003, about 100 times the world\'s ant population',
                'The price of a single transistor on a chip is about the cost of a single printed newspaper character',
                'The so-called Wintel alliance with Microsoft, the Windows in Wintel, helped make Intel a global power',
                'Intel has held the number one spot in market share for semiconductor manufacturing since 1991',
                'In 2009, Intel had 14.2 percent of the market, double the 7.2 percent held by second-place Samsung Electronics',
                'In 2009 Intel was ranked the 23rd most powerful brand in the world',
                'Robert Noyce, nicknamed "the Mayor of Silicon Valley," was known as a daredevil who heli-skied the backcountry',
                'Gordon Moore is known for donating millions to environmental and educational causes',
                'Robert Noyce mentored many other tech upstarts, among them Steve Jobs',
                'Intel\'s first big success came in 1971 with the Intel 4004 microprocessor',
                'The fingernail-thin 4004 offered the same computing firepower as the room-sized ENIAC, the first ever computer introduced in 1946',
                'The 4004 four-bit CPU contained 2,300 transistors',
                'Ten years later, the 8088 CPU was included in the first personal computer released by IBM',
                'Including the Intel 8088 CPU was the first time IBM had ever used an outside vendor to create a key microprocessor for one of its machines',
                'The 8088 had 29,000 transistors',
                'The current Core2Duo processor has 100,000 times the number of transistors of the 4004 and 10,000 times the number in the 8088',
                'Thank Intel\'s founders for popularizing office cubicles, a staple of early corporate culture',
                'Current CEO Brian Brian Krzanich sits in a cubicle',
                'The cleanroom of a semiconductor chip fabrication plant is thousands of times cleaner than the typical hospital room',
                'Air in a cleanroom has no particles measuring thicker than 0.5 micron across. A human hair is about 100 microns',
                'Bunny suits are the specialized outfits worn by cleamroom technicians to protect chips from contamination',
                'The monorail systems used to transport silicon wafers in an Intel cleanroom have up to three miles of track',
                'Intel maintains a 10,000-square-foot museum dedicated to its 40-year history',
                'Around 80,000 people a year visit the Intel Museum',
                'Intel employs more than 80,000 people worldwide. Half of them are based in the U.S.',
                'Intel spent $5.7 billion on Research and Deelopment in 2008',
                'Intel Capital has invested $9 billion in 1,000 companies since 1991, and will spend $3.5 billion more over the next two years',
                'Intel refers to its non-stop, iterative process of developing processor microarchitecture as the "tick-tock" model',
                'The first year is the "tick" phase, focusing on new process technology and refining the existing microarchitecure',
                'The second year is the "tock" phase, where the goal is to deliver a brand new microarchitecure',
                'Intel Guadalajara was founded in 2000',
                'Intel Guadalajara has over 1400 employees',
                'Intel Guadalajara Visitor Center was founded in 2014',
            ],
            SKILL_NAME: 'Intel Facts',
            GET_FACT_MESSAGE: "Here's your fact: ",
            HELP_MESSAGE: 'You can say tell me an Intel fact, or, you can say exit... What can I help you with?',
            HELP_REPROMPT: 'What can I help you with?',
            STOP_MESSAGE: 'Goodbye!',
        },
    },
};
```

