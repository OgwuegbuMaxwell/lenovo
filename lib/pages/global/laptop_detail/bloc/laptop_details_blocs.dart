import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_events.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_states.dart';

class LaptopDetailsBlocs extends Bloc<LaptopDetailsEvents, LaptopDetailsStates>{
  LaptopDetailsBlocs():super( const LaptopDetailsStates()){
    // define 'on' method of Bloc
    on<LaptopDetailsDots>(_laptopDetailsDots);

    on<ToggleFavorite>(_toggleFavorite);

    on<ToggleCart>(_toggleCart);
  }

  void _laptopDetailsDots(LaptopDetailsDots event, Emitter<LaptopDetailsStates> emit) {
    emit(state.copyWith(index: event.index));
  }


    void _toggleFavorite(ToggleFavorite event,Emitter<LaptopDetailsStates> emit) {
    final List<String> newFavoriteLaptops = List.from(state.favoriteLaptops);
    if (newFavoriteLaptops.contains(event.laptopId)) {
      newFavoriteLaptops.remove(event.laptopId);
    } else {
      newFavoriteLaptops.add(event.laptopId);
    }
    
    emit(state.copyWith(favoriteLaptops: newFavoriteLaptops));
  }


  
    void _toggleCart(ToggleCart event,Emitter<LaptopDetailsStates> emit) {
    final List<String> newCartLaptops = List.from(state.carts);
    if (newCartLaptops.contains(event.laptopId)) {
      newCartLaptops.remove(event.laptopId);
    } else {
      newCartLaptops.add(event.laptopId);
    }
    
    emit(state.copyWith(carts: newCartLaptops));
  }



}