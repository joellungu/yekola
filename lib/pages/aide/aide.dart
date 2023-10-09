import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Aide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
        title: const Text('Aide'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Text(
              """Tempor qui eiusmod eiusmod incididunt. Laboris adipisicing in esse incididunt laboris minim mollit ex veniam proident ad adipisicing. Deserunt officia nostrud nostrud eiusmod sunt Lorem ipsum minim ad ex non aliqua esse minim. Velit consequat ad eu cupidatat velit ullamco. Do eu enim laborum minim officia magna esse minim. Dolor elit proident veniam minim magna culpa aliqua ad.

Eiusmod do id anim nulla occaecat Lorem voluptate esse. Duis ut anim dolor ut ut ullamco aliqua labore minim dolore sit adipisicing nulla. Dolor reprehenderit culpa eu amet pariatur nulla commodo reprehenderit do voluptate dolor quis. Dolore minim nulla sint id labore. Adipisicing nisi in laborum aute. Excepteur aliqua pariatur eiusmod consequat veniam aliqua ad consectetur exercitation.

In dolor do id quis ad consequat laborum laborum in dolor mollit nisi voluptate aliqua. Enim do voluptate occaecat ea officia commodo amet sit aute nostrud. Reprehenderit cupidatat Lorem ad id irure pariatur tempor ut anim incididunt.

Proident ut dolore culpa anim aute dolore. Voluptate anim in magna et. In officia deserunt ad mollit aliqua officia adipisicing minim consectetur sint. Do ullamco dolore magna laboris occaecat duis proident ad proident ipsum culpa.

Eiusmod dolor irure sit elit. Adipisicing reprehenderit ea velit enim dolore cupidatat dolor fugiat laboris tempor adipisicing. Lorem non sint esse eu consectetur ea sint. Quis sint nulla pariatur reprehenderit et incididunt duis duis veniam eu. Exercitation anim velit adipisicing laboris velit magna sint reprehenderit esse ullamco. Ad consectetur magna non consectetur qui enim ad eu adipisicing sunt proident sint eu consequat.

Culpa elit sit pariatur anim nostrud consequat minim reprehenderit incididunt ad et Lorem excepteur. Sunt culpa fugiat magna est ipsum excepteur ipsum. Est officia proident magna est excepteur adipisicing laboris non elit aute proident aliqua. Mollit Lorem dolor in sint ullamco veniam id sit occaecat labore laboris commodo qui sit. Sint dolore Lorem exercitation Lorem velit irure magna mollit irure velit occaecat duis sunt. Magna ullamco elit duis sint reprehenderit adipisicing cillum.

Irure do sint aliqua occaecat qui exercitation amet laboris eiusmod velit. Ad proident ea qui nulla. Ea proident incididunt reprehenderit ex ullamco irure sunt pariatur voluptate. Eiusmod quis elit dolor ad aliqua magna incididunt qui pariatur nostrud enim mollit. Ex deserunt esse tempor nostrud anim fugiat sit dolore esse commodo ea sunt eiusmod.""")
        ],
      ),
    );
  }
}
