import 'package:flutter/material.dart';
import 'package:prototype1/screens/home/test.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({Key? key}) : super(key: key);

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;
  int _currentIndex = 0;

  void _playVideo({int index = 0, bool init = false}) {
    if(index < 0 || index >= videos.length)
      return;

    if(!init){
      _controller.pause();
    }

    setState(() => _currentIndex = index);
    
    _controller = VideoPlayerController.network(videos[_currentIndex].url)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => _controller.play());
  }

  String _videoDuration(Duration duration){
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if(duration.inHours > 0) hours, minutes, seconds,
    ].join(':');
  }

  @override
  void initState(){
    super.initState();
    _playVideo(init: true);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(''),
      ),
      body: Column(
        children: [
          Container(
            color: primaryColor,
            height: 280,
            child: _controller.value.isInitialized ?
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: VideoPlayer(_controller),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ValueListenableBuilder(
                            valueListenable: _controller,
                            builder: (context, VideoPlayerValue value, child){
                              return Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  _videoDuration(value.position),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                  ),
                                ),
                              );
                            }
                        ),
                        Expanded(
                            child: SizedBox(
                            height: 20,
                              child: VideoProgressIndicator(
                                _controller,
                                allowScrubbing: true,
                                padding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 12
                                ),
                              ),
                        )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            _videoDuration(_controller.value.duration),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            ),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () => _controller.value.isPlaying ? _controller.pause() : _controller.play(),
                        icon: Icon(
                          _controller.value.isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 40,
                        ))
                  ],
                ) : Center(
                  child: CircularProgressIndicator(color: Colors.white,),
            )
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: () => _playVideo(index: index),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding:EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  videos[index].thumbnail,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 200,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            videos[index].name,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 25,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 200,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            videos[index].author,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 15,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
