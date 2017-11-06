.class public Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "TrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

.field public final hasThumbnailPlayPauseIcon:Z

.field public final text1TextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final text2TextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final text3TextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public thumbnailPlayPauseIcon:Landroid/widget/ImageView;

.field public final trackNumber:Landroid/widget/TextView;

.field public final trackNumberTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final trackTagIcon:Landroid/widget/ImageView;

.field public final trackTagText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 8
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<*>;"
    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 457
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 459
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_stub_animation:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "animationStub":Landroid/view/View;
    instance-of v4, v0, Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    .line 461
    check-cast v0, Landroid/view/ViewStub;

    .line 462
    .end local v0    # "animationStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 467
    :goto_0
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->track_number:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    .line 468
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberColIndex:I

    if-ne v4, v5, :cond_0

    .line 469
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    :cond_0
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->track_tag_text_stub:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 473
    .local v3, "trackTagTextStub":Landroid/view/View;
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->access$700(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTypeColIndex:I

    if-eq v4, v5, :cond_5

    :cond_1
    instance-of v4, v3, Landroid/view/ViewStub;

    if-eqz v4, :cond_5

    .line 476
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 477
    .local v1, "res":Landroid/content/res/Resources;
    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->black_opacity_60:I

    .line 478
    invoke-static {v1, v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackTagBgColor:I

    .line 479
    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_track_sound_quality_background:I

    .line 480
    invoke-static {v1, v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackTagBgColorSoundQuality:I

    .line 482
    check-cast v3, Landroid/view/ViewStub;

    .end local v3    # "trackTagTextStub":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    .line 487
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_1
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->track_tag_icon_stub:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, "trackTagIconStub":Landroid/view/View;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_6

    instance-of v4, v2, Landroid/view/ViewStub;

    if-eqz v4, :cond_6

    .line 489
    check-cast v2, Landroid/view/ViewStub;

    .end local v2    # "trackTagIconStub":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    .line 494
    :goto_2
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_button_stub:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_button:I

    .line 495
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->hasThumbnailPlayPauseIcon:Z

    .line 497
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    :goto_4
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->text1TextColor:I

    .line 499
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    :goto_5
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->text2TextColor:I

    .line 501
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    :goto_6
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->text3TextColor:I

    .line 503
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    :cond_3
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumberTextColor:I

    .line 512
    return-void

    .line 464
    .restart local v0    # "animationStub":Landroid/view/View;
    :cond_4
    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    goto/16 :goto_0

    .line 484
    .end local v0    # "animationStub":Landroid/view/View;
    .restart local v3    # "trackTagTextStub":Landroid/view/View;
    :cond_5
    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    goto :goto_1

    .line 491
    .end local v3    # "trackTagTextStub":Landroid/view/View;
    .restart local v2    # "trackTagIconStub":Landroid/view/View;
    :cond_6
    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    goto :goto_2

    .line 495
    .end local v2    # "trackTagIconStub":Landroid/view/View;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    move v4, v5

    .line 497
    goto :goto_4

    :cond_9
    move v4, v5

    .line 499
    goto :goto_5

    :cond_a
    move v4, v5

    .line 501
    goto :goto_6
.end method
