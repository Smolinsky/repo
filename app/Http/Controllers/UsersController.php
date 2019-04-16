<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Users;
use DB;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = Users::all()->toArray();
        return view('users.index', compact('users'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = DB::select('SELECT * from country');
        return view('users.create', ['countries'=>$countries]);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $users = new Users([
          'name' => $request->get('name'),
          'email' => $request->get('email'),
          'country' => $request->get('country')
        ]);
        if (Users::where('email', '=', $request->get('email'))->exists()) {
        echo 'This email has found on database <a href="/users/create">Back to create</a>';
        } else {
            $users->save();
        return redirect('/users');
        }
        
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $users = Users::find($id);
        $countries = DB::select('SELECT * from country');
        return view('users.edit', compact('users','id'), ['countries'=>$countries]);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $users = Users::find($id);
        $users->name = $request->get('name');
        $users->email = $request->get('email');
        $users->country = $request->get('country');
        $users->save();
        return redirect('/users');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $users = Users::find($id);
      $users->delete();
      return redirect('/users');
    }
}
