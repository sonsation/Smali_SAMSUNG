.class public Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "AddToPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 3
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 289
    sparse-switch p3, :sswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 291
    :sswitch_0
    const v0, 0x7f0201c4

    const v1, 0x7f0a00f3

    const v2, 0x7f0a01e1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initDefaultPlaylistItem(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V

    goto :goto_0

    .line 296
    :sswitch_1
    const v0, 0x7f0201c5

    const v1, 0x7f0a0157

    const v2, 0x7f0a01e0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initDefaultPlaylistItem(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V

    goto :goto_0

    .line 301
    :sswitch_2
    const v0, 0x7f0201c9

    const v1, 0x7f0a00bf

    const v2, 0x7f0a01df

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initDefaultPlaylistItem(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_2
        -0x8 -> :sswitch_1
        -0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method private initDefaultPlaylistItem(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V
    .locals 4
    .param p2, "drawableResId"    # I
    .param p3, "titleResId"    # I
    .param p4, "talkBackResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;III)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    const/4 v3, 0x0

    .line 312
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 313
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v1, p2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f110041

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 316
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 319
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initDefaultPlaylistText(II)V

    .line 320
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 321
    return-void
.end method

.method private initDefaultPlaylistText(II)V
    .locals 5
    .param p1, "titleResId"    # I
    .param p2, "talkBackResId"    # I

    .prologue
    .line 324
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "itemTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 328
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_0
    return-void
.end method
