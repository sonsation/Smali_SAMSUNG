.class Lcom/android/launcher3/folder/view/FolderView$1;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$1;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "rhs"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 253
    const v0, 0x7fffffff

    .line 254
    .local v0, "lhsRank":I
    const v1, 0x7fffffff

    .line 255
    .local v1, "rhsRank":I
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 258
    :cond_0
    iget-object v2, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 261
    :cond_1
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 250
    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView$1;->compare(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v0

    return v0
.end method
