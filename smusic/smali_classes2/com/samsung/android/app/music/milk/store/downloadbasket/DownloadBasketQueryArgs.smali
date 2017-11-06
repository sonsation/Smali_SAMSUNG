.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "DownloadBasketQueryArgs.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "tabId"    # I

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v1, "audio_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "explicit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v1, "payment_price"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string/jumbo v1, "status_code"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "codec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->projection:[Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->uri:Landroid/net/Uri;

    .line 30
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->selection:Ljava/lang/String;

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 44
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND audio_id != -1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->selection:Ljava/lang/String;

    .line 47
    const-string v1, "_id DESC"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->orderBy:Ljava/lang/String;

    .line 48
    return-void

    .line 35
    :pswitch_0
    const-string/jumbo v1, "status_code NOT IN (\'01\', \'03\')"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_1
    const-string/jumbo v1, "status_code != \'01\'"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
