.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$3;
.super Ljava/lang/Object;
.source "MyStationsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getStationIdList()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    .local v0, "stationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "MyStationsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updateFavoriteStationOrdinals(Ljava/util/List;)I

    .line 122
    return-void
.end method
