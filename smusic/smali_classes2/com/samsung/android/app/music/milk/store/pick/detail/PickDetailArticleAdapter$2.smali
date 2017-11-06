.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;
.super Ljava/lang/Object;
.source "PickDetailArticleAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 78
    const v1, 0x7f12002a

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->setSelectMode(Z)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->selectItem(IZZ)V

    move v1, v2

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
