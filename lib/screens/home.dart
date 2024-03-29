import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:agenclean_project/screens/login_screen.dart';
import 'package:agenclean_project/pages/home_page.dart';
import 'package:agenclean_project/screens/profile_screen.dart';
import 'package:agenclean_project/constants.dart';
import 'package:agenclean_project/screens/settings_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _GoogleBottomBarState();
}

class _GoogleBottomBarState extends State<Home> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Aqui ficará o painel que aparece após clicar nos botões de Pesquisar, Chat e etc. Isso é apenas uma versão inicial
  final List<Widget> _pageWidgets = [
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1049317672/pt/foto/indian-girl-with-phone.jpg?s=2048x2048&w=is&k=20&c=rq-cjjqr6aOUAmCOepQ32hlPoPiH9xORR7_XSpFWb0M='),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome do Usuário',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(
                          '4.5/5.0',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 200),
                child: const Text(
                  'Profissionais próximos disponíveis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Linha divisoria
            Divider(
              color: corBranca,
              thickness: 2.0,
              indent: 0, // Espaçamento à esquerda do Divider
              endIndent: 0, // Espaçamento à direita do Divider
            ),
            const SizedBox(height: 5),
            // Área de Recomendação
            Container(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                // Adiciona o SingleChildScrollView aqui
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Marcos Augusto',
                      rating: '4.5/5.0',
                      ratingDescription:
                          'Sou diarista profissional, especializado em limpeza e organização. Também possuo habilidades culinárias.',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Ana Silva',
                      rating: '5.0/5.0',
                      ratingDescription:
                          'Diarista experiente e dedicada. Cuido da sua casa como se fosse minha. Habilidades culinárias inclusas!',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Júlia Santos',
                      rating: '4.8/5.0',
                      ratingDescription:
                          'Ótima diarista, realiza um trabalho impecável. Estou disponível para cuidar da sua casa com todo o carinho.',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Carlos Oliveira',
                      rating: '4.2/5.0',
                      ratingDescription:
                          'Cuidadora dedicada e atenciosa. Recomendo seus serviços para quem busca um profissional de confiança.',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Ester Lima',
                      rating: '4.7/5.0',
                      ratingDescription:
                          'Ótima profissional, atenciosa e realiza um trabalho de alta qualidade. Estou disponível para diárias e cuidados especiais.',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Gabriela Souza',
                      rating: '4.9/5.0',
                      ratingDescription:
                          'Excelente serviço, pontualidade impecável e muita dedicação. Estou pronta para atender suas necessidades de limpeza e organização.',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Lucas Pereira',
                      rating: '4.4/5.0',
                      ratingDescription:
                          'Profissional competente, sempre cumprindo suas tarefas de maneira eficiente. Estou à disposição para oferecer meus serviços.',
                      // profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                    const SizedBox(height: 10),
                    _buildRecommendationBox(
                      name: 'Fernanda Oliveira',
                      rating: '4.6/5.0',
                      ratingDescription:
                          'Dedicada e responsável, realiza seu trabalho com muito cuidado. Ofereço serviços de limpeza e organização.',
                      //  profileImage: 'https://www.promoview.com.br/uploads/2017/04/b72a1cfe.png',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),

    // Conteúdo para o item "Pesquisar"
    Center(
      child: Text("Pesquisar test"),
    ),
    // Conteúdo para o item "Adicionar"
    Center(
      child: Text("Adicionar test"),
    ),
    // Conteúdo para o item "Chat"
    const Center(
      child: HomePage(),
    ),
    // Conteúdo para o item "Perfil"
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF22272B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF22272B),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
          ),
        ],
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
          child: Row(
            children: [
              Flexible(
                child: Image.network(
                  'https://i.ibb.co/VmXK0gC/home-logo.png',
                  width: 120,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: _drawer(), // Abre o menu na lateral direita
      body: _pageWidgets[
          _selectedIndex], // Mostra o conteúdo correspondente ao item selecionado

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff6200ee),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
        backgroundColor: Colors.orange[900],
        itemPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      ),
    );
  }

  //Widget onde mostra o menu de opções na direita da tela home e o que ele faz após clicar
  Widget _drawer() => Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              children: _menuItems.map((item) {
                IconData iconData = Icons.person;
                if (item == 'Favoritos') {
                  iconData = Icons.favorite;
                  return ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      // Lógica para lidar com a ação do item "Favoritos"
                      print('test Favoritos');
                    },
                    leading: Icon(iconData),
                    title: Text(item),
                  );
                } else if (item == 'Trocar conta') {
                  iconData = Icons.switch_account;
                  return ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      // Lógica para lidar com a ação do item "Favoritos"
                      print('test Favoritos');
                    },
                    leading: Icon(iconData),
                    title: Text(item),
                  );
                } else if (item == 'Perfil') {
                  iconData = Icons.switch_account;
                  return ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      // Lógica para lidar com a ação do item "Perfil"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    leading: Icon(iconData),
                    title: Text(item),
                  );
                } else if (item == 'Configurações') {
                  iconData = Icons.settings;
                  return ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      // Lógica para lidar com a ação do item "Configurações"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaginaConfiguracoes()),
                      );
                    },
                    leading: Icon(iconData),
                    title: Text(item),
                  );
                } else if (item == 'Sair') {
                  iconData = Icons.exit_to_app;
                  return ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      // Navegar para a tela de login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    leading: Icon(iconData),
                    title: Text(item),
                  );
                }

                return ListTile(
                  onTap: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  leading: Icon(iconData),
                  title: Text(item),
                );
              }).toList(),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                // Lógica para lidar com a ação do item "Suporte e Termos de Uso"
                print('test Suporte e Termos de Uso');
              },
              leading: const Icon(Icons.help),
              title: const Text("Suporte e Termos de Uso"),
            ),
            ListTile(
              onTap: () {
                // Lógica para lidar com a ação do item "Sobre Nós"
                print('test Sobre Nós');
              },
              leading: const Icon(Icons.info),
              title: const Text("Sobre Nós"),
            ),
          ],
        ),
      );

  final _navBarItems = [
    SalomonBottomBarItem(
      icon: const Icon(Icons.home),
      title: const Text("Inicio"),
      selectedColor: Colors.blue[50],
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.search),
      title: const Text("Pesquisar"),
      selectedColor: Colors.blue[50],
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.add_circle_outlined),
      title: const Text("Adicionar"),
      selectedColor: Colors.blue[50],
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.chat),
      title: const Text("Chat"),
      selectedColor: Colors.blue[50],
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.person),
      title: const Text("Perfil"),
      selectedColor: Colors.blue[50],
    ),
  ];

  final List<String> _menuItems = <String>[
    'Perfil',
    'Favoritos',
    'Trocar conta',
    'Configurações',
    'Sair',
  ];
}

Widget _buildRecommendationBox({
  required String name,
  required String rating,
  required String ratingDescription,
  // required String profileImage,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[800],
      borderRadius: BorderRadius.circular(8),
    ),
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              // backgroundImage: AssetImage(profileImage),
            ),
            const SizedBox(width: 10),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Nota: $rating',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          ratingDescription,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
