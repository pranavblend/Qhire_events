import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomsheetui extends StatefulWidget {
  const Bottomsheetui({super.key});

  @override
  State<Bottomsheetui> createState() => _BottomsheetuiState();
}

class _BottomsheetuiState extends State<Bottomsheetui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: 650,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Icon(Icons.keyboard_arrow_down_outlined,size: 45,color: Color.fromRGBO(232, 143, 27, 1),),
            Text("Filter",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
            
            SizedBox(height: 20,),

            TabBar(
              tabs: [
                Tab(child: Text("Field",style: TextStyle(
                  fontWeight: FontWeight.w400
                ),),),
                Tab(text: 'Type'),
                Tab(text: 'Salary'),
              ],
              indicator: BoxDecoration(
                color: Color.fromRGBO(232, 143, 27, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                decoration: TextDecoration.none,
              ),
              dividerColor: Colors.transparent,
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(elevation: 5,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10),
                    hintText: "Search",
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.5)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(14, 116, 244, 1),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.01),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(.3),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(.3),
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(.3),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28,
                      color: Color.fromRGBO(232, 143, 27, 1),
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Fieldui(),
                   Typeui(),
                  Salaryui(),
                ],
              ),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: size.height * .040,
                      width: size.width * .3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color.fromRGBO(232, 143, 27, 1))),
                      child: Center(
                        child: Text(
                          "Clear",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )),



                  Container(
                      height: size.height * .040,
                      width: size.width * .3,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 143, 27, 1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),

                ],
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
        ),
      );
  }
}
class Fieldui extends StatefulWidget {
  const Fieldui({super.key});

  @override
  State<Fieldui> createState() => _FielduiState();
}

class _FielduiState extends State<Fieldui> {
  bool? isChecked1 = true;
  bool? isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [
          
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked1 = val;
                          });
                        }),
                    Text("Software Developer",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),)
          
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked1 = val;
                          });
                        }),
                    Text("Data Scientist",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),)
          
                  ],
                ),
              ),
          
          
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked1 = val;
                          });
                        }),
                    Text("Cybersecurity Analyst",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),)
          
                  ],
                ),
              ),
          
          
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked2 = val;
                          });
                        }),
                    Text("UI/UX Designer",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),)
          
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked1 = val;
                          });
                        }),
                    Text("Cloud Architect",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
          
                  ],
                ),
              ),
          
          
          
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked1 = val;
                          });
                        }),
                    Text("Sysyetm Analysrt",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),)
          
                  ],
                ),
              ),
          
          
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Checkbox(
                        tristate: false,
                        activeColor: Color.fromRGBO(232, 143, 27, 1),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (val) {
                          setState(() {
                            isChecked1 = val;
                          });
                        }),
                    Text("Product Mananger",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),)
          
                  ],
                ),
              ),
              
              
          
          
            ],
          ),
        ),
    );
  }
}


class Typeui extends StatefulWidget {
  const Typeui({super.key});

  @override
  State<Typeui> createState() => _TypeuiState();
}

class _TypeuiState extends State<Typeui> {
  bool? isChecked1 = true;
  bool? isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val;
                        });
                      }),
                  Text("Full Time",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val;
                        });
                      }),
                  Text("Part Time",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val;
                        });
                      }),
                  Text("Internship",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked2 = val;
                        });
                      }),
                  Text("Freelance",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),










          ],
        ),
      ),
    );
  }
}
class Salaryui extends StatefulWidget {
  const Salaryui({super.key});

  @override
  State<Salaryui> createState() => _SalaryuiState();
}

class _SalaryuiState extends State<Salaryui> {
  bool? isChecked1 = true;
  bool? isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val;
                        });
                      }),
                  Text("All Range",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val;
                        });
                      }),
                  Text("10K-15K",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val;
                        });
                      }),
                  Text("25-35",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 30,),
              child: Row(
                children: [
                  Checkbox(
                      tristate: false,
                      activeColor: Color.fromRGBO(232, 143, 27, 1),
                      checkColor: Colors.white,
                      value: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked2 = val;
                        });
                      }),
                  Text("More than 50K",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)

                ],
              ),
            ),










          ],
        ),
      ),
    );
  }
}

