.class Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "MultiSelectArrayRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 23
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;"
    const/4 v3, 0x1

    .line 26
    const v2, 0x7f12002a

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->selectItem(IZZ)V

    .line 36
    :goto_1
    const-string v2, "MultiSelectArrayRecyclerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : Position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v1    # "position":I
    :cond_0
    return-void

    .line 31
    .restart local v1    # "position":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->playWithCurrentPosition(I)V

    goto :goto_1
.end method
