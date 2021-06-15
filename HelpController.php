<?php

namespace App\Http\Controllers;

use App\Models\Help;

class HelpController extends Controller {

    public function index() {
        return Help::all();
    }

    public function search($text) {
        $help = Help::where('id', 'like', $text)
                ->orWhere('name', 'like', $text)
                ->orWhere('time', 'like', $text)
                ->orWhere('x', 'like', $text)
                ->orWhere('y', 'like', $text)
                ->orWhere('address', 'like', $text)
                ->get();
        return response()->json($help, 200);
    }

    public function show(Help $help) {
        return $help;
    }

    public function store(Request $request) {
        $help = Article::create($request->all());
        return response()->json($help, 201);
    }

    public function update(Request $request, Article $help) {
        $help->update($request->all());
        return response()->json($help, 200);
    }

    public function delete(Article $help) {
        $help->delete();
        return response()->json(null, 204);
    }

}
