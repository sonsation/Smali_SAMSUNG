.class public Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RadioResetCustomizeDialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenresListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 467
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    .line 468
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 507
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v3

    .line 509
    .local v3, "item":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    const v5, 0x7f120324

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 510
    .local v1, "genreTxt":Landroid/widget/TextView;
    const v5, 0x7f1200c9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 513
    .local v0, "checkbox":Landroid/widget/ImageView;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0340

    .line 515
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 517
    .local v2, "isChecked":Z
    iget-boolean v5, v3, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    if-eqz v5, :cond_0

    .line 518
    const/4 v2, 0x1

    .line 519
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0341

    .line 520
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 529
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 530
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    :goto_1
    return-void

    .line 523
    :cond_0
    const/4 v2, 0x0

    .line 524
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0338

    .line 525
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    if-eqz v2, :cond_2

    .line 534
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 535
    const v5, 0x7f020082

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 536
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f110159

    .line 537
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 536
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 539
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 540
    const v5, 0x7f020081

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f11015a

    .line 542
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 541
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 472
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->bindView(ILandroid/view/View;)V

    .line 502
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method
