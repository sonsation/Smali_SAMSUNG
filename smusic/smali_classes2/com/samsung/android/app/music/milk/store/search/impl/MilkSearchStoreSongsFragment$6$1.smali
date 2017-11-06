.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;->call([J)Lrx/Observable;
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
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;

.field final synthetic val$playIdList:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;[J)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;->val$playIdList:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 576
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 7
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
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Object;>;"
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 580
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 581
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v0

    .line 583
    .local v0, "enqueueOption":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;->val$isPlayAllBtn:Z

    if-eqz v4, :cond_3

    .line 584
    const/4 v2, -0x1

    .line 585
    .local v2, "startposition":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "music_service_pref"

    const/4 v6, 0x4

    .line 586
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "shuffle"

    .line 588
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 590
    .local v1, "isShuffleOn":Z
    :goto_1
    if-nez v1, :cond_0

    .line 591
    const/4 v2, 0x0

    .line 598
    .end local v1    # "isShuffleOn":Z
    :cond_0
    :goto_2
    const v3, 0x100050

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6$1;->val$playIdList:[J

    invoke-static {v3, v4, v5, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(ILjava/lang/String;[JII)V

    .line 600
    return-void

    .line 581
    .end local v0    # "enqueueOption":I
    .end local v2    # "startposition":I
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .restart local v0    # "enqueueOption":I
    .restart local v2    # "startposition":I
    :cond_2
    move v1, v3

    .line 588
    goto :goto_1

    .line 594
    .end local v2    # "startposition":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "startposition":I
    goto :goto_2
.end method
