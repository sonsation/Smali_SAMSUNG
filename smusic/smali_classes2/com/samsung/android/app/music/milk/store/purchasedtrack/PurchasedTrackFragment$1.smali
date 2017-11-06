.class Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;
.super Landroid/database/ContentObserver;
.source "PurchasedTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 262
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 272
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_1
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " forceLoad onChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getListType()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method
