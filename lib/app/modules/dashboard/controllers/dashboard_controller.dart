import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';
import 'package:rafid_portfolio_flutter/app/data/models/projects_model.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/projects.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var appConfigController = Get.find<AppConfigController>();
  RxBool hoverOnName = false.obs;
  RxBool hoverOnEmail = false.obs;
  RxBool hoverOnFB = false.obs;
  RxBool hoverOnInsta = false.obs;
  RxBool hoverOnLinkedin = false.obs;
  RxBool hoverOnDarkMode = false.obs;
  RxBool hoverOnContact = false.obs;
  RxBool hoverOnGithub = false.obs;
  RxInt initialViewType = 0.obs; //0 for dasgboard, 1 for contact
  RxBool hoverOnContactEmail = false.obs;
  RxBool hoverOnContactLinkedin = false.obs;
  RxBool hoverOnContactFacebook = false.obs;
  RxBool hoverOnContactInsta = false.obs;
  RxList<ProjectsModel> projectsList = <ProjectsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    projectsList.clear();
    hoverOnName.value = false;
    hoverOnEmail.value = false;
    hoverOnFB.value = false;
    hoverOnInsta.value = false;
    hoverOnLinkedin.value = false;
    hoverOnDarkMode.value = false;
    hoverOnContact.value = false;
    hoverOnGithub.value = false;
    initialViewType.value = 0;
    getProjects();
  }

  @override
  void onClose() {}

  getProjects() {
    print("PROJECTS:: A:: ${projectsList.length}");
    ProjectsJson.projectsData.forEach((element) {
      projectsList.add(ProjectsModel.fromJson(element));
    });
    print("PROJECTS:: B:: ${projectsList.length}");
  }
}
