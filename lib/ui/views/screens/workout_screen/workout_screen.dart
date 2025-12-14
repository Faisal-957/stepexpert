import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepexpert/core/constant/colors.dart';
import 'package:stepexpert/core/constant/text_style.dart';
import 'package:stepexpert/ui/views/screens/workout_screen/details_vedio_page.dart';
import 'package:stepexpert/ui/views/screens/workout_screen/workout_viewmodel.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutViewModel(),
      child: Consumer<WorkoutViewModel>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              body: ListView.builder(
                itemCount: videoList.length,
                itemBuilder: (context, index) {
                  final video = videoList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailVideoPage(videoUrl: video.videoUrl),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadowColor: greyColor,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 20,
                            bottom: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.asset(video.thumbnail),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined),
                                  Text(
                                    "   ${video.duration}  |  ${video.category}",
                                    style: style12.copyWith(color: greyColor),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              Text(
                                video.title,
                                style: style16.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(video.description, style: style16),
                              SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
