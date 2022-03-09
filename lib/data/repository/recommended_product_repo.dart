
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constains.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class RecommendedProductRepo extends GetxService {
  
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async{
    
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
    
    
  }
}