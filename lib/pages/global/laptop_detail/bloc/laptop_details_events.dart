abstract class LaptopDetailsEvents {
  const LaptopDetailsEvents();
}


class LaptopDetailsDots extends LaptopDetailsEvents {
  // the value we will pass from the LaptopDetails page...
  final int index;
  LaptopDetailsDots(this.index);
}

class ToggleFavorite extends LaptopDetailsEvents {
  final String laptopId;

  ToggleFavorite(this.laptopId);
}


class ToggleCart extends LaptopDetailsEvents {
  final String laptopId;

  ToggleCart(this.laptopId);
}



