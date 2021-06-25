<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    public function create(Request $request)
    {
        $judulIklan = $request->input('judulIklan');
        $danaNeed = $request->input('danaNeed');
        $danaCollected = $request->input('danaCollected');
        $url =  $request->input('url');
        $cerita = $request->input('cerita');
        $produk = Produk::create([
            'judulIklan' => $judulIklan,
            'danaNeed' => $danaNeed,
            'danaCollected' => $danaCollected,
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
        $judulIklan = $request->input('judulIklan');
        $danaNeed = $request->input('danaNeed');
        $danaCollected = $request->input('danaCollected');
        $url =  $request->input('url');
        $cerita = $request->input('cerita');

        $produk = Produk::findOrFail($id);
        $result = $produk->update([
           'judulIklan' => $judulIklan,
            'danaNeed' => $danaNeed,
            'danaCollected' => $danaCollected,
            'url'=>$url,
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
