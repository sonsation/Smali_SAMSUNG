.class Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "MultiSelectArrayRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;"
    const/4 v2, 0x1

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    const-string v3, "MultiSelectArrayRecyclerAdapter"

    const-string v4, "onLongClick : Enable MultiSelect mode"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const v3, 0x7f12002a

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 48
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 49
    .local v1, "position":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isSelectable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->setSelectMode(Z)V

    .line 51
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v3, v1, v2, v2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->selectItem(IZZ)V

    .line 56
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
