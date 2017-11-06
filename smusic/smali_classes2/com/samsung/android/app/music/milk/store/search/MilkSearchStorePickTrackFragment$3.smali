.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->val$keyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->val$contentType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 666
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 677
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;)V

    .line 678
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 697
    return-void
.end method
