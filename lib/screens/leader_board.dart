import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_assignment3/screens/game.dart';

class LeaderBoard extends StatefulWidget {
  List<String> Records;

  LeaderBoard(this.Records);
  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  void checked(){
    print(widget.Records);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'Images/arrow.png',
                        height: 19,
                        width: 10,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'L E A D E R',
                          style: TextStyle(
                              color: Color(0xff0D47A1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'B O A R D',
                          style: TextStyle(
                              color: Color(0xff0D47A1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 47,
            ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.Records.length,
                itemBuilder: (ctx, idx) => WinnerRecords(ctx, idx)),
          )
        ],
        ),);
  }

  WinnerRecords(ctx,idx){
    var image='';
    if(widget.Records[idx]=="Player 1"){
      image="Images/zero.png";
    }
    else if(widget.Records[idx]=="Player 2"){
      image="Images/cross.png";

    }
    else {
      image = "Images/trophy.png";
    }

      return Container(
        margin: const EdgeInsets.only(left: 25, right: 24, top: 9),
        padding: const EdgeInsets.only(left: 25),
        height: 98,
        decoration: BoxDecoration(
            color: const Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [

            Image.asset(
              image,
              height: 52,
              width: 52,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  widget.Records[idx],
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: Image.asset(
                'images/trophy.png',
                height: 52,
                width: 52,
              ),
            )
          ],
        ),
      );


  }

}
