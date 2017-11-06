.class Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;
.super Ljava/lang/Object;
.source "SeslListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# static fields
.field private static final STATE_REQUEST_FOCUS:I = 0x3

.field private static final STATE_SET_SELECTION:I = 0x1

.field private static final STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private mAction:I

.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;Lcom/samsung/android/support/sesl/component/widget/SeslListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslListView$1;

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;)V

    return-void
.end method


# virtual methods
.method onLayoutComplete()V
    .locals 2

    .prologue
    .line 1141
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1142
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    .line 1144
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1119
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mPosition:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectionFromTop(II)V

    .line 1121
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1123
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mPosition:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 1124
    .local v1, "childIndex":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1128
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    goto :goto_0
.end method

.method setupFocusIfValid(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1133
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mPosition:I

    if-eq p1, v0, :cond_1

    .line 1134
    :cond_0
    const/4 p0, 0x0

    .line 1137
    .end local p0    # "this":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;
    :goto_0
    return-object p0

    .line 1136
    .restart local p0    # "this":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    goto :goto_0
.end method

.method setupForSetSelection(II)Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;
    .locals 1
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1112
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mPosition:I

    .line 1113
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mPositionTop:I

    .line 1114
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->mAction:I

    .line 1115
    return-object p0
.end method
