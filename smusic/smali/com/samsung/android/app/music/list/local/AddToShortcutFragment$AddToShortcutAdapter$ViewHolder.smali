.class public Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "AddToShortcutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 1
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
    .line 361
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 362
    packed-switch p3, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 364
    :pswitch_0
    const v0, 0x7f0a0158

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initDefaultPlaylistText(I)V

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 368
    :pswitch_1
    const v0, 0x7f0a015d

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initDefaultPlaylistText(I)V

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 372
    :pswitch_2
    const v0, 0x7f0a010b

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initDefaultPlaylistText(I)V

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 376
    :pswitch_3
    const v0, 0x7f0a00bf

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initDefaultPlaylistText(I)V

    .line 377
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initDefaultPlaylistText(I)V
    .locals 4
    .param p1, "titleResId"    # I

    .prologue
    .line 384
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 385
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "itemTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :cond_0
    return-void
.end method
