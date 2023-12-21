<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Pertanyaan;
use Illuminate\Http\Request;

class PertanyaanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pertanyaan = Pertanyaan::all();
        $kategori = Kategori::all();
        $x = 1;
        return view('admin.pertanyaan.index',[
            'pertanyaan' => $pertanyaan,
            'kategori' => $kategori,
            'x' =>$x,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validReq = $request->validate(
            [
                'pertanyaan' => 'required|string',
                'vector' => 'required|array',
            ],
            [
                'pertanyaan.required' => 'Pertanyaan harus diisi',
            ]
        );
        $data['pertanyaan'] = $validReq['pertanyaan'];
        $data['vector'] = json_encode($validReq['vector']);
        Pertanyaan::create($data);
        return redirect()->route('question');
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
        $data = $request->all();
        $item = Pertanyaan::findOrFail($id);

        $item->update($data);

        return redirect()->route('question');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Pertanyaan::findOrFail($id);
        $item->delete();
        return redirect()->route('question');
    }
}
