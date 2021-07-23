import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.black,
          )
        ],
        title: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            label: Text(
              'Данные аккаунта',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
        elevation: 10,
        backgroundColor: Colors.white,
      ),
      body: AccountWidget(),
    );
  }
}

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
            child: AvatarWidget(),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationAboutAccountWidget(
                    information: 'Имя',
                    data: 'Данил',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InformationAboutAccountWidget(
                    information: 'Фамилия',
                    data: 'Горцуев',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InformationAboutAccountWidget(
                    information: 'E-mail',
                    data: 'gortsuev.danil@mail.ru',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InformationAboutAccountWidget(information: 'Пароль'),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              IconButton(onPressed: (){}, icon: Icon(Icons.delete),iconSize: 27,),
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Удалить аккаунт',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  
                  Container(
                    width: 330,
                    child: Expanded(
                      child: Text(
                        'Функция удаления акканута произведет чистку всех ваших данных и вы не сможете их восстановить обратно',
                        style: TextStyle(fontSize: 12, color: Colors.black54,),
                      ),
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: Image.asset('assets/GG.jpg').image,
          radius: 32,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Аватар',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Нажмите на картинку, чтобы сменить',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}

class InformationAboutAccountWidget extends StatelessWidget {
  final String information;
  final String data;
  const InformationAboutAccountWidget({
    Key? key,
    required this.information,
    this.data = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          information,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          data,
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ],
    );
  }
}
