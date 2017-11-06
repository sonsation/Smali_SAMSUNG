.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;
.super Ljava/lang/Object;
.source "SeedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const-string v2, "SeedListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable Delete Position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->notifyDataSetChanged()V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;)Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->updateOptionMenu()V

    .line 94
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "908"

    const-string v4, "9173"

    .line 95
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
