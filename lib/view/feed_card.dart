import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url = 
    'https://upload.wikimedia.org/wikipedia/commons/1/15/Rizky_Nazar%2C_Gogirl%21_TV%2C_01.18.jpg' ;
    return Card(
      child:  Column(
        children: [
          //header
          ListTile(
            leading: CircleAvatar(
              backgroundImage:NetworkImage(url),
              ),
            title: Text('riskita'),
            subtitle: Text('status'),
            trailing: Icon(Icons.arrow_right),
          ),
          //content
          Image.network('https://asset.kompas.com/crops/ZYDocov_TWk9EG-FEhCw3q2e6hQ=/100x32:900x566/1200x800/data/photo/2020/02/25/5e54df09c9ae8.jpg',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
          ),
          //footer
          Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  // aksi untuk like
                },
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  // aksi untuk comment
                },
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // aksi untuk share
                },
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {
              // aksi untuk bookmark
            },
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          '1,234 likes', // Ganti dengan jumlah like yang sebenarnya
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Text(
        'paus orca dilaut ini sangatlah cantik',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.black87),
      ),
    ],
  ),
),


        ],
      ),
    );
  }
}