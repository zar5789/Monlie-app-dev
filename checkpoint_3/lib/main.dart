import 'package:flutter/material.dart';

void main() {
  runApp(const CovidForm());
}

class CovidForm extends StatelessWidget {
  const CovidForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Form',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _conFirst = TextEditingController();
  final TextEditingController _conLast = TextEditingController();
  final TextEditingController _conNick = TextEditingController();
  final TextEditingController _conAge = TextEditingController();
  final TextEditingController _conAcc = TextEditingController();

  String? firstname;
  String? lastname;
  String? nickname;
  String? gender;
  int? age;
  int? account;

  String? selectedGender;

  bool _isOption1 = false;
  bool _isOption2 = false;
  bool _isOption3 = false;
  bool _isOption4 = false;
  bool _isOption5 = false;

  List<String> selectedOptions = [];

  void _onRadioButtonChange(String? value) {
    setState(() {
      selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key("form-page-tag"), // added key t
      appBar: AppBar(
        title: Text('กรอกประวัติคนไข้'),
        //leading: Image.network(
          //'https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.18169-9/10270775_1005005239557049_8657110612373811811_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeETO9pl3_xxi1s0PV8nC_7qzKRTTNUqhFjMpFNM1SqEWPQQkKYQKgfW5wYv5mSHBOqY07llLANIrH_k4IAzu7uI&_nc_ohc=ymd9LBsXxF8AX_TCzLi&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfCfzS2gsw0pAzYTrnOUFMt5nLXM8B-UoAO1Ha5zZ6EToA&oe=64131278',
          //fit: BoxFit.cover,
        //),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.network(
                'https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.18169-9/10270775_1005005239557049_8657110612373811811_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeETO9pl3_xxi1s0PV8nC_7qzKRTTNUqhFjMpFNM1SqEWPQQkKYQKgfW5wYv5mSHBOqY07llLANIrH_k4IAzu7uI&_nc_ohc=ymd9LBsXxF8AX_TCzLi&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfCfzS2gsw0pAzYTrnOUFMt5nLXM8B-UoAO1Ha5zZ6EToA&oe=64131278',
                fit: BoxFit.cover,
              )
            ),
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  key: Key("firstname-tag"),
                  decoration: InputDecoration(
                    labelText: 'ชื่อ',
                  ),
                  controller: _conFirst,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    String? message;
                    if (value == null || value.isEmpty) {
                      message = 'ต้องการข้อมูล';
                    }
                    return message;
                  },
                  onSaved: (value) => setState(() {
                    firstname = value;
                  }),
                ),
                TextFormField(
                  key: Key("lastname-tag"),
                  decoration: InputDecoration(
                    labelText: 'นามสกุล',
                  ),
                  controller: _conLast,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    String? message;
                    if (value == null || value.isEmpty) {
                      message = 'ต้องการข้อมูล';
                    }
                    return message;
                  },
                  onSaved: (value) => setState(() {
                    lastname = value;
                  }),
                ),
                TextFormField(
                  key: Key("nickname-tag"),
                  decoration: InputDecoration(
                    labelText: 'ชื่อเล่น',
                  ),
                  controller: _conNick,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    String? message;
                    if (value == null || value.isEmpty) {
                      message = 'ต้องการข้อมูล';
                    }
                    return message;
                  },
                  onSaved: (value) => setState(() {
                    nickname = value;
                  }),
                ),
                TextFormField(
                  key: Key("age-tag"),
                  decoration: InputDecoration(
                    labelText: 'อายุ',
                  ),
                  controller: _conAge,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    String? message;
                    if (value == null || value.isEmpty) {
                      message = 'ต้องการข้อมูล';
                    }
                    return message;
                  },
                  onSaved: (String? value) => setState(() {
                    age = int.parse(value!);
                  }),
                ),
                TextFormField(
                  key: Key("acc-tag"),
                  decoration: InputDecoration(labelText: 'เลขบัญชี'),
                  controller: _conAcc,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    String? message;
                    if (value == null || value.isEmpty) {
                      message = 'put your accout number fucker!';
                    }
                    return message;
                  },
                  onSaved: (String? value) => setState(() {
                    account = int.parse(value!);
                  }),
                ),
                Text('เพศ'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('ชาย'),
                      Radio(
                        key: Key('male-tag'),
                        value: 'ชาย',
                        groupValue: selectedGender,
                        onChanged: (String? value) =>
                            _onRadioButtonChange(value),
                      ),
                      Text('หญิง'),
                      Radio(
                        key: Key('female-tag'),
                        value: 'หญิง',
                        groupValue: selectedGender,
                        onChanged: (String? value) =>
                            _onRadioButtonChange(value),
                      ),
                      Text('ชายชาตรีใจเกเร'),
                      Radio(
                        key: Key('alphamale-tag'),
                        value: 'ชายชาตรีใจเกเร',
                        groupValue: selectedGender,
                        onChanged: (String? value) =>
                            _onRadioButtonChange(value),
                      ),
                      Text('หญิงโฉดแห่งลุ่มแม่น้ำโขง'),
                      Radio(
                        key: Key('alphafemale-tag'),
                        value: 'หญิงโฉดแห่งลุ่มแม่น้ำโขง',
                        groupValue: selectedGender,
                        onChanged: (String? value) =>
                            _onRadioButtonChange(value),
                      )
                    ],
                  ),
                ),
                
                Text('อาการ'),
                Column(
                  children: [
                    CheckboxListTile(
                      key: Key('syntom-one-tag'),
                      title: Text('ไอ'),
                      value: _isOption1,
                      onChanged: (bool? val) {
                        setState(() {
                          _isOption1 = !_isOption1;
                          if (_isOption1) {
                            selectedOptions.add('ไอ');
                          } else {
                            selectedOptions.remove('ไอ');
                          }
                        });
                      },
                    ),
                    CheckboxListTile(
                      key: Key('syntom-two-tag'),
                      title: Text('เจ็บคอ'),
                      value: _isOption2,
                      onChanged: (bool? val) {
                        setState(() {
                          _isOption2 = !_isOption2;
                          if (_isOption2) {
                            selectedOptions.add('เจ็บคอ');
                          } else {
                            selectedOptions.remove('เจ็บคอ');
                          }
                        });
                      },
                    ),
                    CheckboxListTile(
                      key: Key('syntom-three-tag'),
                      title: Text('ไข้'),
                      value: _isOption3,
                      onChanged: (bool? val) {
                        setState(() {
                          _isOption3 = !_isOption3;
                          if (_isOption3) {
                            selectedOptions.add('มีไข้');
                          } else {
                            selectedOptions.remove('มีไข้');
                          }
                        });
                      },
                    ),
                    CheckboxListTile(
                      key: Key('syntom-four-tag'),
                      title: Text('เสมหะ'),
                      value: _isOption4,
                      onChanged: (bool? val) {
                        setState(() {
                          _isOption4 = !_isOption4;
                          if (_isOption4) {
                            selectedOptions.add('เสมหะ');
                          } else {
                            selectedOptions.remove('เสมหะ');
                          }
                        });
                      },
                    ),
                    CheckboxListTile(
                      key: Key('syntom-five-tag'),
                      title: Text('ลิ้นไม่รับรส'),
                      value: _isOption5,
                      onChanged: (bool? val) {
                        setState(() {
                          _isOption5 = !_isOption5;
                          if (_isOption5) {
                            selectedOptions.add('ลิ้นไม่รับรส');
                          } else {
                            selectedOptions.remove('ลิ้นไม่รับรส');
                          }
                        });
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  key: Key('save-button-tag'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      gender = selectedGender;
                      selectedGender = null;
                      _conFirst.clear();
                      _conLast.clear();
                      _conNick.clear();
                      _conAge.clear();
                      _conAcc.clear();
                      _isOption1 = false;
                      _isOption2 = false;
                      _isOption3 = false;
                      _isOption4 = false;
                      _isOption5 = false;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ReportPage(
                            firstname: firstname,
                            lastname: lastname,
                            nickname: nickname,
                            age: age,
                            gender: gender,
                            account: account,
                            symtopms: selectedOptions,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('บันทึกข้อมูล'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReportPage extends StatelessWidget {
  final String? firstname;
  final String? lastname;
  final String? nickname;
  final String? gender;
  final int? age;
  final int? account;
  final List<String>? symtopms;

  ReportPage(
      {this.firstname,
      this.lastname,
      this.nickname,
      this.gender,
      this.symtopms,
      this.age,
      this.account});

  @override
  Widget build(BuildContext context) {
    print(symtopms);
    return Scaffold(
      key: Key("report-page-tag"),
      appBar: AppBar(
        title: Text('รายงาน'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/COVID-19.jpg',
              key: Key('covid-image-tag'),
              width: 300,
              height: 300,
            ),
            covidDetect(symtopms ?? []),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('confirm-button-tag'),
        onPressed: () => Navigator.pop(context),
        child: Text('yeet'),
      ),
    );
  }

  Widget covidDetect(List<String> symtopms) {
    return Container(
      width: 300,
      height: 300,
      child: Center(
        child: Column(
          children: [
            Text(
              'คุณ $firstname $lastname ($nickname) \n เพศ $gender',
              key: Key('report-fullname-tag'),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: symtopms.length >= 3 ? Colors.red : Colors.green),
            ),
            Text(
              'อายุ $age',
              key: Key('report-age-tag'),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: symtopms.length >= 3 ? Colors.red : Colors.green),
            ),
            Text(
              'เลขบัญชี $account',
              key: Key('report-acc-tag'),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: symtopms.length >= 3 ? Colors.red : Colors.green),
            ),
            Text(
              symtopms.length >= 3 ? 'คุณเป็นโควิท' : 'คุณไม่เป็นโควิท',
              key: Key('covid-confirm-tag'),
              style: TextStyle(
                  fontSize: 25,
                  color: symtopms.length >= 3 ? Colors.red : Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
