.class Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;
.super Ljava/lang/Object;
.source "BaseLayoutManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->lazyLoadAfterGlobalLayout()V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    :cond_0
    return-void
.end method
