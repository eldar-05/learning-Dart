void main(){
  var instrument = MusicalInstrument(name : "GIT-ANO");
  print(instrument.playGuitar());
  print(instrument.playPiano());
}

mixin Guitar{
  String playGuitar(){
  return "Playing the guitar";
  }
}

mixin Piano{
  String playPiano(){
  return "Playing the piano";
  }
}

class MusicalInstrument with Guitar, Piano{
  final String name;
  MusicalInstrument({required this.name});
}