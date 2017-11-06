.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;
.super Ljava/lang/Object;
.source "DownloadBasketActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPageChangeListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 462
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$500(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$500(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 450
    .local v1, "key":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$500(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;

    .line 451
    .local v2, "l":Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;
    if-ne v1, p1, :cond_0

    move v3, v4

    :goto_1
    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;->onPageFocused(Z)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 453
    .end local v1    # "key":I
    .end local v2    # "l":Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    const-string v6, "936"

    if-nez p1, :cond_2

    const-string v3, "9391"

    :goto_2
    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void

    .line 453
    :cond_2
    if-ne p1, v4, :cond_3

    const-string v3, "9392"

    goto :goto_2

    :cond_3
    const-string v3, "9393"

    goto :goto_2
.end method
