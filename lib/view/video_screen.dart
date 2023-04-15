import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = true;
  // double _volume = 1.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  // void _onVolumeChanged(double value) {
  //   setState(() {
  //     _volume = value;
  //     _controller.setVolume(value);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return  Stack(
        alignment: Alignment.bottomCenter,
        children: [
          VideoPlayer(_controller),
          VideoProgressIndicator(
            _controller,
            allowScrubbing: true,
            colors: const VideoProgressColors(
              playedColor: Colors.white,
              bufferedColor: Colors.grey,
              backgroundColor: Colors.black,
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(
                _isPlaying ? Icons.pause_circle : Icons.play_circle,
                size: 50.0,
                color: Colors.white,
              ),
              onPressed: _togglePlayPause,
            ),
          ),
        ],
      );
  }
}

class VideoView extends StatelessWidget {
  @override
  final List<String> videoUrls = [
    // 'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4',
    // 'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_30mb.mp4',
    // 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',

    'assets/1.mp4',
    'assets/2.mp4',
    'assets/3.mp4',
    'assets/4.mp4',
    'assets/5.mp4',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              Container(
                width: 250,
                height: 40,
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: const Color(0xff7a7373),
                      filled: true,
                      contentPadding: const EdgeInsets.all(10),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
      body: Container(
        child: SafeArea(
          child: Stack(
            children: [
              Swiper(
                loop: false,
                scrollDirection: Axis.vertical,
                itemCount: videoUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [

                    Container(
                        height: MediaQuery.of(context).size.height*1,
                        child: VideoPlayerWidget(videoUrl: videoUrls[index])),
                    Container(
                      color: Colors.white.withOpacity(0.2),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                'https://www.unigreet.com/wp-content/uploads/2023/03/Cute-Cat-Whatsapp-Dp-HD.jpg'),
                          ),
                          Text(
                            'Adbul Shakoor',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        color: Colors.white.withOpacity(0.2),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Padding(
                          padding: const EdgeInsets.
                          symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 65,
                                decoration: BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '22k',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Text(
                                'Emotional Poem ever',
                                style: TextStyle(
                                    color: Color(0xffFFC38C),
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 30,
                                width: 65,
                                decoration: BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                  child: Text(
                                    '1M',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]);
                },
                // pagination: SwiperPagination(),
                // control: SwiperControl(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
