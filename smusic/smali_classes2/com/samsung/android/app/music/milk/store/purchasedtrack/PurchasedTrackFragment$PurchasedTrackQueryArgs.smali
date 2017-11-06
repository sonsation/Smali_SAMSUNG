.class public Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "PurchasedTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PurchasedTrackQueryArgs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Landroid/content/Context;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filterOption"    # I

    .prologue
    const/4 v4, 0x0

    .line 332
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v1, "audio_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v1, "order_date_local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v1, "download_state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v1, "track_type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    packed-switch p3, :pswitch_data_0

    .line 355
    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    .line 358
    :goto_0
    const-string v1, "PurchasedTrackFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchasedTrackQueryArgs selection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 361
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 362
    const-string v1, "order_date_long DESC, _id ASC "

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 363
    return-void

    .line 347
    :pswitch_0
    const-string v1, "( track_type = 0) "

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 351
    :pswitch_1
    const-string v1, "( track_type = 1) "

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
