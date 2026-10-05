
import 'package:components/widget/card_image_widget.dart';
import 'package:components/widget/widget.dart';

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card")),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CardWidget(),
          CardImageScreen(urlImage:  "https://imgs.search.brave.com/fnTSn6lc9oJozQV7ePf7_dOVr-nqGwL8LXNOjLYJf3Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tcGhv/dG8vdWx0cmEtaGQt/NGstZGVza3RvcC13/YWxscGFwZXJfNjM2/NTM3LTMzNTY4NS5q/cGc_Z2E9R0ExLjEu/MTE0NTQ3MTEyLjE3/ODU5ODMwNjImc2Vt/dD1haXNfdGVzdF9i/Jnc9NzQwJnE9ODA",
          name: "Ad deserunt nisi excepteur exercitation."
          ),
          SizedBox(height: 20,),
          CardImageScreen(name: "Laborum ipsum ad occaecat ea deserunt.",urlImage: "https://imgs.search.brave.com/TtpM564yzcCSOdJ2S5rJkP6raBPmLMzoMDJJVZEyI88/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tcGhv/dG8vbmVvbi1saWdo/dC10cmVlLWFydC1i/bGFjay1iYWNrZ3Jv/dW5kLWFic3RyYWN0/LWltYWdlLXRleHR1/cmUtcGF0dGVybi1i/YWNrZ3JvdW5kLXdh/bGxwYXBlci1zbWFy/dF84Njc2NzEtNTA0/NTcuanBnP3NlbXQ9/YWlzX3Rlc3RfYiZ3/PTc0MCZxPTgw"),
         SizedBox(height: 20,),
          CardImageScreen(urlImage: "https://imgs.search.brave.com/SZuJflsPpnbjvuBT6qRM0elo9i4zq9mposb8vykC3ec/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tcGhv/dG8vbW91bnRhaW4t/bGluZS1hcnQtYmFj/a2dyb3VuZC1sdXh1/cnktZ3JlZW4td2Fs/bHBhcGVyLWRlc2ln/bi1jb3Zlci1pbnZp/dGF0aW9uLWJhY2tn/cm91bmQtcGFja2Fn/aW5nLWRlc2lnbi13/YWxsLWFydC1wcmlu/dC12ZWN0b3ItaWxs/dXN0cmF0aW9uLWFy/LTMyLWpvYi1pZC1l/ZmFiNDkxYjZhODU0/MTQ4YWI3ZTVkN2I0/MjhmMGI2Yl85NDE2/MDAtMTM0OTM1Lmpw/Zz9zZW10PWFpc190/ZXN0X2Imdz03NDAm/cT04MA"),
         SizedBox(height: 20,),
          CardImageScreen(name: "Consectetur pariatur exercitation elit anim.", urlImage: "https://imgs.search.brave.com/hW_BQ999Nf_H8fZ6ojQFi8Igc8-o8bB4svZTng-QtP8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/eHRyYWZvbmRvcy5j/b20vdGh1bWJzLzFf/MTI3NzcuanBn"),
          
          
        ],
      ),
    );
  }
}


