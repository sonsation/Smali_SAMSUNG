.class final Lcom/samsung/android/support/sesl/component/widget/SeslToast$1;
.super Ljava/lang/Object;
.source "SeslToast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/widget/SeslToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/samsung/android/support/sesl/component/widget/SeslToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToast;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToast$1;->val$result:Lcom/samsung/android/support/sesl/component/widget/SeslToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToast$1;->val$result:Lcom/samsung/android/support/sesl/component/widget/SeslToast;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->cancel()V

    .line 79
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
