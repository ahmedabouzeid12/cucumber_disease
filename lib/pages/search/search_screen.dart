import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:cucumber_disease/pages/search/cubit/cubit.dart';
import 'package:cucumber_disease/pages/search/cubit/state.dart';
import 'package:cucumber_disease/pages/search/web_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (BuildContext context) =>  SearchCubit(),
      child: BlocBuilder<SearchCubit,SearchStates>(
        builder: (context , state) {
          var list = SearchCubit.get(context).search;
          return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.green,),
                onPressed: () {
                  Navigator.pop(context,);
                }),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: searchController,

                  onFieldSubmitted: (String value)
                  {
                    SearchCubit.get(context).getSearch(value);
                  },
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return "Error";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.green,
                    ),

                    hintText: "Search",
                  ),
                ),
              ),
              Expanded(child: articleBulider(list, context , isSearch: true,),),
            ],
          ),
        );
      },
      ),
    );

  }

   Widget articleBulider(list , context , {isSearch = false}) => ConditionalBuilder(
     condition: list.length > 0,

     builder: (context) => BlocBuilder<SearchCubit,SearchStates>(
       builder:(context , state) => ListView.separated(
         itemBuilder: (context , index) => builArticleItem(list[index] , context),
         physics: BouncingScrollPhysics(),
         separatorBuilder: (context , index) => myDivider(),
         itemCount: 10,
       ),
     ),
     fallback: (context) => isSearch ? Container() :Center(child: CircularProgressIndicator( color: Colors.deepPurple,),),
   );

   Widget myDivider() => Padding(
     padding: const EdgeInsetsDirectional.only(
       start: 20.0,
     ),
     child: Container(
       width: double.infinity,
       height: 1.0,
       color: Colors.grey[300],
     ),
   );

   Widget builArticleItem (article , context) {
     return InkWell(

       onTap: ()
       {
         Navigator.push( context,
           MaterialPageRoute(
             builder: (context) => WebViewScreen(article['url']),),
         );
       },
       child:   Padding(
         padding: const EdgeInsets.all(20.0),
         child: Row(
           children: [
             Container(
               width: 120.0,
               height: 120.0,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10.0,),
                 image: DecorationImage(
                   image: NetworkImage('${article['urlToImage']}'),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
             SizedBox(
               width: 20.0,
             ),
             Expanded(
               child: Container(
                 height: 120.0,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Expanded(
                       child: Text(
                         '${article['title']}',
                         maxLines: 3,
                         overflow: TextOverflow.ellipsis,
                       ),
                     ),
                     Text(
                       '${article['publishedAt']}',
                       style: TextStyle(
                         color: Colors.grey,
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
}
