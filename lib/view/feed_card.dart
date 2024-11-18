import 'package:flutter/material.dart';
import 'package:test4/model/feed.dart';

class FeedCard extends StatefulWidget {
  final Feed feed;

  const FeedCard({
    Key? key,
    required this.feed,
  }) : super(key: key);

  @override
  State<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          // Header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.feed.user.avatar),
            ),
            title: Text(widget.feed.user.name),
            subtitle: Text(widget.feed.user.place),
            trailing: Icon(Icons.more_vert),
          ),
          // Content Image
          Image.network(
            widget.feed.content.image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.cover,
          ),
          // Footer
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
                    '${widget.feed.content.likes} likes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  widget.feed.content.description,
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
