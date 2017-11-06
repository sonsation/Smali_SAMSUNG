.class public Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "RadioHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioHistoryQueryArgs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 332
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 333
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v1, "audio_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v1, "date_locale"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v1, "station_name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v1, "display_station_name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "date_long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const-string/jumbo v1, "station_type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string/jumbo v1, "station_ordinal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;->projection:[Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;->uri:Landroid/net/Uri;

    .line 356
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;->selection:Ljava/lang/String;

    .line 357
    const-string v1, "date_long DESC"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;->orderBy:Ljava/lang/String;

    .line 358
    return-void
.end method
