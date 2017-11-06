.class Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$1;
.super Ljava/lang/Object;
.source "RecommendRadioActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->createRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "RecommendRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected - position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->access$000(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->loadRadioStations(I)V

    .line 142
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "993"

    const-string v3, "9922"

    check-cast v0, Ljava/lang/String;

    .line 145
    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
