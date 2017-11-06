.class Lcom/samsung/android/app/music/milk/radio/DialFragment$5;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    const v0, 0x7f120026

    if-ne p1, v0, :cond_0

    .line 325
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateLoader : milk_radio_all_stations_loader: mIsPremiumUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .line 327
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$300(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .line 329
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$300(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Z

    move-result v3

    .line 328
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$400(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Loader;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 330
    :cond_0
    const v0, 0x7f120027

    if-ne p1, v0, :cond_1

    .line 331
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateLoader : milk_radio_all_stations_track_loader: mIsPremiumUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .line 333
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$300(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .line 336
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$300(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Z

    move-result v3

    .line 335
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$400(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const v0, 0x7f12002b

    if-ne p1, v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$500(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader id not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const v3, 0x7f12002b

    const/4 v4, 0x0

    .line 346
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 348
    .local v0, "id":I
    const v1, 0x7f120026

    if-ne v0, v1, :cond_4

    .line 351
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onLoadFinished : query complete station only."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 355
    :cond_0
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onLoadFinished : cursor is null or count is 0"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$600(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setCursor(ILandroid/database/Cursor;)V

    .line 359
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1, v0, p2, v4}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setCursor(ILandroid/database/Cursor;Z)V

    .line 373
    :cond_2
    :goto_0
    if-eq v0, v3, :cond_3

    .line 375
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 377
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iput-boolean v4, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsShowLodingStick:Z

    .line 378
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(Z)V

    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    if-eqz v1, :cond_3

    .line 382
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setPrefetch(Z)V

    .line 387
    :cond_3
    return-void

    .line 360
    :cond_4
    const v1, 0x7f120027

    if-ne v0, v1, :cond_5

    .line 362
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onLoadFinished : query complete station including track change."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$600(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setCursor(ILandroid/database/Cursor;)V

    .line 366
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1, v0, p2, v4}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setCursor(ILandroid/database/Cursor;Z)V

    goto :goto_0

    .line 367
    :cond_5
    if-ne v0, v3, :cond_2

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->changeGenre(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 321
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 392
    .local v0, "id":I
    const v1, 0x7f120026

    if-ne v0, v1, :cond_1

    .line 395
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onLoaderReset : reset loader station only."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const v1, 0x7f120027

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->resetCursor()V

    .line 398
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$600(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->resetCursor()V

    .line 399
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onLoaderReset : reset loader station including track change."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
