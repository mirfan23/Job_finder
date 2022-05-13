// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:job_finder/app/modules/description/controllers/description_controller.dart';
import 'package:job_finder/app/modules/description/views/information_view.dart';
import 'package:job_finder/app/values/colors.dart';

class DetailView extends GetView<DescriptionController> {
  LatLng location = LatLng(-6.2277594, 106.8060065);

  Set<Marker> markers = {
    Marker(
      markerId: MarkerId("Marker 1"),
      position: LatLng(-6.2277594, 106.8060065),
      infoWindow: InfoWindow(title: "Google"),
    )
  };
  // static final CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(-6.2277594, 106.8060065),
  //   zoom: 14.4746,
  // );

  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(-6.2277594, 106.8060065),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Salary",
                  style: TextStyle(
                      color: MyColors.primaryColor,
                      fontSize: 14,
                      fontFamily: "DMSansRegular"),
                ),
                Text(
                  "Job Type",
                  style: TextStyle(
                      color: MyColors.primaryColor,
                      fontSize: 14,
                      fontFamily: "DMSansRegular"),
                ),
                Text(
                  "Position",
                  style: TextStyle(
                      color: MyColors.primaryColor,
                      fontSize: 14,
                      fontFamily: "DMSansRegular"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Text(
                "Job Description",
                style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "DMSansBold"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 14,
              ),
              child: Obx(() {
                return controller.isReadMore.isTrue
                    ? Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                        style: TextStyle(
                            fontSize: 12, fontFamily: "DMSansRegular"),
                      )
                    : Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                        style: TextStyle(
                            fontSize: 12, fontFamily: "DMSansRegular"),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      );
              }),
            ),
            Obx(() {
              return ElevatedButton(
                onPressed: () {
                  controller.isReadMore.toggle();
                },
                child: Text(
                  controller.isReadMore.isTrue ? "Hide" : "Read More",
                  style: TextStyle(color: MyColors.primaryColor),
                ),
                style: ElevatedButton.styleFrom(primary: MyColors.whiteGrey),
              );
            }),
            const SizedBox(height: 25),
            Text(
              "Requirements",
              style: TextStyle(
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "DMSansBold"),
            ),
            _requirementsList(
                "Sed ut perspiciatis unde omnis iste natus error sit."),
            _requirementsList(
                "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit."),
            _requirementsList(
                "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit."),
            _requirementsList(
                "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur"),
            const SizedBox(height: 25),
            Text(
              "Location",
              style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansBold",
                  fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Overlook Avenue, Belleville, NJ, USA",
                style: TextStyle(
                    color: MyColors.primaryColor,
                    fontFamily: "DMSansRegular",
                    fontSize: 12),
              ),
            ),
            Container(
                height: Get.height * 0.15,
                width: double.infinity,
                child: GoogleMap(
                  onMapCreated: ((controller) =>
                      this.controller.mapC.complete(controller)),
                  initialCameraPosition: CameraPosition(
                    target: location,
                    zoom: 16,
                  ),
                  zoomControlsEnabled: false,
                  markers: markers,
                )),
            const SizedBox(height: 25),
            Text(
              "Informations",
              style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansBold",
                  fontSize: 14),
            ),
            const SizedBox(height: 16),
            InformationView("Position", "Senion Designer", 12, 12),
            const SizedBox(height: 15),
            Divider(),
            const SizedBox(height: 15),
            InformationView("Qualification", "Banchelor's Degree", 12, 12),
            const SizedBox(height: 15),
            Divider(),
            const SizedBox(height: 15),
            InformationView("Experience", "3 Years", 12, 12),
            const SizedBox(height: 15),
            Divider(),
            const SizedBox(height: 15),
            InformationView("Job-Type", "Full-Time", 12, 12),
            const SizedBox(height: 15),
            Divider(),
            const SizedBox(height: 15),
            InformationView("Specalization", "Design", 12, 12),
            const SizedBox(height: 15),
            Divider(),
            const SizedBox(height: 30),
            Text(
              "Facilites and Others",
              style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansBold",
                  fontSize: 14),
            ),
            const SizedBox(height: 15),
            _requirementsList("Medical"),
            const SizedBox(height: 15),
            _requirementsList("Dental"),
            const SizedBox(height: 15),
            _requirementsList("Technical Cartification"),
            const SizedBox(height: 15),
            _requirementsList("Meal Allowance"),
            const SizedBox(height: 15),
            _requirementsList("Transport Allowance"),
            const SizedBox(height: 15),
            _requirementsList("Regular Hours"),
            const SizedBox(height: 15),
            _requirementsList("Mondays-Fridays"),
            const SizedBox(height: 15),
          ],
        ),
      ),
    ));
  }

  Row _requirementsList(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("•"),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
                color: MyColors.primaryColor,
                fontSize: 12,
                fontFamily: "DMSansRegular"),
          ),
        ),
      ],
    );
  }
}
