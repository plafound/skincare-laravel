<?php

namespace App\Http\Controllers;

use App\Models\Reply;
use App\Models\Message;
use Illuminate\Http\Request;

class ReplyController extends Controller
{
    public function show($id)
    {
        $message = Message::findOrFail($id);
        $reply = Reply::where('id_message',$id)->first();

        return view('admin.message.reply')->with([
            'message'=>$message,
            'reply' =>$reply,
        ]);
    }
    public function reply(Request $request)
    {
        $validate = $request->validate([
            'message' => 'required',
            'id_message' => 'required|exists:messages,id'
        ]);

        Reply::updateOrCreate([
            'id'=>$request->id
        ],$validate
    );

        return redirect('message/'.$request->id_message);
    }
}
