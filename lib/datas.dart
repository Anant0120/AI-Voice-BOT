class ICInfo {
  final int position;
  final String? name;
  final String? iconImage;
  final String? description;
  final String? website;

  final List<String>? images;


  ICInfo(
      this.position, {
        this.name,
        this.iconImage,
        this.description,
        this.images,
        this.website

      });
}


List<ICInfo> Ics = [
  ICInfo(
    1,
    name: 'IC 7408',
    iconImage: 'Assets/images/7408-removebg-preview.png',
    description:
    "IC 7408 is a logic gate chip with four two-input AND gates. Each of the four AND gates are independent. Each gate has one output, two inputs and three pins. The AND gates carry out logic AND operation.\n\n"
        "Core Features- \n 1.Four Independent 2-Input AND Gates \n 2.  Large Operating Voltage Range \n 3. Wide Operating Condition\n\nTechnical Description - \n1. Supply Voltage - 7V\n2. Input Voltage - 5.5V\n3. Storage Temperature Range - 0C to +70C\n4. Operating Free Air Temperature - -65C to 150C",
    website: "https://datasheet4u.com/datasheet-pdf/Fairchild/7408/pdf.php?id=500074",

    images: [
      'https://2.bp.blogspot.com/-6xvXd5nRNBc/XFG_b9X0qaI/AAAAAAAABLw/ucbQG-HiaKcQWoigMwrezg31unw6j4GugCLcBGAs/s640/IC%2B7408%2Bpin%2Bdiagram.png',
      'https://i.ibb.co/MnCxC2s/7408Nor.png'
      'https://www.zseries.in/electronics%20lab/ics/pictures/truth%20table%20of%20ic7408.png'
    ],

  ),

  ICInfo(2,
      name: 'IC 7404',
      iconImage: 'Assets/images/7404-ic-1-550x550w-removebg-preview.png',
      description:
      "7404 is a NOT Gate IC ,This a 14 pin DIP version of the popular NOT Gate IC. 7404 is a NOT gate IC. It consists of six inverters which perform logical invert action. The output of an inverter is the complement of its input logic state, i.e., when input is high its output is low and vice versa.\n\n"
          'Core Features -\n'
          '1. Six Hex Inverters\n'
          '2. Large Operating Voltage Range\n'
          '3. Wide Operating Conditions\n\n'
          "Technical Description -\n"
          " Supply Voltage - 7v\n"
          " Input Voltage - 5.5v"
          " Storage Temperature Range - -65°C to +150°C\n"
          " Operating Free Air Temperature - 0°C to +70°C\n",

      website: "https://www.alldatasheet.com/datasheet-pdf/pdf/23020/STMICROELECTRONICS/7404.html",


      images: [

        'https://3.bp.blogspot.com/-pg4bUe-xfns/XFFD9HMB_nI/AAAAAAAABLY/xiLIKkKNKkAOBP5mSKKImOe0luDvzk6XQCLcBGAs/s1600/IC%2B7404%2Bpin%2Bdiagram.png',
        'https://i.ibb.co/xjKxz3R/7404hex.jpg'
        'https://www.futurlec.com/IC7404.gif',

      ]),
  ICInfo(3,
      name: 'IC 7400',
      iconImage: 'Assets/images/7400-ic-1-550x550w-removebg-preview.png',
      description:
      "The IC 7400 is a 14-pin chip and it includes four 2-input NAND gates. Every gate utilizes 2-input pins & 1-output pin, by the remaining 2-pins being power & ground. This chip was made with different packages like surface mount and through-hole which includes ceramic (or) plastic dual-in-line and flat pack."
          "Core Features -\nFour Independent 2-Input NAND GatesOutputs \nDirectly Interface to CMOS, NMOS and TTL\nLarge Operating Voltage RangeWide Operating Conditions\n\n"
          "Technical Description -\n"
          " Supply Voltage - 7v\n"
          " Input Voltage - 5.5v"
          " Storage Temperature Range - -65°C to +150°C\n"
          " Operating Free Air Temperature - 0°C to +70°C\n",

      website: "https://web.mit.edu/6.131/www/document/7400.pdf",
      images: [
        'https://4.bp.blogspot.com/-_bLOsabnaAI/XFPmSLkI0tI/AAAAAAAABNE/y3kkl0ZeJdIOb177FbKtDMehPy-7VzcSACLcBGAs/s640/IC%2B7400%2Bpin%2Bdiagram.png'

            'https://www.futurlec.com/IC7400.gif',
         ]),
  ICInfo(4,
      name: 'IC 7432',
      iconImage: 'Assets/images/7432IC-removebg-preview.png',
      description:
      "The 7432 is a 14 Pin Quad 2-Input OR Gate IC. The 7432 provides four independent 2-input OR gates with standard push-pull outputs. The device is designed for operation with a power supply range of 2.0V to 6.0V. Inputs include clamp diodes "
          "Core Features -\n"
          "-Four Independent 2-Input NAND Gates\n"
          "-Outputs Directly Interface to CMOS, NMOS and TTL\n"
          "-Large Operating Voltage Range\n"
          '-Wide Operating Conditions\n\n'

          'Technical Description -\n'
          '-Supply Voltage - 7v\n'
          '-Input Voltage - 5.5v\n'
          'Storage Temperature Range - -65°C to +150°C\n'
          'Operating Free Air Temperature - 0°C to +70°',


      website: "https://www.futurlec.com/74/IC7432.shtml",

      images: [
        'https://4.bp.blogspot.com/-QXkg2GHttuk/XFKJd3xgzgI/AAAAAAAABMI/PxWAf0DG1S8EJ1s4b4MXYBAWM04WRtWFQCLcBGAs/s640/IC%2B7432%2Bpin%2Bdiagram.png'

            'https://www.futurlec.com/IC7432.gif',
           ]),
  ICInfo(5,
      name: 'IC 7436',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
      "IC 7436 is a digital logic gate IC (integrated circuit) that contains four independent 2-input NAND gates. It is commonly used in various digital circuits and systems to perform logical operations, such as Boolean algebra and digital signal processing."

          "Core Features -\n"
          "-Four independent 2-input NAND gates\n"
          "-High output drive capability\n"
          "-Low propagation delay\n"

          'Technical Description -\n'
          '-Supply Voltage – 4,75v to 5.25v\n'
          '-Input Voltage - -0.5 to 7.0v\n'
          'Operating Temperature Range - 55°C to +125°',

      website: 'http://www.anpec.com.tw/ashx_prod_file.ashx?prod_id=1031&file_path=20211115132748272.pdf&original_name=APW7436.pdf',

      images: [
        'https://ralfzimmermann.de/ttl_ic/7436.gif'

      ]),
  ICInfo(6,
      name: 'IC 7486',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
        "Core Features -\n"
          "-Four Independent 2-Input NAND Gates\n"
          "-Outputs Directly Interface to CMOS, NMOS and TTL\n"
          "-Large Operating Voltage Range\n"
          '-Wide Operating Conditions\n\n'
          'Technical Description -\n'
          '-Supply Voltage - 7v\n'
          '-Input Voltage - 5.5v\n'
          'Storage Temperature Range - -65°C to +150°C\n'
          'Operating Free Air Temperature - 0°C to +70°',

        website:       'https://www.alldatasheet.com/datasheet-pdf/pdf/25158/STMICROELECTRONICS/TDA7386.html',
      images: [
        'https://www.futurlec.com/IC7486.gif',
        'https://1ohm.in/wp-content/uploads/2021/07/7486-IC-Pinout.jpg'
      ]),
  ICInfo(7,
      name: 'IC 7406',
      iconImage: 'Assets/images/74066-removebg-preview.png',

      description:"The IC 7406 is a member of the 7400 series of transistor-transistor logic (TTL) integrated circuits.\n\n"
          "Core features :\n"

          '-The IC 7406 contains six independent open-collector inverters.\n'
          '-It operates on a supply voltage of 4.75V to 5.25V.\n'
          '-It has a maximum input voltage of 5.5V and a maximum output voltage of 30V.\n'
          '-The IC 7406 is characterized by high-speed operation and high noise immunity.\n'
          '-It has a maximum propagation delay of 15 nanoseconds (ns).\n'
          "-The open-collector output of the IC 7406 allows for wired OR connections, which can be useful in certain applications.\n",
      //  '-The IC 7406 is available in a variety of packages, including DIP, SOIC, and TSSOP.\n',
      // 'It is widely used in digital logic applications, such as clock and signal distribution, data bus buffering, and interfacing with other TTL or CMOS logic families.',
      website: 'https://www.futurlec.com/74/IC7406.shtml',
      images: [
        'https://www.elektropage.com/images/ic/7406_HD74LS06_pin_diagram.JPG_226ED.jpg',
        'https://www.futurlec.com/DIP14.gif'
        'Assets/images/7406_pins.png'

      ]),
  ICInfo(8,
      name: 'IC 4075',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
      "IC 4075 is a digital logic gate IC (integrated circuit) that contains three independent 3-input OR gates. It is commonly used in various digital circuits and systems to perform logical operations, such as Boolean algebra and digital signal processing."

          "Core Features -\n"
          "-Three independent 3-input OR gates\n"
          "-High output drive capability\n"
          "-Wide Supply Voltage Range\n"

          'Technical Description -\n'
          '-Supply Voltage – 3v to 15v\n'
          '-Input Voltage - -0.5 to +0.5v\n'
          'Operating Temperature Range - 55°C to +125°',

      website: 'https://www.futurlec.com/4000Series/CD4075.shtml',

      images: [
        'https://i.ibb.co/2WMGLZv/4075.png'
            'https://i.ibb.co/BBcKjjv/4075B.jpg'
         ]),
  ICInfo(9,
      name: 'IC 7496',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:

      "The 74LS96 is a 5-bit shift register with both serial and parallel (ones transfer) data entry. Since the '96 has the output of each stage available as well as a D-type serial input and ones transfer inputs on each stage, it can be used 5-bit serial- to-parallel, serial-to-serial and some parallel-to-serial data operations."

          "Core Features -\n"
          "-5-bit parallel-to-serial or serial-to-parallel converter\n"
          "-Asynchronous transfer preset entry\n"
          "-Buffered positive-triggered clock\n"
          '-Buffered active LOW Clear\n\n'

          'Technical Description -\n'
          '-Supply Voltage - 7v\n'
          '-Input Voltage - -0.5 to 7.0v\n'
          'Operating Free Air Temperature - 0°C to +70°',

      website: 'https://robu.in/wp-content/uploads/2021/10/74ls96-ic-datasheet.pdf',

      images: [
        'https://i.ibb.co/qmGk2hV/7496.png'
         ]),
  ICInfo(10,
      name: 'IC 7450',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
      "IC 7450 is a digital logic gate IC (integrated circuit) that contains two independent 2-wide 2-input AND-OR-Invert gates. It is commonly used in various digital circuits and systems to perform logical operations, such as Boolean algebra and digital signal processing."

          "Core Features -\n"
          "-Two independent 2-Wide 2-input AND-OR Invert gates\n"
          "-High output drive capability\n"
          "-Wide Supply Voltage Range\n"

          'Technical Description -\n'
          '-Supply Voltage – 4.75v to 5.25v\n'
          '-Input Voltage - -0.5 to +7v\n'
          'Operating Temperature Range - 55°C to +125°',

      website: 'https://www.commscope.com/globalassets/digizuite/61731-ds-icx-7450.pdf',


      images: [
        'https://i.ibb.co/Ny4TQJC/7450.png'
         ]),
  ICInfo(11,
      name: 'IC 7410',
      iconImage: 'Assets/images/common-removebg-preview.png',

      description:
'The 7410 IC is a digital logic gate IC (integrated circuit) that contains three independent 3-input NAND gates. It is commonly used in various digital circuits and systems to perform logical operations, such as Boolean algebra and digital signal processing.'

'Core Features:'

'Three independent 3-input NAND gates'
'High output drive capability'
'Wide Supply Voltage Range'
'Technical Description:'

'Supply Voltage: 4.75V to 5.25V'
'Input Voltage: -0.5V to +7V'
'Operating Temperature Range: -55°C to +125°C',

      website: 'https://www.futurlec.com/74/IC7410.shtml',

      images: [
        'https://i.ibb.co/PjWFPyQ/7410.png'
        'https://i.ibb.co/61pBSRR/7410b.jpg'
      ]),
  ICInfo(12,
      name: 'IC 7420',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
'The 7420 IC is a digital logic gate IC (integrated circuit) that contains two independent 4-input NAND gates. It is commonly used in various digital circuits and systems to perform logical operations, such as Boolean algebra and digital signal processing.'

'Core Features:'

'Two independent 4-input NAND gates'
'High output drive capability'
'Wide Supply Voltage Range'
'Technical Description:'

'Supply Voltage: 4.75V to 5.25V'
'Input Voltage: -0.5V to +7V'
'Operating Temperature Range: -55°C to +125°C',

      website: 'https://www.futurlec.com/74/IC7420.shtml',


      images: [
        'https://www.elektropage.com/images/ic/74series/7420.GIF'
         ]),
  ICInfo(13,
      name: 'IC 555',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
'The IC 555, also known as the NE555 or LM555, is a widely used integrated circuit that functions as a timer or an oscillator. It is commonly used in various applications such as pulse generation, timing, frequency division, and waveform generation.'

'Core Features:'

'Versatile timer/oscillator functionality'
'Can operate in various modes including monostable (one-shot) mode, astable (free-running) mode, and bistable (flip-flop) mode'
'Wide supply voltage range'
'Technical Description:'

'Supply Voltage: Typically operates from 4.5V to 16V'
'Input Voltage: Usually 0V to VCC (supply voltage)'
'Operating Temperature Range: Typically -40°C to +85°C'
'The IC 555 is available in different package types, such as DIP (Dual In-line Package) and SOIC (Small Outline Integrated Circuit). It consists of several internal components, including comparators, resistors, and a flip-flop, which enable its versatile functionality.',

      website: 'https://www.ti.com/lit/ds/symlink/ne555.pdf',

      images: [
       'https://i.ibb.co/pz682pL/ic555.jpg'  ]),
  ICInfo(14,
      name: 'IC 7805',
      iconImage: 'Assets/images/common-removebg-preview.png',
      description:
'The IC 7805 is a popular linear voltage regulator integrated circuit. It is commonly used to provide a regulated +5V DC power supply in various electronic circuits and systems.'

'Core Features:'

'Regulates and stabilizes the input voltage to a constant +5V output voltage'
'Provides a fixed voltage regulation with minimal ripple and noise'
'Suitable for low to medium current applications'
'Technical Description:'

'Input Voltage Range: Typically up to 35V (maximum input voltage may vary depending on the manufacturer)'
'Output Voltage: Fixed +5V DC'
'Output Current Capability: Up to 1A (varies depending on the specific model)'
'Dropout Voltage: Usually around 2V (the minimum voltage difference required between input and output for proper regulation)'
'The IC 7805 is available in different package types, including TO-220 (through-hole) and TO-92 (small transistor-like package). It is widely used in various electronic devices, ranging from small hobbyist projects to larger industrial applications, where a regulated +5V power supply is required,',

      website: 'https://www.sparkfun.com/datasheets/Components/LM7805.pdf',

      images: [
        'https://www.componentsinfo.com/wp-content/uploads/2020/05/lm7805-pinout-datasheet.gif'
          ]),
ICInfo(
15,
name: 'IC LM741',
iconImage: 'Assets/images/common-removebg-preview.png',
description:
"IC LM741 is a general-purpose operational amplifier IC (integrated circuit) that is widely used in various analog signal processing and amplification applications. It provides high gain and excellent performance for a wide range of circuit designs.\n\n"
"Core Features:\n"
"- Single Operational Amplifier\n"
"- High Gain\n"
"- Low Input Bias Current\n"
"- Wide Supply Voltage Range\n\n"
"Technical Description:\n"
"- Input Voltage Range: -15V to +15V\n"
"- Output Voltage Range: -14V to +14V\n"
"- Operating Temperature Range: 0°C to +70°C\n",

website: 'https://www.alldatasheet.com/view.jsp?Searchword=Lm741%20datasheet&gclid=CjwKCAjwgqejBhBAEiwAuWHioKjRRqVaTx8q1srDeT0P8W9DTZPAcH1BU8LwDTuRg32FbFSsapdSeBoCceQQAvD_BwE',


images: [
  'https://www.learningaboutelectronics.com/images/LM741_pinout_diagram.jpg'
          ]),
          ICInfo(
          16,
          name: 'IC LM358',
iconImage: 'Assets/images/common-removebg-preview.png',
description:
"IC LM358 is a dual operational amplifier IC (integrated circuit) that consists of two independent operational amplifiers. It is commonly used in various analog signal processing and amplification applications.\n\n"
"Core Features:\n"
"- Two Independent Operational Amplifiers\n"
"- Low Input Offset Voltage\n"
"- Low Input Bias Current\n"
"- Wide Supply Voltage Range\n\n"
"Technical Description:\n"
"- Input Voltage Range: -0.3V to Vcc + 0.3V\n"
"- Output Voltage Range: 0V to Vcc\n"
"- Operating Temperature Range: -40°C to +125°C\n",

website: 'https://www.alldatasheet.com/view.jsp?Searchword=Lm358%20datasheet&gclid=CjwKCAjwgqejBhBAEiwAuWHioH9ZSnBGF3FEGSoxsfXrXx1ah02nlZ7GMvCKu6tMS4wUTtfBIc3o4BoC8x4QAvD_BwE',

images: [
  'https://www.electroniclinic.com/wp-content/uploads/2020/08/lm358-pinout-lm358-pin-configuration.jpg'
           ]),
ICInfo(
17,
name: 'IC LM324',
iconImage: 'Assets/images/common-removebg-preview.png',
description:
"IC LM324 is a quad operational amplifier IC (integrated circuit) that consists of four independent operational amplifiers. It is widely used in various analog signal processing and amplification applications.\n\n"
"Core Features:\n"
"- Four Independent Operational Amplifiers\n"
"- Low Input Bias Current\n"
"- Low Input Offset Voltage\n"
"- Wide Supply Voltage Range\n\n"
"Technical Description:\n"
"- Input Voltage Range: -0.3V to Vcc + 0.3V\n"
"- Output Voltage Range: 0V to Vcc\n"
"- Operating Temperature Range: -40°C to +125°C\n",

website: 'https://www.alldatasheet.com/view.jsp?Searchword=Lm324%20datasheet&gclid=CjwKCAjwgqejBhBAEiwAuWHioLva-0MdHKnIKT3vvL0TnlnieGzpOTgDwQt17qGhlZmL_by_UZ24ExoCUaoQAvD_BwE',

images: [
  'https://www.researchgate.net/profile/Dinesh-Mute/publication/308825178/figure/fig4/AS:668527677689861@1536400827240/Pin-Diagram-of-LM324-LM324-Combine-the-four-op-amp-IC-ie-IC-A-ICB-IC-C-and-IC-D-as-show.jpg'
        ]),
ICInfo(
18,
name: 'IC LM386',
iconImage: 'Assets/images/common-removebg-preview.png',
description:
"IC LM386 is a low voltage audio power amplifier IC (integrated circuit) that is widely used in audio amplifier circuits. It provides a simple and cost-effective solution for amplifying audio signals in various applications.\n\n"
"Core Features:\n"
"- Low Voltage Operation\n"
"- Low Quiescent Current\n"
"- Gain Selectable from 20 to 200\n"
"- Internal Thermal Shutdown Protection\n\n"
"Technical Description:\n"
"- Input Voltage Range: 4V to 12V\n"
"- Output Power: Up to 1 Watt\n"
"- Operating Temperature Range: -40°C to +85°C\n",

website: 'https://www.alldatasheet.com/view.jsp?Searchword=Lm386%20datasheet&gclid=CjwKCAjwgqejBhBAEiwAuWHioCmaHsPO6-5blIP9AsjN_csQmWwnImIinSZLOhfeb3WIyTULBmuuaBoCOnsQAvD_BwE',


images: [
  'https://www.learningaboutelectronics.com/images/LM386_pinout_diagram.png'
         ]),
ICInfo(
19,
name: 'IC LM7805',
iconImage: 'Assets/images/common-removebg-preview.png',
description:
"IC LM7805 is a linear voltage regulator IC (integrated circuit) that provides a stable output voltage of 5 volts. It is commonly used in various electronic circuits and systems to regulate the voltage and provide a reliable power supply.\n\n"
"Core Features:\n"
"- Output Voltage: 5V\n"
"- Maximum Output Current: 1A\n"
"- Low Dropout Voltage\n"
"- Thermal Overload Protection\n\n"
"Technical Description:\n"
"- Input Voltage Range: 7V to 35V\n"
"- Output Voltage: 5V\n"
"- Maximum Output Current: 1A\n"
"- Operating Temperature Range: -55°C to +125°C\n",

website: 'https://www.alldatasheet.com/view.jsp?Searchword=Lm7805%20datasheet&gclid=CjwKCAjwgqejBhBAEiwAuWHioKTQMuiEtIfpfwnzHdb7DyhigxIDn_NhLq-XlHGgWCtle3GXhXAsCxoCRGoQAvD_BwE',


images: [
  'https://www.componentsinfo.com/wp-content/uploads/2020/05/lm7805-pinout-datasheet.gif'
  ]),
  ICInfo(20,
      name: 'IC 8051',
      iconImage: 'Assets/images/8051-removebg-preview.png',
      description:
'IC 8051 refers to the Intel 8051 microcontroller, which is an 8-bit microcontroller architecture developed by Intel in the early 1980s. The 8051 is widely used in various embedded systems and applications due to its simplicity, versatility, and low-cost implementation'

'The Intel 8051 microcontroller family includes several members, each with its own set of features and capabilities. Some popular variants of the 8051 architecture include the 8051, 8052, 8031, and 8032.'

'Key features of the 8051 microcontroller architecture include:'

'8-bit CPU: The 8051 has an 8-bit central processing unit (CPU) with a wide range of data manipulation and arithmetic operations.'

'On-chip memory: It typically includes on-chip random-access memory (RAM) for data storage and on-chip read-only memory (ROM) or flash memory for program storage.'

'I/O ports: The 8051 features multiple input/output (I/O) ports that can be used to interface with external devices such as sensors, displays, and other peripherals.'

'Timers/Counters: The 8051 microcontroller has built-in timers/counters that can be used for various timing and counting applications.'

'Interrupts: It supports both hardware and software interrupts, allowing the microcontroller to respond to external events in a timely manner.'

'Serial communication: The 8051 supports various serial communication protocols such as UART (Universal Asynchronous Receiver/Transmitter) and SPI (Serial Peripheral Interface), making it suitable for interfacing with other devices',

website: 'https://www.alldatasheet.com/view.jsp?Searchword=8051%20datasheet&gclid=CjwKCAjwgqejBhBAEiwAuWHioMagG91XqMg59BBjlCu3iZD_20A3qMLO0Xgd2fUqvZtWGWvWTV6V9hoCl3YQAvD_BwE',
      images: [
        'https://www.electronicshub.org/wp-content/uploads/2017/10/8051-Microcontroller-Pin-Diagram-and-Pin-Description-Image-1.jpg'
          ]),

];