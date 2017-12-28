.class public Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;
.super Ljava/lang/Object;
.source "WidgetFocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetItemKeyListener"
.end annotation


# instance fields
.field private final mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    .line 43
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 47
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 48
    .local v0, "action":I
    if-eq v0, v6, :cond_2

    move v2, v6

    .line 49
    .local v2, "handleKeyEvent":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 50
    .local v3, "itemPos":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 51
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->getColumnCount()I

    move-result v5

    div-int v4, v3, v5

    .line 53
    .local v4, "rowIndex":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_0

    .line 54
    const/16 v5, 0x15

    if-ne p2, v5, :cond_3

    .line 55
    const/16 p2, 0x16

    .line 60
    :cond_0
    :goto_1
    sparse-switch p2, :sswitch_data_0

    :cond_1
    move v6, v7

    .line 99
    :goto_2
    return v6

    .end local v1    # "childCount":I
    .end local v2    # "handleKeyEvent":Z
    .end local v3    # "itemPos":I
    .end local v4    # "rowIndex":I
    :cond_2
    move v2, v7

    .line 48
    goto :goto_0

    .line 56
    .restart local v1    # "childCount":I
    .restart local v2    # "handleKeyEvent":Z
    .restart local v3    # "itemPos":I
    .restart local v4    # "rowIndex":I
    :cond_3
    const/16 v5, 0x16

    if-ne p2, v5, :cond_0

    .line 57
    const/16 p2, 0x15

    goto :goto_1

    .line 62
    :sswitch_0
    if-eqz v2, :cond_1

    .line 63
    if-nez v3, :cond_1

    .line 64
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5, v6, p2}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToPage(II)V

    goto :goto_2

    .line 72
    :sswitch_1
    if-eqz v2, :cond_1

    .line 73
    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_1

    .line 74
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5, v7, p2}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToPage(II)V

    goto :goto_2

    .line 81
    :sswitch_2
    if-eqz v2, :cond_1

    .line 82
    if-nez v4, :cond_1

    .line 83
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToUp()V

    goto :goto_2

    .line 91
    :sswitch_3
    if-eqz v2, :cond_1

    .line 92
    if-eqz v3, :cond_1

    .line 93
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    const/4 v7, 0x2

    invoke-interface {v5, v7, p2}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToPage(II)V

    goto :goto_2

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x7a -> :sswitch_3
        0x7b -> :sswitch_3
    .end sparse-switch
.end method
