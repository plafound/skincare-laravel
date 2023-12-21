<?php

namespace App\Http\Controllers;

use App\Models\Reply;
use App\Models\Message;
use Illuminate\Http\Request;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $message = Message::all();

        $x=1;
        return view('admin.message.index',[
            'message'=>$message,
            'x'=>$x,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = $request->validate([
            'subject' => 'required|string|max:255',
            'message' => 'required|string',
            'id_user' => 'required|exists:users,id'
        ]);

        Message::create($validate);

        return response()->json(['success'=>'Message sent successfully.']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Message::findOrFail($id);
        $reply = Reply::where('id_message',$id)->first();

        $data->update([
            'status'=>1,
        ]);
        return view('admin.message.show',[
            'message'=> $data,
            'reply'=>$reply,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Message::findOrFail($id);
        $data->delete();
        return redirect()->route('message');
    }
}
