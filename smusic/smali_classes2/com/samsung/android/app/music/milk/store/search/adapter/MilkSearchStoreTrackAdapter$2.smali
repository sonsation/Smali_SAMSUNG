.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;
.super Ljava/lang/Object;
.source "MilkSearchStoreTrackAdapter.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->playRequest(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<[J",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

.field final synthetic val$newPosition:I

.field final synthetic val$playTracks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->val$playTracks:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->val$newPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;->call([J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call([J)Lrx/Observable;
    .locals 1
    .param p1, "playIdList"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;[J)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
