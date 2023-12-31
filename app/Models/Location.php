<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;

class Location extends Model implements HasMedia
{
    use HasFactory;
    use InteractsWithMedia;
    use SoftDeletes;
    use HasSlug;

    protected $fillable = ['location', 'slug'];

    public function getSlugOptions() : SlugOptions
    {
        return SlugOptions::create()
            ->generateSlugsFrom('location')
            ->saveSlugsTo('slug');
    }

    public function articles() : BelongsToMany {
        return $this->belongsToMany(Article::class);
    }

    public function image() {
        return $this->getMedia('locations')->isEmpty() ? null : $this->getMedia('locations')->first()->getUrl();
    }
}
