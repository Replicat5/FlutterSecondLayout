import 'package:flutter/material.dart';
import 'package:second/resources/app_text_styles.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final PanelController _pc = PanelController();

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      maxHeight: 150,
      minHeight: 0,
      backdropEnabled: true,
      controller: _pc,
      panel: const PanelWidget(),
      body: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.black,
            ),
          ],
          title: TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            label: const Text(
              'Данные аккаунта',
              style: AppTextStyles.blackText20,
            ),
          ),
          elevation: 10,
          backgroundColor: Colors.white,
        ),
        body: const AccountWidget(),
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
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Выберите действие',
              style: AppTextStyles.blackText18,
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.photo_camera,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text('Сделать снимок', style: AppTextStyles.blackText18),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.folder,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text('Выбрать фото', style: AppTextStyles.blackText18),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          child: AvatarWidget(),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app, color: Colors.red),
              iconSize: 27,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Удалить аккаунт',
                    style: AppTextStyles.blackText18,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 330,
                    child: Text(
                      'Функция удаления акканута произведет чистку всех ваших данных и вы не сможете их восстановить обратно',
                      style: AppTextStyles.black54Text12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: _pc.open,
              child: CircleAvatar(
                backgroundImage: Image.asset('assets/gg.jpg').image,
                radius: 32,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Аватар',
                  style: AppTextStyles.blackText18,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Нажмите на картинку, чтобы сменить',
                  style: AppTextStyles.greyText15,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class InformationAboutAccountWidget extends StatelessWidget {
  final String information;
  final String data;

  const InformationAboutAccountWidget({
    required this.information,
    Key? key,
    this.data = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          information,
          style: AppTextStyles.blackText18,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data,
          style: AppTextStyles.black54Text18,
        ),
      ],
    );
  }
}
