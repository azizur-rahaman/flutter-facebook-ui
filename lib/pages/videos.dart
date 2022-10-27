import 'package:facebook/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: ListTile(
                leading: const Text(
                  'Videos',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Tooltip(
                  message: 'Play video Automatically',
                  child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          debugPrint(isSwitched.toString());
                        });
                      }),
                ))),
        const Divider(thickness: 1, color: Colors.black26),
        Expanded(
            child: ListView.builder(
                itemCount: videoData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              child: Image.network(videoData[i].avatarImage),
                            ),
                            title: Column(
                              children: [
                                Row(children: [
                                  Text(
                                    videoData[i].name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextButton(
                                      onPressed: () =>
                                          videoData[i].avatarOnPressed,
                                      child: const Text('Follow',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueAccent))),
                                ]),
                                Row(
                                  children: [
                                    Text(videoData[i].time),
                                    IconButton(
                                        onPressed: () =>
                                            debugPrint('Privacy Clicked'),
                                        icon: const Icon(Icons.public_rounded))
                                  ],
                                )
                              ],
                            ),
                            trailing: IconButton(
                              onPressed: () => videoData[i].moreOnPressed,
                              icon: Icon(Icons.more_vert_outlined),
                            )),

                        //Video
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              YoutubePlayerControllerProvider(
                                controller: YoutubePlayerController(
                                  params: const YoutubePlayerParams(
                                    autoPlay: false,
                                    mute: false,
                                    showControls: true,
                                    showFullscreenButton: false,
                                  ),
                                ),
                                child: const YoutubePlayer(
                                  aspectRatio: 16 / 9,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
      ],
    );
  }
}
