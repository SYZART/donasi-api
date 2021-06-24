<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    public function create(Request $request)
    {
        $judul_iklan = $request->input('judul_iklan');
        $dana_need = $request->input('dana_need');
        $dana_collected = $request->input('dana_collected');
        $cerita = $request->input('cerita');
        $produk = Produk::create([
            'judul_iklan' => $judul_iklan,
            'dana_need' => $dana_need,
            'dana_collected' => $dana_collected,
            'url'=>$url,
            'cerita'=>$cerita
        ]);
        return $this->responseHasil(200, true, $produk);
    }
    public function list()
    {
        $produk = Produk::all();
        return $this->responseHasil(200, true, $produk);
    }
    public function show($id)
    {
        $produk = Produk::findOrFail($id);
        return $this->responseHasil(200, true, $produk);
    }
    public function update(Request $request, $id)
    {
        $judul_iklan = $request->input('judul_iklan');
        $dana_need = $request->input('dana_need');
        $dana_collected = $request->input('dana_collected');
        $cerita =$request->input('cerita');

        $produk = Produk::findOrFail($id);
        $result = $produk->update([
            'judul_iklan' => $judul_iklan,
            'dana_need' => $dana_need,
            'dana_collected' => $dana_collected,
            // 'url'=>$url,
            'cerita'=>$cerita
        ]);
        return $this->responseHasil(200, true, $result);
    }
    public function delete($id)
    {
        $produk = Produk::findOrFail($id);
        $delete = $produk->delete();
        return $this->responseHasil(200, true, $delete);
    }
}
