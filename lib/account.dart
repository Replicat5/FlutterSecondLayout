import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final PanelController _pc = PanelController();

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      maxHeight: 150,
      minHeight: 0,
      backdropEnabled: true,
      controller: _pc,
      panel: PanelWidget(),
      body: Scaffold(
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
      ),
    );
  }
}

class PanelWidget extends StatelessWidget {
  const PanelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Выберите действие',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.photo_camera,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text('Сделать снимок', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.folder,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text('Выбрать фото', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
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
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
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
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.exit_to_app, color: Colors.red),
                iconSize: 27,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
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
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => _pc.open(),
                child: CircleAvatar(
                  backgroundImage: Image.asset('assets/GG.jpg').image,
                  radius: 32,
                ),
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
          ),
        ],
      ),
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
