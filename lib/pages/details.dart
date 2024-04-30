import 'package:flutter/material.dart';
import 'package:photo_gallery/main.dart';


class DetailsPage extends StatelessWidget {

  final String imageTitle;
  DetailsPage({super.key, required this.imageTitle});

  List<Map<String, String>> imageList =[
    {
      'title': 'mood',
      'link': 'https://s3-alpha-sig.figma.com/img/8ae8/8351/d9d8ec2de6a2ad384cd6cc3e473842ef?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DxGHz28D28-OtALbzofWYltYbn0ZPy5VLsvu2P3Vh9whGPiyvij3Z26FlkyZWNUkFdPyWRfUSbsGMnE8tvzX0MbOsaKNprf8WXwsXD6YJrjeW~ZIYnFifuLpZ-MnntvJiwT0FTg~jtxwkcPc39sVn12HWw510JkEqnM0oTa5Bncz~B0GKOlDANu1VpU7a8s4IIQf~G~GVTtqo~iBI5Mc5U16WFRiBbYdoAayE0xmoGHkuzDszzXdNuGvNQDbHHUwMZnZspIALHRbOnPZbht-15Is~TAphgHOUVxdbY7l0DUfzk84PUqg01qGcteabNPKU6jWEvJk4pe~wMgrIcqODA__',
    }
    ];

  List<String> suggestionList =[
    'https://s3-alpha-sig.figma.com/img/f4a3/12b8/7bd99804e59439f7e0f27e9f6cf7ebd3?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V-I1c3rojJO7B9tD9r8KJTBO5etbaa7jLh~Lr-YfSIOr~voYabDXsUnZ8UjkUFrZ3ohJ5fO6hG4JCsHwHjA9dPaZbNdynock0q81XjOw2b2YUlyGAYjtmlgPq5kpVnqmFCc~zMYKc-TmXO~WuoxFN3gHx-pNFRUC-uFIypk2yp0c9oJ9RiKZPzjKq6OhXpnYyD9bx3UEBX-jv3ZWx0WD~0HShvynuCCyxWbLe2QSKtxHUSDSoWVhPB7k1RXaMe-VW8HCbFhMZRAJER6dbT3wnyubR6ImhnUlUR4gvCNGMnLWDkJAKLkV8t7qXZSSqPVJChzwoMpHaRleYI9GlTEtOg__',
    'https://s3-alpha-sig.figma.com/img/d3d4/fda7/97dabb9135a808713597e0ce5441ce5f?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FmD2WJMpPr3gqranijI9bwPumYyWD-eCVcAnygGJ5MrpIoR3c46ARWaZWL3wKejDRLjbujeCevgp2QotuHGJkamvDqOTwi6rAmeRJRMKE~yXrBRrSrp7j9aHKXJNN8t9c5HF2CEdD-YJYJuyQzAsgFMwCeYaXfTZj5wuYl2e3F8riHfktEpTzwaAfF6gbPRtfCz7mHSJOixMl6f~vgud00-fw3UDIaYwh~5y8tgDzqjwkskytrW9bfKl5yF1RIB7bpNwOkJ28B5dLBrLTv-klx9X6O05Ex4NRvE8f~vEPngfDg0J0eaBdZMUNCQg9--BlVO8N~4M9fnbicPJG3YtBw__'
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text('Mood', style: TextStyle(color: Colors.white),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            //replace with our own icon data.
          ),
          // leading: const Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ), //IconButton
          ], // Action
        ), //AppBar
        body: OrientationBuilder(
          builder: (context, orientation) {
            if(orientation == Orientation.landscape){
                    // landscape component
            }else{
                  // portrait component
            }
            return Container(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: suggestionList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index){
                      return  Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                  image: NetworkImage(suggestionList[index],), fit: BoxFit.cover
                              )
                          ),
                        );
                    }),
              ),
            );
          }
        ),
    ); // Scaffold
  }
}


