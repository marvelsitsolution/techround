<?php

namespace App\Http\Controllers;


use App\Models\Contacts;
use App\Models\Group;
use Illuminate\Http\Request;
use Excel;


class GroupController extends Controller
{
    //

     public function __construct() {
       $this->middleware('auth');
    }

    public function index(ContactsDataTable $dataTable) {
        
      return $dataTable->render('contact.index');
    }


    public function datatables(ContactsDataTable $dataTable) {
        return $dataTable->ajax();
    }


    public function create() {




        // $contacts  = [1, 2, 4];

        // $group = new Group();
        // $group->name = "Group 1";
        // $group->save();

        // $group->contacts()->attach($contacts);
        
        // return response()->json(['success' => 'true', 'group' => $group]);
// 
        $group = new Group();
        $group->id = '';
        $group->name = '';

        $contact = Contacts::all();

        return view('group.create', array_merge(['group' => $group,'contact' => $contact]));
    }


    public function store(Request $request) {
       $input = $request->all();
       //dd($input['contact']);
       $user = auth()->user();
      if($request->id == 0)
      {

         

        $group = new Group();
        $group->name = $input['name'];
        $group->save();

        $group->contacts()->attach($input['contact']);
        
        $redirect = "/contact/list";
        return response()->json(['status' => 'success' , 'group' => $group, 'redirect' => $redirect]);
      }
      

    }


    public function edit($id){


      $group = Group::where('id', $id)->with('contacts')->get();
      // echo $contact;
      // dd('die');

      return response()->json(['group' => $group]);


    }

    

    

}
