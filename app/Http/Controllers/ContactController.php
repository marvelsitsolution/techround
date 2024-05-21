<?php

namespace App\Http\Controllers;


use App\Models\Contacts;
use Illuminate\Http\Request;
use App\DataTables\ContactsDataTable;
use Illuminate\Support\Facades\Log;
use App\Imports\ImportContacts;
use App\Jobs\SendEmail;
use Excel;


class ContactController extends Controller
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

        $contact = new Contacts();
        $contact->id = '';
        $contact->name = '';
        $contact->phone = '';
        $contact->email = '';
        $contact->added_by = '';

        return view('contact.create', array_merge(['contact' => $contact]));
    }


    public function store(Request $request) {
       $input = $request->all();
       $user = auth()->user();
      if($request->id == 0)
      {

         $contact = Contacts::create($input);
         $contact->added_by = $user->id;
         $contact->save();
         $redirect = "/contact/list";

         return response()->json(['status' => 'success' , 'redirect' => $redirect]);
      }
      else
      {

        $contact = Contacts::findOrFail($request->id);
      }
       
        try {
           
           $contact->name = $input['name'];
           $contact->phone= $input['phone'];
           $contact->email= $input['email'];
           
           $contact->save();
           $redirect = "/contact/list";

           SendEmail::dispatch($contact)->onQueue('emails');
           return response()->json(['status' => 'success' , 'redirect' => $redirect]);


        }

        catch (\Exception $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'failled']);
        }

    }


    public function edit($id){


      $contact = Contacts::findOrFail($id);
      // echo $contact;
      // dd('die');

      return view('contact.create', array_merge(['contact' => $contact]));


    }

    public function delete($id){

        //dd($request);
        $contact = Contacts::destroy($id);
        //return true ;

      return redirect()->route('contact.list');


    }


    public function importindex(){
       
       return view('importcontact.index');
    }

    public function importfile(Request $request){

         $request->validate([
            'contact-import' => 'required|file|mimes:csv,xlsx',
        ]);

        $user = auth()->user();

        $file = $request->file('contact-import');


        
        $extension = $request->file('contact-import')->extension();

        if($extension == "xlsx"){

            Excel::import(new ImportContacts, $file);
 
            $redirect = "/contact/list";


            return response()->json(['status' => 'success' , 'redirect' => $redirect]);

        }

        else{

            $fileContents = file($file->getPathname());

            foreach ($fileContents as $line) {
                $data = str_getcsv($line);
                
                Contacts::create([
                    'name' => $data[0],
                    'phone' => $data[1],
                    'email' => $data[2],
                    'added_by' => $user->id,
                    // Add more fields as needed
                ]);
            }

            $redirect = "/contact/list";

            return response()->json(['status' => 'success' , 'redirect' => $redirect]);

        }
        
    }

    

}
