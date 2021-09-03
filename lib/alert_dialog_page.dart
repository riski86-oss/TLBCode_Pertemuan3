import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>showDialog(
            context: context,
            builder: (BuildContext context)=>AlertDialog(
              title: const Text("Hapus?"),
              content: const Text("anda yakin ingin menghapus?"),
              actions: [
                TextButton(
                  onPressed: ()=>Navigator.pop(context),
                  child: const Text("Tidak"),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                    final snackBar = SnackBar(
                      content: const Text("Data berhasil dihapus!"),
                      action: SnackBarAction(
                        label: 'Tutup',
                        onPressed:(){}
                      )
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Iya"),
                )
              ],
            )
          ),
          child: const Text("Hapus"),
        )
      ),
    );
  }
}