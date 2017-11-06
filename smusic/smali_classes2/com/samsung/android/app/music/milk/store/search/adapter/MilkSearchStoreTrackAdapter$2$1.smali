.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreTrackAdapter.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->call([J)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

.field final synthetic val$playIdList:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;[J)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->val$playIdList:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "loggingtracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->val$playTracks:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v0

    .line 183
    .local v0, "enqueueOption":I
    :goto_0
    const v2, 0x100050

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->val$playIdList:[J

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

    iget v5, v5, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->val$newPosition:I

    .line 184
    invoke-static {v2, v3, v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(ILjava/lang/String;[JII)V

    .line 186
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "search"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeedAsync(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "964"

    const-string v4, "9630"

    .line 189
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 180
    .end local v0    # "enqueueOption":I
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method
