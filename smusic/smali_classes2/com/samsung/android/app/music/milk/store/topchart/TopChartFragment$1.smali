.class Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;
.super Ljava/lang/Object;
.source "TopChartFragment.java"

# interfaces
.implements Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->loadTopChartTracks(Z)V

    .line 175
    return-void
.end method
