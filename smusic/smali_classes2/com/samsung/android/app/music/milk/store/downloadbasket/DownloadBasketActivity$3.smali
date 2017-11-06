.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$3;
.super Ljava/lang/Object;
.source "DownloadBasketActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initBottomBarMenu()V
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
    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarMenuItemSelected(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .line 239
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$400(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    .line 240
    .local v0, "l":Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;->onBottomBarMenuItemSelected(Landroid/view/MenuItem;)V

    .line 243
    :cond_0
    return-void
.end method
