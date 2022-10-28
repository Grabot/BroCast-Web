import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../util/app_bar.dart';
import '../util/logo.dart';


class Privacy extends StatefulWidget {

  static const String route = '/privacy';

  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarAgeOfGold(context, 2),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: logo(width)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "Privacy Policy",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 30, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "Zwaar Developers built the Brocast app as an Open Source app. This SERVICE is provided by Zwaar Developers at no cost and is intended for use as is.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Brocast unless otherwise defined in this Privacy Policy.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Information Collection and Use",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to Device type and Device Id. The information that I request will be retained on your device and is not collected by me in any way.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "The app does use third party services that may collect information used to identify you.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "Link to privacy policy of third party service providers used by the app",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              InkWell(
                  child: new Text(
                      '\t\t ⚈ Google Play Services',
                      style: TextStyle(color: Color(0xff5971dc), fontSize: 16)
                  ),
                  onTap: () {
                    final Uri url = Uri.parse('https://policies.google.com/privacy');
                    _launchUrl(url);
                  }
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Log Data",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (\"IP\") address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Cookies",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "This Service does not use these \"cookies\" explicitly. However, the app may use third party code and libraries that use \"cookies\" to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Service Providers",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "I may employ third-party companies and individuals due to the following reasons:",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 20),
              const SelectableText(
                  "\t\t ⚈ To facilitate our Service;",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SelectableText(
                  "\t\t ⚈ To provide the Service on our behalf;",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SelectableText(
                  "\t\t ⚈ To perform Service-related services; or",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SelectableText(
                  "\t\t ⚈ To assist us in analyzing how our Service is used.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Security",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Links to Other Sites",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Children’s Privacy",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Changes to This Privacy Policy",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "This policy is effective as of 2021-07-21",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
              const SizedBox(height: 30),
              const SelectableText(
                  "Contact Us",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 24, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 10),
              const SelectableText(
                  "If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at SanderKools@zwaar.dev",
                  style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16)
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

}

