.class Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;
.super Ljava/lang/Object;
.source "SeslHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionLeft:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$1;

    .prologue
    .line 1351
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->mPositionLeft:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectionFromTop(II)V

    .line 1363
    return-void
.end method

.method public setup(II)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;
    .locals 0
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 1356
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->mPosition:I

    .line 1357
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->mPositionLeft:I

    .line 1358
    return-object p0
.end method
