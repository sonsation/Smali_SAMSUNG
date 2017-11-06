.class Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;
.super Ljava/lang/Object;
.source "CheckBoxTrackBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    .prologue
    .line 84
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;"
    const/4 v2, 0x1

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->pressLongClick()V

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelectMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onLongClick : Enable MultiSelect mode"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->setSelectMode(Z)V

    .line 94
    const v1, 0x7f12002a

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->selectItem(IZZ)V

    move v1, v2

    .line 98
    .end local v0    # "position":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
