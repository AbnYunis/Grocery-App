

import '../../../../../core/utils/mange_routers/imports.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  Step2State createState() => Step2State();
}

class Step2State extends State<Step2> {
  double uploadProgress = 0.87;
  double totalSizeMb = 24;
  double uploadedSizeMb = 20;
  File? image;
  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w(context)),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: DottedBorder(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      chooseImage(context, image).then((value) {
                        setState(() {
                          images.add(value);

                        });
                      },);
                    },
                    child: SizedBox(
                      width: 120.w(context),
                      child: Column(
                        children: [
                          Container(
                            width: 120.w(context),
                            height: 120.h(context),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.upload_file, color: Colors.blue),
                                Text('Upload a photo',textAlign: TextAlign.center,
                                    style:TextStyles.style14_700(context, CustomColor.black)),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.w(context)),
                          Text('Max size - 25Mb. Jpg, Png, Gif'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.w(context)),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Wrap(
                      spacing: 8.w(context),
                      runSpacing: 8.w(context),
                      children: images.map((image) {
                        return Stack(
                          children: [
                            Image.file(image, width: 100.w(context), height: 100.w(context)),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  setState(() {
                                    images.remove(image);
                                  });
                                },
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  // SizedBox(height: 16.w(context)),
                  // LinearProgressIndicator(
                  //   value: uploadProgress,
                  //   backgroundColor: Colors.grey[300],
                  //   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  // ),
                  // SizedBox(height: 8.w(context)),
                  // Text('${(uploadedSizeMb).toStringAsFixed(1)}/${totalSizeMb} Mb'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}