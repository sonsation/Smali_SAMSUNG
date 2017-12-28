.class public final Lcom/android/launcher3/util/focus/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 31
    .local v0, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    return-object v1
.end method

.method public static playSoundEffect(ILandroid/view/View;)V
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    sparse-switch p0, :sswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 37
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 40
    :sswitch_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 45
    :sswitch_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 50
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 53
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_3
        0x7b -> :sswitch_2
    .end sparse-switch
.end method
