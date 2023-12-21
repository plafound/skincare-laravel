<?php

namespace App\Http\Controllers\User;

use App\Models\Reply;
use App\Models\Message;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function index()
    {
        $message = Message::where('id_user',Auth::user()->id)->get();
        $i=1;
        return view('user.message',compact('message','i'));
    }

    public function details($id)
    {
        $message = Message::findOrFail($id);
        $reply = Reply::where('id_message',$id)->first();

        return view('user.message-details',compact('message','reply'));
    }
}
