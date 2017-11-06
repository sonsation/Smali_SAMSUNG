.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;
.super Ljava/lang/Object;
.source "PickDetailArticleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 64
    const v1, 0x7f12002a

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->isSelected(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->selectItem(IZZ)V

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->playWithCurrentPosition(I)V

    goto :goto_1
.end method
