enum CertificateImage {
  android,
  ios
}

class Certificate {

  final String title;
  final String description;
  final CertificateImage image;
  final String url;

  Certificate(this.title, this.description, this.image, this.url);

}