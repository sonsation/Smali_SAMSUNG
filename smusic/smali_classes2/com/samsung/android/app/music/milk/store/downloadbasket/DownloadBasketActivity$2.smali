.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;
.super Ljava/lang/Object;
.source "DownloadBasketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initSelectAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .line 219
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$200(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;

    .line 220
    .local v0, "l":Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$300(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;->onSelectAllCheck(Z)V

    .line 221
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "936"

    const-string v3, "1542"

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 220
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
