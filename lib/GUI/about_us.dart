import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'img/logoTeam.png',
                      width: 300,
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 10),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Text(
                  'We hereby declare that this project and report including all '
                      'the information associated with it is our own work and it '
                      'has not been submitted previously or is being currently '
                      'submitted for any other degree program.',
                    style: Theme.of(context).textTheme.bodyText2,
                  )
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 20, left: 10),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special Thanks :',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      Text(
                          'The DIRAD team would like to express their gratitude'
                              ' to the individuals who played a crucial role in the '
                              'success of the project. Firstly, we would like to thank '
                              'our module leader/Mentor, Mr. Banu Athuraliya, for his guidance '
                              'and dedication to providing us with the best experience '
                              'in the module. His sessions, along with his continuous '
                              'encouragement, helped us stay motivated and focused on '
                              'the project. The mentorship and expertise we received from '
                              'him and the SDGP team '
                              'were instrumental in helping us deliver a better output.'
                              ' Additionally, we would like to thank our families and '
                              'friends for their unwavering support and encouragement '
                              'throughout the project. Without their support, we would '
                              'not have been able to achieve the level of success we '
                              'have so far.',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  )
              ),
            ),

            //History and background
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Team Members Details:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text('S.Rithurson - w1810200 - 2019702'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text('K. L. Dulara Hansaka  1870621 20200552'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text('K.A.K.I.U. Kuruppu 1867045 20210172'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text('D. L. S. Vithanage 1870623 20200629'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text('A.N. Udugampola 19028860 20211438'),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 25),
                child: Container(
                  child: ClipRRect(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('img/iitLogo.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                )
            )
            //Name and Logo
          ]


        ),
      ),


    );
  }
}
